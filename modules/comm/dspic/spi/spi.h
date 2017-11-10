/*
 *  Copyright Droids Corporation (2008)
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/*
 * Author : Julien LE GUEN - jlg@jleguen.info
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *
 *  Code ported to families of microcontrollers dsPIC, PIC24H and PIC24F.
 *
 */

/*
 *  -- INFO --
 *	This module enable the use of the SPI hardware
 *	on some PICs. For now, only MASTER mode is available.
 *	You can have as many slaves as you want, as long as you
 *	don't confuse them by trying to speak to several at the same time.
 *
 *      BIG WARNING: If you use /SS as a slave selector, always
 *      register it using spi_register_ss_line() *before* calling
 *      spi_init(). Read carrefully the datasheet, especially the
 *      paragraph "SS Pin Functionnality" in SPI section. In master
 *      mode, the SS pin must be configured as an output OR driven
 *      high by an external circuitry.
 *
 *  -- USAGE --
 *	So you have one (or several) device(s) that want to speak to your
 *	shiny PIC over SPI ?
 *	This is fairly easy. First, summon this module with spi_init().
 *	You can configure
 *	 - the FORMAT of the link (sample on rising or falling edge, ...)
 *	 - the RATE of the connection (you set the prescaler dividing the CPU clock)
 *
 *	After that you can register your devices using spi_register_ss_line();
 *	This returns you a device identifier you can use with spi_slave_[de]select();
 *
 *	Remember to ALWAYS select your slave before talking to it, and deselect if
 *	once your are done.
 */



#ifndef _SPI_H_
#define _SPI_H_

#include <stdint.h>
#include <spi_config.h>

/* SPI modes */
typedef enum {
	SPI_MODE_UNINIT,			/* not initialized */
	SPI_MODE_MASTER_8BITS,	/* for now, only master mode as */
	SPI_MODE_MASTER_16BITS	/* slave mode cannot be tested  */
} spi_mode_t;


/* SPI transfert format
 * This defines the SCK phase and polarity.
 * For instance in FORMAT_0, data lines are set on the rising edge
 * of SCK, and sampled at middle of data output time. This determines the order
 * in which sampling and setting occurs.
 * For more information on SPI formats, please see your CPU datasheet.
 */
typedef enum {
	SPI_FORMAT_0 = 0x00,            	/* Sample at middle,  Setup rising */
	SPI_FORMAT_1 = _BV(8),          	/* Sample at middle,  Setup falling */
	SPI_FORMAT_2 = _BV(9),        	/* Sample at end, Setup rising */
	SPI_FORMAT_3 = _BV(8)|_BV(9), 	/* Sample at end, Setup rising*/

	/* SCK inverted */
	SPI_FORMAT_0_SCK_INV = 0x00|_BV(6),  			/* Sample at middle,  Setup rising */
	SPI_FORMAT_1_SCK_INV = _BV(8)|_BV(6),			/* Sample at middle,  Setup falling */
	SPI_FORMAT_2_SCK_INV = _BV(9)|_BV(6),			/* Sample at end, Setup rising */
	SPI_FORMAT_3_SCK_INV = _BV(8)|_BV(9)|_BV(6),	/* Sample at end, Setup rising*/

} spi_format_t;


/* SPI Clock Rate
 * This code the values for SPI2X (high nibble), SPR1 and SPR0 (low nibble)
 * FSCK = FP / SPI_CLK_RATE2_xx / SPI_CLK_RATE2_xx
 * FP = FOSC/2
 */
typedef enum {
	SPI_CLK_RATE1_1 =		0x03,
	SPI_CLK_RATE1_4 = 	0x02,
	SPI_CLK_RATE1_16 = 	0x01,
	SPI_CLK_RATE1_64 = 	0x00
} spi_clk_rate1_t;

typedef enum {
	SPI_CLK_RATE2_1 =	0x07,
	SPI_CLK_RATE2_2 = 0x06,
	SPI_CLK_RATE2_3 =	0x05,
	SPI_CLK_RATE2_4 =	0x04,
	SPI_CLK_RATE2_5 =	0x03,
	SPI_CLK_RATE2_6 =	0x02,
	SPI_CLK_RATE2_7 =	0x01,
	SPI_CLK_RATE2_8 =	0x00
} spi_clk_rate2_t;



/* Initialize the SPI
 * mode is SPI_MODE_MASTER (slave is not implemented)
 * format defines the transfert format (see above)
 * clk_rates defines the frequency of SCK line:
 *
 * FSCK = FCY / clk_rate1 /clk_rate2
 */
void spi_init(uint8_t num, spi_mode_t mode, spi_format_t format,
	      spi_clk_rate1_t clk_rate1, spi_clk_rate2_t clk_rate2);


/*
 *	Returns the state of the SPI
 */
spi_mode_t spi_get_mode(uint8_t spi_num);


/*
 * Register a pin as SS line
 * Returns a unique identifier, or -1 on error
 * There is always the physical SS line registered as 0
 */
int8_t spi_register_ss_line(uint8_t num, volatile uint16_t *port, uint8_t bitnum);


/*
 *	Sends a data (and receive one at the same time)
 *	Returns the received data
 *	Wait for the end of transmission
 */
uint16_t spi_send_and_receive_data(uint8_t num, uint16_t data);


/*
 *	Sends a data, discards the received one.
 *	Wait for the end of transmission
 */
void spi_send_data(uint8_t num, uint16_t data);

/*
 *	Receives a data (sends a NULL)
 */
uint16_t spi_receive_data(uint8_t num);

/*
 *	Select or Deselect the SS line
 *	The SPI standard defines that only ONE slave can
 *	be selected at any time. An internal mecanism prevents
 *	the selection of several slaves at the same time, but
 *	this is not completely foolproof.
 *
 *	/!\ Behavior is NOT ASSURED if you mess with SS lines
 *	outside of this module, so PLEASE use these setters. /!\
 *
 *	This function returns EBUSY if there is already a selected slave
 */
uint8_t spi_slave_select(uint8_t num, uint8_t slave);

/*
 *	Inconditionnaly releases the line.
 */
void spi_slave_deselect(uint8_t num, uint8_t slave);

/*
 *	Display SS lines
 */
void spi_display_ss_lines(void);


#endif /* _SPI_H_ */

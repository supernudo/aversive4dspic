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

#include <aversive.h>
#include <aversive/parts.h>
#include <aversive/error.h>

#include <stdlib.h>
#include <string.h>

#include <spi.h>
#include <spi_config.h>


#if (defined _SPI3IE)
#define SPI_HW_NUM 3
#elif (defined _SPI2IE)
#define SPI_HW_NUM 2
#else /* assume 1 SPI */
#define SPI_HW_NUM 1
#endif

/* internal structure to store SS pins */
typedef struct _ss_pin {
	volatile uint16_t *port;
	uint8_t bitnum;
} ss_pin_t;

/* global vars */
/* HACK: for FIXME of spi_register_ss_line function:
	+2 on g_ss_lines declaration, but why?? */
#if (SPI_HW_NUM == 1)
static volatile ss_pin_t g_ss_lines[SPI_HW_NUM][SPI1_MAX_SLAVES+2];
#elif (SPI_HW_NUM == 2)
static volatile ss_pin_t g_ss_lines[SPI_HW_NUM][SPI2_MAX_SLAVES+2];
#elif (SPI_HW_NUM == 3)
static volatile ss_pin_t g_ss_lines[SPI_HW_NUM][SPI3_MAX_SLAVES+2];
#endif

static volatile uint8_t g_ss_number[SPI_HW_NUM];
static volatile spi_mode_t g_spi_mode[SPI_HW_NUM];
static volatile uint8_t g_slave_selected[SPI_HW_NUM];
static volatile uint8_t g_spi_max_slaves[SPI_HW_NUM] =
{SPI1_MAX_SLAVES, SPI2_MAX_SLAVES, SPI3_MAX_SLAVES};


/* Private registers of SPI modules */
typedef volatile uint16_t *spi_reg_t;

struct regs {
        spi_reg_t stat;
        spi_reg_t con1;
        spi_reg_t con2;
        spi_reg_t buf;
};

const struct regs spi_regs[SPI_HW_NUM] = {
#ifdef _SPI1IE
        {
                .stat   = &SPI1STAT,
                .con1   = &SPI1CON1,
                .con2   = &SPI1CON2,
                .buf	= &SPI1BUF,
        },
#endif
#ifdef _SPI2IE
        {
                .stat   = &SPI2STAT,
                .con1   = &SPI2CON1,
                .con2   = &SPI2CON2,
                .buf	= &SPI2BUF,
        },
#endif
#ifdef _SPI3IE
        {
                .stat   = &SPI3STAT,
                .con1   = &SPI3CON1,
                .con2   = &SPI3CON2,
                .buf	= &SPI3BUF,
        },
#endif
};



/*
 *	Initialize SPI
 */
void spi_init(uint8_t num, spi_mode_t mode, spi_format_t format,
	      spi_clk_rate1_t clk_rate1, spi_clk_rate2_t clk_rate2)
{
	/* Check SPI number range */
	if(num <= 0 || num > SPI_HW_NUM){
		ERROR(E_SPI, "SPI number is out of range [1:SPI_HW_NUM]");
		return;
	}

	NOTICE(E_SPI, "Init SPI%d: mode %d, format %d, clk_rate1 %d, clk_rate2 %d",
	       num, mode, format, clk_rate1, clk_rate2);

	/* SPI index of register */
	num --;

	/* SS pin is not driven by SPI hardware
	 * This is taken care of by spi_register_ss_line()
	 * EVEN for the "default" SS line */
	g_ss_number[num] = 0;
	g_slave_selected[num] = FALSE;

	/* Registers init */
	*spi_regs[num].stat = 0;
	*spi_regs[num].con1 = 0;
	*spi_regs[num].con2 = 0;

	/* SPI mode, XXX Master only for now ! */
	*spi_regs[num].con1 |= _BV(5);

	if(mode == SPI_MODE_MASTER_16BITS){
		*spi_regs[num].con1 |= _BV(10);
	}

	/* SPI format, clock polarity and phase */
	*spi_regs[num].con1 |= (uint16_t)format;

	/* Clockrate: primary and secondary presscaler */
	*spi_regs[num].con1 |= (uint16_t)clk_rate1;
	*spi_regs[num].con1 |= (uint16_t)(clk_rate2<<2);


	/* Enable SPI */
	*spi_regs[num].stat |= _BV(15);

	g_spi_mode[num] = SPI_MODE_MASTER_8BITS;
	NOTICE(E_SPI, "Init done");
}

/*
 *	Returns the state of SPI
 */
spi_mode_t spi_get_mode(uint8_t num)
{
	/* Check SPI number range */
	if(num <= 0 || num > SPI_HW_NUM){
		ERROR(E_SPI, "SPI number is out of range [1:SPI_HW_NUM]");
		return SPI_MODE_UNINIT;
	}

	/* SPI index of register */
	num --;

	return g_spi_mode[num];
}

/*
 *	Send a data (and receive one)
 *	Returns the received data
 */
uint16_t spi_send_and_receive_data(uint8_t num, uint16_t data)
{
	/* Check SPI number range */
	if(num <= 0 || num > SPI_HW_NUM){
		ERROR(E_SPI, "SPI number is out of range [1:SPI_HW_NUM]");
		return 0;
	}

	/* SPI index of register */
	num --;

	//DEBUG(E_SPI, "Sending 0x%x", data);

	/* Start transmission */
	if (SPI1CON1bits.MODE16)
		*spi_regs[num].buf = data;			/* word write */
	else
		*spi_regs[num].buf = data & 0xff;	/* byte write  */

	/* Wait for transmission complete
	 * Timings are VERY important, do not bypass this ! */
	while(!((*spi_regs[num].stat) & (_BV(0))));

	/* Return received byte */
	return *spi_regs[num].buf;
}

/*
 *	Send a data, discard the result
 */
inline void spi_send_data(uint8_t num, uint16_t data)
{
	spi_send_and_receive_data(num, data);
}

/*
 *	Receives a data (sends a NULL)
 */
uint16_t spi_receive_data(uint8_t num)
{
	return spi_send_and_receive_data(num, 0x00);
}

/*
 * Register a pin as SS line
 * Returns a unique identifier, or -1 on error
 * There is always the physical SS line registered as 0
 */
int8_t spi_register_ss_line(uint8_t num, volatile uint16_t *port, uint8_t bitnum)
{
	DEBUG(E_SPI, "Trying to register new SS line at SPI%d: port 0x%x, bitnum %d", num, port, bitnum);

	/* Check SPI number range */
	if(num <= 0 || num > SPI_HW_NUM){
		ERROR(E_SPI, "SPI number is out of range [1:SPI_HW_NUM]");
		return -1;
	}

	/* SPI index of register */
	num --;

	/* too much SS lines (try to change SPI_MAX_SLAVES) */
	if (g_ss_number[num] >= g_spi_max_slaves[num]){
		ERROR(E_SPI, "Too much SS lines on SPI%d, try to change SPI%d_MAX_SLAVES", num+1, num+1);
		return -1;
	}

	/* FIXME: when num == SPI_MAX_SLAVES-1 g_ss_number[num] is overwritten by port */
	g_ss_lines[num][g_ss_number[num]].port = port;
	g_ss_lines[num][g_ss_number[num]].bitnum = bitnum;
	*(port-1) &= ~(_BV(bitnum));

	/* Unselected at first */
	*(port+1) |= _BV(bitnum);

	NOTICE(E_SPI, "New Slave Line registered at SPI%d: %d", num+1, g_ss_number[num]);
	return g_ss_number[num]++;
}

/*
 *	Activates the selected SS line
 */
uint8_t spi_slave_select(uint8_t num, uint8_t slave)
{
	/* Check SPI number range */
	if(num <= 0 || num > SPI_HW_NUM){
		ERROR(E_SPI, "SPI number is out of range [1:SPI_HW_NUM]");
		return ERANGE;
	}

	/* SPI index of register */
	num --;

	/* SS line out of range */
	if (slave >= g_spi_max_slaves[num]){
		ERROR(E_SPI, "SPI%d SS line %d is out of range of SPI%d_MAX_SLAVES", num+1, slave, num+1);
		return ERANGE;
	}

	if (g_slave_selected[num]) {
		ERROR(E_SPI, "A slave is already selected !");
		return EBUSY;
	}

	*((g_ss_lines[num][slave].port)+1) &= ~(_BV(g_ss_lines[num][slave].bitnum));
	g_slave_selected[num] = TRUE;
	return ESUCCESS;
}

/*
 *	Desactivates the selected SS line
 */
void spi_slave_deselect(uint8_t num, uint8_t slave)
{
	/* Check SPI number range */
	if(num <= 0 || num > SPI_HW_NUM){
		ERROR(E_SPI, "SPI number is out of range [1:SPI_HW_NUM]");
		return;
	}

	/* SPI index of register */
	num --;

	/* SS line out of range */
	if (slave >= g_spi_max_slaves[num]){
		ERROR(E_SPI, "SPI%d SS line %d is out of range of SPI%d_MAX_SLAVES", num+1, slave, num+1);
		return;
	}

	*((g_ss_lines[num][slave].port)+1) |= (_BV(g_ss_lines[num][slave].bitnum));
	g_slave_selected[num] = FALSE;
}

/*
 *	Display SS lines
 */
void spi_display_ss_lines(void)
{
	uint8_t num,i;
	for (num = 0; num < SPI_HW_NUM; num++){
		DEBUG(E_SPI, "=== SPI%d SS lines ===",num+1);

		for (i = 0; i < g_ss_number[num]; i++) {
			DEBUG(E_SPI, "SS%d: adr 0x%X bitnum %d value 0x%X",
				   i,
				   (uint16_t) ((g_ss_lines[num][i].port)+1),
				   g_ss_lines[num][i].bitnum,
				   *((g_ss_lines[num][i].port)+1));
		}
	}
}

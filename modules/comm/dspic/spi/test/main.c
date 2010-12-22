/*  
 *  Copyright Robotics Association of Coslada, Eurobotics Engineering (2010)
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
 *  Revision : $Id$
 *
 *  Javier Baliñas Santos <javier@arc-robots.org>
 */
 
#include <stdio.h>
#include <stdarg.h>


#include <aversive.h>
#include <aversive\wait.h>
#include <aversive\error.h>
#include <pgmspace.h>

#include <configuration_bits_config.h>
#include <oscillator.h>
#include <uart.h>
#include <spi.h>

#define DRM12_BOARD
#define TEST_LOOPBACK_NORMAL
//#define TEST_SPI_ERRORS

/* log function */
void mylog(struct error * e, ...)
{
	va_list ap;

	va_start(ap, e);
	printf_P(PSTR("[%d]: E%d "), e->severity, e->err_num);
	vfprintf_P(stdout, e->text, ap); 
	printf_P(PSTR(", "));
	printf_P(e->file);
	printf_P(PSTR(", L%d\r\n"), e->line);
	va_end(ap);
}

/*
 * This code sends a counter value to uart.
 */
int main(void)
{  
	uint8_t spi_slave[SPI1_MAX_SLAVES], data_tx, data_rx[SPI1_MAX_SLAVES], i;

	/* initialize oscillator with the default parameters ( see
	 * oscillator_config.h ) */
	oscillator_init();  

   /* remap and io config */
	#if defined(DRM12_BOARD)
		/* UART1 */
	  	_U1RXR = 12;		/* RX */
		_TRISD11 = 1;
	  	_RP9R = 0b00011;	/* TX */
	  	_TRISB9 = 0;

		/* SPI1 */
		_SDI1R = 17;	/* SDI1 */
		_TRISF5 = 1;
		_RP10R = 7;		/* SDO1 */
		_TRISF4 = 0;
		_RP29R = 8;		/* SCK1OUT */
		_TRISB15 = 0;

	#endif

	/* init UART */
	uart_init();  

	/* register log function */
	error_register_emerg(mylog);
	error_register_error(mylog);
	error_register_debug(mylog);
	error_register_warning(mylog);
	error_register_notice(mylog);


	#ifdef TEST_SPI_ERRORS
	spi_init(4,SPI_MODE_MASTER_8BITS, SPI_FORMAT_0,
					SPI_CLK_RATE1_16, SPI_CLK_RATE2_1);

	spi_get_mode(4);
	spi_slave[0] = spi_register_ss_line(4, &PORTG, 9);
	spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
	spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
	spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
	spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);

	spi_slave_select(4,0);
	spi_slave_select(1,4);
	spi_slave_select(1,0);
	spi_slave_select(1,0);

	data_rx[0] = spi_send_and_receive_data(4,data_tx);

	spi_slave_deselect(4,0);
	spi_slave_deselect(1,4);

	while(1);
	#endif


	/* init SPI1 */
	spi_init(1,SPI_MODE_MASTER_8BITS, SPI_FORMAT_0,
					SPI_CLK_RATE1_16, SPI_CLK_RATE2_1);

	/* register slave line */
	spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
	spi_slave[1] = spi_register_ss_line(1, &PORTG, 8);
	spi_slave[2] = spi_register_ss_line(1, &PORTG, 6);

	/* enable interrupts */
	sei();
  
	/* dumpt SPI info */
	spi_display_ss_lines();
	wait_ms(1000);

	while (1) {
		#if defined (TEST_LOOPBACK_NORMAL)

		for(i=0; i<SPI1_MAX_SLAVES; i++){
			spi_slave_select(1,spi_slave[i]);
			data_rx[i] = spi_send_and_receive_data(1,data_tx);
			spi_slave_deselect(1, spi_slave[i]);
		}

		printf("SPI Slave %d: send 0x%X, received 0X%X \r\n", spi_slave[0], data_tx, data_rx[0]);
		printf("SPI Slave %d: send 0x%X, received 0X%X \r\n", spi_slave[1], data_tx, data_rx[1]);
		printf("SPI Slave %d: send 0x%X, received 0X%X \r\n", spi_slave[2], data_tx, data_rx[2]);

		data_tx++;
		wait_ms(1000);
		#endif
	}
    
	return 0;
}

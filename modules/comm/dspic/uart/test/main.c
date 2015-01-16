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


#include <aversive.h>
#include <configuration_bits_config.h>
#include <pgmspace.h>
#include <oscillator.h>
#include <aversive/wait.h>
#include <uart.h>

#define DUMMYBOT_BOARD
//#define DRM12_BOARD
#define TEST_SW_LOOPBACK

/*
 * This code sends a counter value to uart.
 */
int main(void)
{  
	unsigned int i;

	/* initialize oscillator with the default parameters ( see
	 * oscillator_config.h ) */
	oscillator_init();  

   /* remap and io config */
	#if defined(DUMMYBOT_BOARD)	
		_U1RXR = 8;
	  	_RP7R = 0b00011;
	  	_TRISB8 = 1; 
	  	_TRISB7 = 0;
	#elif defined(DRM12_BOARD)
	  	_U1RXR = 12;
	  	_RP9R = 0b00011;
	  	_TRISD11 = 1; 
	  	_TRISB9 = 0;
	#endif

	/* initialize uart with the default parameters ( see
	 * uart_config.h ) */
	uart_init();  
 
	/* enable interrupts */
	sei();

	/* send some single characters */
	for (i=0; i<10; i++) {
		uart_send(0, 'x');
		uart_send(0, '0' + i);
		wait_ms(100);
	}
	uart_send(0, '\n');
	uart_send(0, '\r');

	/* test loopback mode */
	#ifdef TEST_SW_LOOPBACK
   while(1){
		uart_send(0,uart_recv(0));
   };
	#endif
  
	/** ready to do a nice printf on the uart */
	printf("Uart is cool !!\r\n");
  
	while (1) {
		printf(PSTR("This format string takes no RAM "
			      "space. %i\r\n"), i++);
		wait_ms(1000);
	}
    
	return 0;
}

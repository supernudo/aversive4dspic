
/*  
 *  Copyright EuRobotics Ingeneering (2010)
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
 *  Javier Baliñas Santos <balinas@gmail.com>
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <aversive.h>
#include <aversive/wait.h>
#include <uart.h>
#include <scheduler.h>
#include <encoders_dspic.h>

#include <configuration_bits_config.h>

void get_encoders(void * dummy)
{
	  volatile int32_t e1,e2;
	
    e1 = encoders_dspic_get_value((void *)1);
    e2 = encoders_dspic_get_value((void *)2);

    printf("%+.8ld %+.8ld\r\n", e1, e2);
}

int main(void)
{ 
  oscillator_init();
  
  /* L6203 H bridges */
	_TRISB13 	= 0;	// M_DER_IN1
	_TRISC7  	= 0;	// M_DER_IN2
	_TRISB12 	= 0;	// M_DER_EN
	
	_TRISB15 	= 0;	// M_IZQ_IN1
	_TRISC6  	= 0;	// M_IZQ_IN2
	_TRISB14 	= 0;	// M_IZQ_EN
	
	/* UARTs */
	_U1RXR 	= 8;		// U1RX <- RP8
  _RP7R 	= 3;		// U1TX -> RP7
	_TRISB8 = 1;		// U1RX
	_TRISB7	= 0;		// U1TX
	
	/* QEI */
	_QEA1R 	= 21;		// QEA1 <- RP
	_QEB1R 	= 20;		// QEB1 <- RP
	_TRISC5 = 1;		// QEA1
	_TRISC4	= 1;		// QEB1
	
  _QEA2R 	= 19;		// QEA2 <- RP
	_QEB2R 	= 4;		// QEB2 <- RP
	_TRISC3 = 1;		// QEA2
	_TRISB4 = 1;		// QEB2
 
  uart_init();
  scheduler_init();
  encoders_dspic_init();
  
  sei();

  /* add dspic encoders management */
  scheduler_add_periodical_event_priority(encoders_dspic_manage, NULL, 1, 200);
  scheduler_add_periodical_event_priority(get_encoders, NULL, 5, 127);

  while(1) {
		Nop();
  }
  
  return 0;
  
}

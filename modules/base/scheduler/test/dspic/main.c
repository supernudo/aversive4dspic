/*  
 *  Copyright Droids Corporation, Microb Technology, Eirbot (2005)
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
 *  Revision : $Id: main.c,v 1.9.4.5 2007/06/01 09:37:22 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  
 *  Test on Microchip microcontrollers, coder ported from
 *  main.c,v 1.9.4.5 2007/06/01 09:37:22 zer0 Exp.c,v 1.33.4.7 2009/01/23 23:08:42 zer0 Exp.
 *
 */

#include <stdio.h>

#include <aversive.h>
#include <scheduler.h>
#include <aversive/wait.h>
#include <uart.h>
#include <configuration_bits_config.h>
#include <time.h>

uint8_t event_id;

void f1(void * nothing)
{
	printf("%s\r\n", __FUNCTION__);
}

void f2(void * nothing)
{
	printf("%s\r\n", __FUNCTION__);
}

void f3(void * nothing)
{
	printf("%s START, time = %d\r\n", __FUNCTION__,(uint16_t)time_get_s());
	wait_ms(1000);
	printf("%s END\r\n", __FUNCTION__);
}

void supp(void * nothing)
{
  scheduler_del_event(event_id);
}

#ifdef CONFIG_MODULE_SCHEDULER_MANUAL
/* Timer 1 interrupt handler */
void __attribute__((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
    // Interrupt Service Routine code goes here */
    IFS0bits.T1IF=0;
    
    // Register scheduler interrupt
    scheduler_interrupt();
}
#endif

//#define DUMYBOT_BOARD
#define DRM12_BOARD

int main(void)
{
	/* initialize oscillator with the default parameters ( see
	 * oscillator_config.h ) */
	oscillator_init();
	
	/* remap io config */
	/* UART */
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
	
#ifndef HOST_VERSION
	uart_init();

#ifdef CONFIG_MODULE_SCHEDULER_MANUAL
	/* Init Timer1 */
	T1CON = 0;              // Timer reset
	IFS0bits.T1IF = 0;      // Reset Timer1 interrupt flag
	IEC0bits.T1IE = 1;      // Enable Timer1 interrupt
	TMR1 = 0x0000;  	
	PR1 = SCHEDULER_UNIT * (unsigned long)((double)FCY / 1000000.0);
	T1CONbits.TON = 1;      // Enable Timer1 and start the counter
#endif

	sei();
#else
	int i;
#endif

	wait_ms(2000);
	printf("init\r\n");

#ifdef CONFIG_MODULE_TIMER
	timer_init();
#endif
	scheduler_init();
	time_init(250);
	printf("init2\r\n");
	wait_ms(2000);
	printf("init3\r\n");

	event_id = scheduler_add_periodical_event_priority(f1, NULL, 500000l/SCHEDULER_UNIT, 200);
	scheduler_add_periodical_event_priority(f2, NULL, 500000l/SCHEDULER_UNIT, 100);
	scheduler_add_periodical_event(f3, NULL, 1000000l/SCHEDULER_UNIT);
	
	scheduler_add_single_event(supp,NULL,10000000l/SCHEDULER_UNIT);
	

#ifdef HOST_VERSION
	for (i=0 ; i<50000 ; i++)
		scheduler_interrupt();
#endif

	while(1);
	
	return 0;
}



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

#include <scheduler.h>
#include <aversive/wait.h>
#include <stdio.h>
#include <uart.h>
#include <configuration_bits_config.h>

#ifdef CONFIG_MODULE_SCHEDULER_MANUAL
#include <timer.h>
#endif

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

int main(void)
{
	/* initialize oscillator with the default parameters ( see
	 * oscillator_config.h ) */
	oscillator_init();
	
	/* remap io config */
	// uart
   _U1RXR = 8;
   _RP7R = 0b00011;
   _TRISB8 = 1; 
   _TRISB7 = 0;
	
#ifndef HOST_VERSION
	uart_init();
//	fdevopen(uart0_dev_send, uart0_dev_recv);

#ifdef CONFIG_MODULE_SCHEDULER_MANUAL
	/* Init Timer1 */
	unsigned int match_value;
	ConfigIntTimer1(T1_INT_PRIOR_4 & T1_INT_ON);
	WriteTimer1(0);
	match_value = SCHEDULER_UNIT * (unsigned long)((double)FCY / 1000000.0);
	OpenTimer1(T1_ON & T1_GATE_OFF & T1_IDLE_STOP &
              T1_PS_1_1 & T1_SYNC_EXT_OFF &
              T1_SOURCE_INT, match_value);
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



/*  
 *  Copyright Droids Corporation, Microb Technology, Eirbot (2005),
 *  Robotics Association of Coslada, Eurobotics Engineering (2010)
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
 *  Revision : $Id: scheduler.c,v 1.9.4.5 2009-01-28 23:26:01 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Compatibility with families of microcontrollers dsPIC and PIC24H of Microchip.
 *
 */

#include <string.h>

#include <aversive.h>
#include <aversive/parts.h>

#include <scheduler.h>
#include <scheduler_private.h>
#include <scheduler_config.h>


/* this file is compiled for AVR/DSPIC versions only */

/** declared in scheduler_host.c in case of host version */
struct event_t g_tab_event[SCHEDULER_NB_MAX_EVENT];


void scheduler_init(void)
{
	memset(g_tab_event, 0, sizeof(g_tab_event));

#ifdef AVR
#ifdef CONFIG_MODULE_SCHEDULER_USE_TIMERS
	SCHEDULER_TIMER_REGISTER();


#ifdef CONFIG_MODULE_SCHEDULER_TIMER0
	/* activation of corresponding interrupt */
	TOIE0_REG |= (1<<TOIE0); /* TIMSK */

	TCNT0 = 0; 
	CS00_REG = SCHEDULER_CK; /* TCCR0 */
#endif
#endif

#else /* DSPIC */
#ifdef CONFIG_MODULE_SCHEDULER_TIMER1
	/* Scheduler uses timer1 */
	T1CON = 0;              // Timer reset
	IFS0bits.T1IF = 0;      // Reset Timer1 interrupt flag
	IEC0bits.T1IE = 1;      // Enable Timer1 interrupt
	TMR1 = 0x0000;  	
	PR1 = SCHEDULER_UNIT * (unsigned long)((double)FCY / 1000000.0);
	T1CONbits.TON = 1;      // Enable Timer1 and start the counter
#endif
#endif /* AVR else DSPIC */
}

#ifdef AVR
#ifdef CONFIG_MODULE_SCHEDULER_TIMER0
SIGNAL(SIG_OVERFLOW0)
{
	scheduler_interrupt();
}
#endif

#else /* DSPIC */
#ifdef CONFIG_MODULE_SCHEDULER_TIMER1
/* the ISR name is chosen from the device linker script */
void __attribute__((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
    IFS0bits.T1IF=0;   
    scheduler_interrupt();
}
#endif
#endif /* AVR else DSPIC*/


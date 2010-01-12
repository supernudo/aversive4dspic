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
 *  Revision : $Id: test_int_show.c,v 1.3.4.2 2007/05/23 17:18:12 zer0 Exp $
 *
 */

#include <aversive.h>

#ifdef AVR
#include <avr/io.h>
#endif

#include <uart.h>
#include <aversive/wait.h>
#include <stdio.h>

#include <diagnostic.h>

int delay = 0;
int charcount = 0;

char buf[20] = "toto";
int buf_index = 0;


void interrupt(void)
{

  // introduces a delay
  #ifdef AVR
  wait_4cyc(delay *4);
  #else
  wait_ms(delay);
  #endif
  
  // increments the delay, and prepares the string to print
  if(charcount-- == 0)
    {
    charcount = 200;
    sprintf(buf, "\n\r%i", delay++);
    buf_index = 0;
    }
  
  // prints the string
#ifdef AVR
  if (buf[buf_index] == 0)
    uart0_send(' ');
  else 
    uart0_send(buf[buf_index++]);
#else
  if (buf[buf_index] == 0)
    uart_send(0,' ');
  else
		uart_send(0,buf[buf_index++]);
#endif
}



int test_int_show(void)
{

  // uart stuff
  uart_init();  
  sei();
  
  #ifdef AVR
  fdevopen(uart0_dev_send,NULL);
	#endif
	
  // bonjour
  printf("\n\rhello, we will now test the int_show function\n\r");
  printf("the counter shoud increment while you see the voltage decreasing on the pin\n\r");
  printf("this is due to increasing processor charge\n\r");

  wait_ms(500);

  // should be replaced by the scheduler
#ifdef AVR
  uart0_register_tx_event((void *) interrupt);
#else
  uart_register_tx_event(0,(void *) interrupt);
#endif

  // start characters
  printf("\n\r");

  show_int_loop();

  return 0;
}

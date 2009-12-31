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
 *  Revision : $Id: main.c,v 1.6.4.2 2007/05/23 17:18:12 zer0 Exp $
 *
 */

#include <aversive.h>

#include <uart.h>
#include <aversive/wait.h>
#include <stdio.h>
#include <stdarg.h>

#include <aversive/error.h>
#include <aversive/pgmspace.h>

#include <configuration_bits_config.h>

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

int main(void)
{

#ifndef HOST_VERSION

	oscillator_init();
	
	// uart
	_U1RXR 	= 8;	// U1RX <- RP8
	_TRISB8 = 1;	// U1RX is input
  _RP7R 	= 3;	// U1TX -> RP7
	_TRISB7	= 0;	// U1TX is output
	
	/* uart stuff */
	uart_init();  
	sei();
	//fdevopen(uart0_dev_send,NULL);
#endif
	
	/* hello */
	printf_P(PSTR("test error module\r\n"));
	printf("%d\r\n",sizeof(va_list));
	
	/* don't display anything */
	ERROR(54, "pouet");
	
	error_register_emerg(mylog);
	error_register_error(mylog);
	
	EMERG(3, "this is an emerg log");
	EMERG(3, "this is an emerg log with param %d", 453);
	ERROR(54, "this is another log, level = error");
	
	/* don't display it, fcts are not registered */
	WARNING(4, "not displayed");
	NOTICE(5, "not displayed");
	DEBUG(6, "not displayed");
	
	while(1);
	
	return 0;
}

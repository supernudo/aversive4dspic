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
 *  Revision : $Id: uart_dev_io.c,v 1.1.2.2 2009/04/07 20:00:47 zer0 Exp $
 *
 */

/*  Olivier MATZ, Droids-corp 2004 - 2009 
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Code ported to families of microcontrollers dsPIC, PIC24H and PIC24F from
 *  uart_dev_io.c,v 1.1.2.2 2009/04/07 20:00:47 zer0 Exp.
 *
 */

#include <uart.h>
#include <uart_defs.h>
#include <uart_private.h>

int __attribute__((__section__(".libc"))) write(int handle, void *buffer, unsigned int len) {
	int i;
  	
  	switch (handle)
  	{
	  	case 0:
    	case 1:
    	case 2:
 			for (i = len; i; --i){
	 			#if (STDIO_UART == 0) && (defined UART0_COMPILE)
				uart_send(0,*(char*)buffer++);
				#endif
				
	 			#if (STDIO_UART == 1) && (defined UART1_COMPILE)
				uart_send(1,*(char*)buffer++);
				#endif

	 			#if (STDIO_UART == 2) && (defined UART2_COMPILE)
				uart_send(2,*(char*)buffer++);
				#endif

	 			#if (STDIO_UART == 3) && (defined UART3_COMPILE)
				uart_send(3,*(char*)buffer++);
				#endif

			}
      	break;
    default:
      break;
   }
  return(len);
}




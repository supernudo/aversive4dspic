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
 *  Revision : $Id: uart_private.h,v 1.1.2.5 2009-01-03 16:24:50 zer0 Exp $
 *
 */

/* Olivier MATZ, Droids-corp 2004 - 2009 
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Code ported to families of microcontrollers dsPIC, PIC24H and PIC24F from
 *  uart_private.h,v 1.1.2.5 2009/01/03 16:24:50 zer0 Exp.
 *
 */

#ifndef _UART_PRIVATE_H_
#define _UART_PRIVATE_H_

#include <aversive.h>
#include <aversive/list.h>

#include <uart.h>
#include <uart_defs.h>
#include <uart_config.h>

typedef volatile uint16_t *uart_reg_t;

struct regs {
        uart_reg_t umode;
        uart_reg_t usta;
        uart_reg_t utxreg;
        uart_reg_t urxreg;
        uart_reg_t ubrg;      
};
extern const struct regs uart_regs[UART_HW_NUM];

/* uart registers bit masks */
#define UTXBF_MASK   0x0200
#define URXDA_MASK   0x0001

/* uart set TX enable/disable interrupt */
static inline void uart_set_txie(num, val){         
	switch(num){     
#if defined(_U1TXIE)              
   	case 0: _U1TXIE = val; break;
#endif
#if defined(_U2TXIE)              
   	case 1: _U2TXIE = val; break;
#endif          
#if defined(_U3TXIE)              
   	case 2: _U3TXIE = val; break;          
#endif
#if defined(_U4TXIE)              
   	case 3: _U4TXIE = val; break;     
#endif     
	default: break;
	}       
}
 
/* uart set RX enable/disable interrupt */ 
static inline void uart_set_rxie(num, val){
	switch(num){                   
#if defined(_U1RXIE)              
   	case 0: _U1RXIE = val; break;
#endif
#if defined(_U2RXIE)              
   	case 1: _U2RXIE = val; break;
#endif          
#if defined(_U3RXIE)              
   	case 2: _U3RXIE = val; break; 
#endif         
#if defined(_U4RXIE)              
   	case 3: _U4RXIE = val; break;
#endif          
	default: break;
	}               
}

/* uart get TX enable/disable interrupt */
static inline uint8_t uart_get_txie(num){         
 	switch(num){                   
#if defined(_U1TXIE)              
   	case 0: return _U1TXIE; break;
#endif
#if defined(_U2TXIE)              
   	case 1: return _U2TXIE; break;    
#endif      
#if defined(_U3TXIE)              
   	case 2: return _U3TXIE; break;   
#endif       
#if defined(_U4TXIE)              
   	case 3: return _U4TXIE; break; 
#endif         
	default: return 0; break;
	}          
}

/* uart get RX enable/disable interrupt */
static inline uint8_t uart_get_rxie(num){         
 	switch(num){                   
#if defined(_U1RXIE)              
   	case 0: return _U1RXIE; break;
#endif
#if defined(_U2RXIE)              
   	case 1: return _U2RXIE; break;
#endif          
#if defined(_U3RXIE)              
   	case 2: return _U3RXIE; break;
#endif          
#if defined(_U4RXIE)              
   	case 3: return _U4RXIE; break;
#endif          
	default: return 0; break;
	}         
}

/* uart clear TX interrupt flag */
static inline void uart_clear_txif(num){         
	switch(num){                   
#if defined(_U1TXIF)              
   	case 0: _U1TXIF = 0; break;
#endif
#if defined(_U2TXIF)              
   	case 1: _U2TXIF = 0; break;
#endif          
#if defined(_U3TXIF)              
   	case 2: _U3TXIF = 0; break;
#endif          
#if defined(_U4TXIF)              
   	case 3: _U4TXIF = 0; break;
#endif          
	default: break;
	}             
}

/* uart clear RX interrupt flag */
static inline void uart_clear_rxif(num){         
	switch(num){                   
#if defined(_U1RXIF)              
   	case 0: _U1RXIF = 0; break;
#endif
#if defined(_U2RXIF)              
   	case 1: _U2RXIF = 0; break;
#endif          
#if defined(_U3RXIF)              
   	case 2: _U3RXIF = 0; break; 
#endif         
#if defined(_U4RXIF)              
   	case 3: _U4RXIF = 0; break;       
#endif   
	default: break;
	}         
}

typedef void (event)(char);
typedef void (event_9bits)(int);

/** The emission fifo of uart */
extern struct cirbuf g_tx_fifo[UART_HW_NUM];

/** The reception fifo of uart  */
extern struct cirbuf g_rx_fifo[UART_HW_NUM];

extern event *rx_event[UART_HW_NUM];
extern event *tx_event[UART_HW_NUM];

void uart_send_next_char(uint8_t num);
int8_t uart_setconf(uint8_t num, struct uart_config *u);

static inline char uart_get_urxreg(uint8_t num)
{
	return ((*uart_regs[num].urxreg) & 0xFF);
}


static inline void uart_set_utxreg(uint8_t num, char c)
{
	*uart_regs[num].utxreg = c & 0xFF;
	
	/* tx event function. We suppose interrupts are already
	 * locked, so no pb with tx_event pointer */
	if (tx_event[num])
		tx_event[num](c);
}

#endif /* _UART_PRIVATE_H_ */


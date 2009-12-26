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
 *  Revision : $Id: uart_setconf.c,v 1.1.2.3 2009/01/03 16:24:50 zer0 Exp $
 *
 */

/* Olivier MATZ, Droids-corp 2004 - 2009 */

#include <uart.h>
#include <uart_defs.h>
#include <uart_private.h>

/** The emission fifo of uart  */
#ifdef UART0_COMPILE
char g_tx0_buf[UART0_TX_FIFO_SIZE];
char g_rx0_buf[UART0_RX_FIFO_SIZE];
#endif
#ifdef UART1_COMPILE
char g_tx1_buf[UART1_TX_FIFO_SIZE];
char g_rx1_buf[UART1_RX_FIFO_SIZE];
#endif
//#ifdef UART2_COMPILE
//char g_tx2_buf[UART2_TX_FIFO_SIZE];
//char g_rx2_buf[UART2_RX_FIFO_SIZE];
//#endif
//#ifdef UART3_COMPILE
//char g_tx3_buf[UART3_TX_FIFO_SIZE];
//char g_rx3_buf[UART3_RX_FIFO_SIZE];
//#endif

//#if UART_IS_USART
//
//static int8_t uart_set_nbits_parity(uint8_t num, struct uart_config * u)
//{
//	uint8_t ucsrc = 0;
//
//	/* number of bit in the frame */
//#ifdef CONFIG_MODULE_UART_9BITS
//	if (u->nbits < 5 || u->nbits > 9) {
//		return ENOTSUP;
//	}
//#else
//	if (u->nbits < 5 || u->nbits > 8) {
//		return ENOTSUP;
//	}
//#endif
//
//	ucsrc |= ( ((u->nbits - 5) & 0x03) << UCSZ0 );
//#ifdef CONFIG_MODULE_UART_9BITS
//	if (u->nbits == 9)
//		*uart_regs[num].ucsrb |= (1 << UCSZ2);
//	else
//#endif
//		*uart_regs[num].ucsrb &= ~(1 << UCSZ2);
//
//	/* parity */
//	if (u->parity == UART_PARTITY_ODD)
//		ucsrc |= ((1 << UPM0) | (1 << UPM1));
//	else if (u->parity == UART_PARTITY_EVEN)
//		ucsrc |= (1 << UPM1);
//	else if (u->parity != UART_PARTITY_NONE) {
//		return EINVAL;
//	}
//
//	/* nb of stop bits */
//	if (u->stop_bits == UART_STOP_BITS_2)
//		ucsrc |= (1 << USBS);
//	else if (u->stop_bits != UART_STOP_BITS_1)
//		return EINVAL;
//
//#ifdef URSEL
//	/* some uC use a special bit URSEL to access to UCSRC */
//	ucsrc |= (1<<URSEL);
//#endif
//	*uart_regs[num].ucsrc = ucsrc;
//
//	return ESUCCESS;
//}
//
//#else /* UART_IS_USART */
//
//static int8_t uart_set_nbits_parity(int8_t num, struct uart_config * u)
//{
//	/* number of bit in the frame */
//	if (u->nbits == 8)
//		*uart_regs[num].ucsrb &= ~(1 << CHR9);
//#ifdef CONFIG_MODULE_UART_9BITS
//	else if (u->nbits == 9)
//		*uart_regs[num].ucsrb |= (1 << CHR9);
//#endif
//	else
//		return ENOTSUP;
//
//	/* parity and stop */
//	if (u->parity != UART_PARTITY_NONE ||
//	    u->stop_bits != UART_STOP_BITS_1) {
//		return ENOTSUP;
//	}
//
//	return ESUCCESS;
//}
//#endif  /* UART_IS_USART */
//
//
//#if UART_IS_USART
//
//static int8_t uart_set_baudreg(uint8_t num, uint16_t baudreg)
//{
//	uint8_t lo, hi;
//
//	/* set msb bit of hi to 0 (useful fot uC with URSEL, and not
//	 * important for the others because the baudreg will never be
//	 * as big */
//	lo = (uint8_t)baudreg;
//	hi = (uint8_t)(baudreg>>8) & 0x7F;
//
//	*uart_regs[num].ubrrl = lo;
//	*uart_regs[num].ubrrh = hi;
//
//	return ESUCCESS;
//}
//
//#else /* UART_IS_USART */
//
//static int8_t uart_set_baudreg(uint8_t num, uint16_t baudreg)
//{
//	uint8_t lo, hi;
//
//	lo=(uint8_t)baudreg;
//	hi=(uint8_t)(baudreg>>8);
//
//	if (hi != 0)
//		return EINVAL;
//	*uart_regs[num].ubrrl = lo;
//
//	return ESUCCESS;
//}
//#endif /* UART_IS_USART */

void uart_config_int(uint8_t num, uint16_t config)
{
   /* clear IF flags */
   uart_clear_rxif(num);
   uart_clear_txif(num);

   /* set priority */
   if(num==0){
    _U1RXIP = 0x0007 & config;
    _U1TXIP = (0x0070 & config) >> 4;
   }
   else{
    _U2RXIP = 0x0007 & config;
    _U2TXIP = (0x0070 & config) >> 4;
   }
   
   /* enable/disable interrupt */
   uart_set_rxie(num,((0x0008 & config) >> 3));
   uart_set_txie(num,((0x0080 & config) >> 7));
    
   return;
}


void uart_open(uint8_t num, uint16_t uxmode, uint16_t uxsta, uint16_t uxbrg)
{
   *uart_regs[num].ubrg  = uxbrg;     /* baud rate */
   *uart_regs[num].umode = uxmode;    /* operation settings */
   *uart_regs[num].usta = uxsta;      /* TX & RX interrupt modes */
   
   return;
}


/* configuration from uart_config.h */
#define UART_SET_STATICCONF(x)						\
	u->enabled = UART##x##_ENABLED;					\
	u->intr_enabled = UART##x##_INTERRUPT_ENABLED;			\
	u->use_double_speed = UART##x##_USE_DOUBLE_SPEED;		\
	u->parity =  UART##x##_PARITY;					\
	u->stop_bits = UART##x##_STOP_BIT;				\
	u->nbits = UART##x##_NBITS;					\
	u->baudrate = UART##x##_BAUDRATE;				\
	break

int8_t uart_setconf(uint8_t num, struct uart_config *u)
{
	uint8_t ret = ESUCCESS;
	uint16_t ubrg_reg = 0;
	uint16_t uconfig_int_reg = 0;
	uint16_t umode_reg = 0xFFFF;
	uint16_t usta_reg = 0;
	struct uart_config static_conf;
	uint8_t flags;

	IRQ_LOCK(flags);

	/* static configuration */
	if (!u) {
		u = &static_conf;
		switch (num) {
#ifdef UART0_COMPILE
		case 0:
			UART_SET_STATICCONF(0);
#endif
#ifdef UART1_COMPILE
		case 1:
			UART_SET_STATICCONF(1);
#endif
//#ifdef UART2_COMPILE
//		case 2:
//			UART_SET_STATICCONF(2);
//#endif
//#ifdef UART3_COMPILE
//		case 3:
//			UART_SET_STATICCONF(3);
//#endif
		default:
			ret = EINVAL;
			goto out;
		}
	}

	/* wait xmit finished (UDRE = 1) */
	//while( !(*uart_regs[num].ucsra & (1<<UDRE)) );

	switch (num) {
#ifdef UART0_COMPILE
	case 0:
		cirbuf_init(&g_tx_fifo[0], g_tx0_buf, 0, UART0_TX_FIFO_SIZE);
		cirbuf_init(&g_rx_fifo[0], g_rx0_buf, 0, UART0_RX_FIFO_SIZE);
		break;
#endif
#ifdef UART1_COMPILE
	case 1:
		cirbuf_init(&g_tx_fifo[1], g_tx1_buf, 0, UART1_TX_FIFO_SIZE);
		cirbuf_init(&g_rx_fifo[1], g_rx1_buf, 0, UART1_RX_FIFO_SIZE);
		break;
#endif
//#ifdef UART2_COMPILE
//	case 2:
//		cirbuf_init(&g_tx_fifo[2], g_tx2_buf, 0, UART2_TX_FIFO_SIZE);
//		cirbuf_init(&g_rx_fifo[2], g_rx2_buf, 0, UART2_RX_FIFO_SIZE);
//		break;
//#endif
//#ifdef UART3_COMPILE
//	case 3:
//		cirbuf_init(&g_tx_fifo[3], g_tx3_buf, 0, UART3_TX_FIFO_SIZE);
//		cirbuf_init(&g_rx_fifo[3], g_rx3_buf, 0, UART3_RX_FIFO_SIZE);
//		break;
//#endif
	default:
		ret = EINVAL;
		goto out;
	}
	//*uart_regs[num].ucsra = 0;
	
	if (u->enabled == 1){
		//*uart_regs[num].ucsrb = ((1 << TXEN) | (1 << RXEN));
		umode_reg &= UART_EN;
	}
	else {
		//*uart_regs[num].ucsrb = 0;
		umode_reg &= UART_DIS;
		goto out; /* no more conf */
	}

	///* we only enable recv interrupt, the xmit intrpt will be
	// * enabled in the xmit function */
	if (u->intr_enabled){
		//*uart_regs[num].ucsrb |= (1 << RXCIE);
		uconfig_int_reg = UART_RX_INT_EN & UART_TX_INT_DIS;
		// default priorities are 0, the application have to customize for de moment
		uconfig_int_reg &= UART_RX_INT_PR1 & UART_TX_INT_PR1;
	}		
   else
      uconfig_int_reg = UART_RX_INT_DIS & UART_TX_INT_DIS;

	//if (UART_HAS_U2X) { /* if u2x is supported */
		if (u->use_double_speed) /* u2x is enabled */
			//*uart_regs[num].ucsra |= (1 << U2X);
			umode_reg &= UART_BRGH_FOUR;
		else
			//*uart_regs[num].ucsra &= ~(1 << U2X);
			umode_reg &= UART_BRGH_SIXTEEN;
	//}
	//else if (u->use_double_speed) {
	//	ret = ENOTSUP;
	//	goto out;
	//}
	

	//uart_set_nbits_parity(num, u);
   if(u->parity == UART_PARTITY_NONE)
      if(u->nbits == 8)
         umode_reg &= UART_NO_PAR_8BIT;
      else
         umode_reg &= UART_NO_PAR_9BIT;
   else
      umode_reg &= u->parity;

	/* nb of stop bits */
	umode_reg &= u->stop_bits;

	/* baudrate */
	if(u->use_double_speed)
		//baudrate_reg = (F_CPU / (u->baudrate*8l)) - 1;
		ubrg_reg = (FCY / (u->baudrate*4)) - 1;
		
	else
		//baudrate_reg = (F_CPU / (u->baudrate*16l)) - 1;
		ubrg_reg = (FCY / (u->baudrate*16)) - 1;

	//uart_set_baudreg(num, baudrate_reg);

   // other configs that depends of dspic
   umode_reg &= UART_IDLE_CON & UART_IrDA_DISABLE &
                UART_MODE_SIMPLEX &  UART_UEN_00 &
                UART_DIS_WAKE & UART_DIS_LOOPBACK &
                UART_DIS_ABAUD & UART_UXRX_IDLE_ONE;
   
   usta_reg = UART_INT_TX & UART_IrDA_POL_INV_ZERO &
              UART_SYNC_BREAK_DISABLED & UART_TX_ENABLE &
              UART_INT_RX_CHAR & UART_ADR_DETECT_DIS &
              UART_RX_OVERRUN_CLEAR;

	/* exit */
 out:
   uart_config_int(num, uconfig_int_reg);
   uart_open(num, umode_reg, usta_reg, ubrg_reg);
   
	IRQ_UNLOCK(flags);
	return ret;
}
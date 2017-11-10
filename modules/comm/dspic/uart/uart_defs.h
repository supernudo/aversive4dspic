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
 *  Revision : $Id: uart_defs.h,v 1.2.4.13 2009-06-29 20:28:27 zer0 Exp $
 *
 */

/*  Olivier MATZ, Droids-corp 2004 - 2006
 *  Uart specific definitions
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *
 *  Code ported to families of microcontrollers dsPIC, PIC24H and PIC24F from
 *  uart_defs.h,v 1.2.4.13 2009/06/29 20:28:27 zer0 Exp.
 *
 */

#ifndef _UART_DEFS_H_
#define _UART_DEFS_H_


/* List of SFRs for UART  from Microchip pheriperal libs*/
/* This list contains the SFRs with default (POR) values to be used for configuring UART */
/* The user can modify this based on the requirement */
#define UxMODE_VALUE            0x0000
#define UxSTA_VALUE             0x0110
#define UxTXREG_VALUE           0x0000
#define UxRXREG_VALUE           0x0000
#define UxBRG_VALUE             0x0000

#if defined(__dsPIC33F__) || defined(__PIC24H__) || defined(__PIC24F__) || defined(__dsPIC33E__) ||\
    defined(__dsPIC30F1010__) || defined(__dsPIC30F2020__) || defined(__dsPIC30F2023__) || defined(__dsPIC30F4011__)

#define _UART_V2

#elif defined(__dsPIC30F__)

#define _UART_V1

#endif

#if defined(_UART_V2)

/* defines for UxMODE register */

#define UART_EN                 0xFFFF  /* Module enable */
#define UART_DIS                0x7FFF  /* Module disable */

#define UART_IDLE_CON           0xDFFF  /* Work in IDLE mode */
#define UART_IDLE_STOP          0xFFFF  /* Stop all functions in IDLE mode*/

#define UART_IrDA_ENABLE        0xFFFF  /* IrDA encoder and decoder enabled*/
#define UART_IrDA_DISABLE       0xEFFF  /* IrDA encoder and decoder disabled */

#if defined(__dsPIC30F1010__) || defined(__dsPIC30F2020__) || defined(__dsPIC30F2023__)  || defined(__dsPIC30F4011__)

/* Alternate I/O not implemented on dsPIC33F/PIC24H */

#define UART_ALTRX_ALTTX        0xFFE7  /*Communication through ALT pins*/
#define UART_RX_TX              0xFBE7  /*Communication through the normal pins*/
#endif

#define UART_MODE_SIMPLEX       0xFFFF  /* UxRTS pin in Simplex mode */
#define UART_MODE_FLOW          0xF7FF  /* UxRTS pin in Flow Control mode*/

#define UART_UEN_11             0xFFFF  /*UxTX,UxRX and BCLK pins are enabled and used; UxCTS pin controlled by port latches*/
#define UART_UEN_10             0xFEFF  /*UxTX,UxRX, UxCTS and UxRTS pins are enabled and used*/
#define UART_UEN_01             0xFDFF  /*UxTX,UxRX and UxRTS pins are enabled and used; UxCTS pin controlled by port latches*/
#define UART_UEN_00             0xFCFF  /*UxTX and UxRX pins are enabled and used; UxCTS and UxRTS/BCLK pins controlled by port latches*/

#define UART_EN_WAKE            0xFFFF  /*Enable Wake-up on START bit Detect during SLEEP Mode bit*/
#define UART_DIS_WAKE           0xFF7F  /*Disable Wake-up on START bit Detect during SLEEP Mode bit*/

#define UART_EN_LOOPBACK        0xFFFF  /*Loop back enabled*/
#define UART_DIS_LOOPBACK       0xFFBF  /*Loop back disabled*/

#define UART_EN_ABAUD           0xFFFF  /*Enable baud rate measurement on the next character*/
#define UART_DIS_ABAUD          0xFFDF  /*Baud rate measurement disabled or completed*/

#define UART_UXRX_IDLE_ZERO     0xFFFF  /* UxRX Idle state is zero */
#define UART_UXRX_IDLE_ONE      0xFFEF  /* UxRx Idle state is one */

#define UART_BRGH_FOUR          0xFFFF  /* BRG generates 4 clocks per bit period */
#define UART_BRGH_SIXTEEN       0xFFF7  /* BRG generates 16 clocks per bit period */

#define UART_NO_PAR_9BIT        0xFFFF  /*No parity 9 bit*/
#define UART_ODD_PAR_8BIT       0xFFFD  /*odd parity 8 bit*/
#define UART_EVEN_PAR_8BIT      0xFFFB  /*even parity 8 bit*/
#define UART_NO_PAR_8BIT        0xFFF9  /*no parity 8 bit*/

#define UART_2STOPBITS          0xFFFF  /*2 stop bits*/
#define UART_1STOPBIT           0xFFFE  /*1 stop bit*/

/* defines for UART Status register */

#define UART_INT_TX_BUF_EMPTY   0xDFFF  /* Interrupt on TXBUF becoming empty */
#define UART_INT_TX_LAST_CH     0x7FFF  /* Interrupt when last character shifted out*/
#define UART_INT_TX             0x5FFF  /* Interrupt on transfer of every character to TSR */

#define UART_IrDA_POL_INV_ONE   0xFFFF  /*IrDA encoded, UxTX Idle state is '1' */
#define UART_IrDA_POL_INV_ZERO  0xBFFF  /* IrDA encoded, UxTX Idel state is '0' */

#define UART_SYNC_BREAK_ENABLED   0xFFFF  /* Send sync break on next transmission */
#define UART_SYNC_BREAK_DISABLED  0xF7FF  /* Sync break transmission disabled or completed */

#define UART_TX_ENABLE          0xFFFF  /* Transmit enable */
#define UART_TX_DISABLE         0xFBFF  /* Transmit disable */

#define UART_TX_BUF_FUL         0xFFFF  /* Transmit buffer is full */
#define UART_TX_BUF_NOT_FUL     0xFDFF  /* Transmit buffer is not full */

#define UART_INT_RX_BUF_FUL     0xFFFF  /* Interrupt on RXBUF full */
#define UART_INT_RX_3_4_FUL     0xFFBF  /* Interrupt on RXBUF 3/4 full */
#define UART_INT_RX_CHAR        0xFF7F  /* Interrupt on every char received */

#define UART_ADR_DETECT_EN      0xFFFF  /* address detect enable */
#define UART_ADR_DETECT_DIS     0xFFDF  /* address detect disable */

#define UART_RX_OVERRUN_CLEAR   0xFFFD  /* Rx buffer Over run status bit clear */

/* defines for UART Interrupt configuartion */

#define UART_RX_INT_EN          0xFFFF  /*Receive interrupt enabled*/
#define UART_RX_INT_DIS         0xFFF7  /*Receive interrupt disabled*/

#define UART_RX_INT_PR0         0xFFF8  /*Priority RX interrupt 0*/
#define UART_RX_INT_PR1         0xFFF9  /*Priority RX interrupt 1*/
#define UART_RX_INT_PR2         0xFFFA  /*Priority RX interrupt 2*/
#define UART_RX_INT_PR3         0xFFFB  /*Priority RX interrupt 3*/
#define UART_RX_INT_PR4         0xFFFC  /*Priority RX interrupt 4*/
#define UART_RX_INT_PR5         0xFFFD  /*Priority RX interrupt 5*/
#define UART_RX_INT_PR6         0xFFFE  /*Priority RX interrupt 6*/
#define UART_RX_INT_PR7         0xFFFF  /*Priority RX interrupt 7*/

#define UART_TX_INT_EN          0xFFFF  /*transmit interrupt enabled*/
#define UART_TX_INT_DIS         0xFF7F  /*transmit interrupt disabled*/

#define UART_TX_INT_PR0         0xFF8F  /*Priority TX interrupt 0*/
#define UART_TX_INT_PR1         0xFF9F  /*Priority TX interrupt 1*/
#define UART_TX_INT_PR2         0xFFAF  /*Priority TX interrupt 2*/
#define UART_TX_INT_PR3         0xFFBF  /*Priority TX interrupt 3*/
#define UART_TX_INT_PR4         0xFFCF  /*Priority TX interrupt 4*/
#define UART_TX_INT_PR5         0xFFDF  /*Priority TX interrupt 5*/
#define UART_TX_INT_PR6         0xFFEF  /*Priority TX interrupt 6*/
#define UART_TX_INT_PR7         0xFFFF  /*Priority TX interrupt 7*/


#elif defined(_UART_V1)

/* definitions for 30F (non-SMPS) devices */

/* defines for UxMODE register */
#define UART_EN                 0xFFE7  /* Module enable */
#define UART_DIS                0x7FE7  /* Module disable */

#define UART_IDLE_CON           0xDFE7  /* Work in IDLE mode */
#define UART_IDLE_STOP          0xFFE7  /* Stop all functions in IDLE mode*/


#define UART_EN_WAKE            0xFFFF  /*Enable Wake-up on START bit Detect during SLEEP Mode bit*/
#define UART_DIS_WAKE           0xFF7F  /*Disable Wake-up on START bit Detect during SLEEP Mode bit*/

#define UART_EN_LOOPBACK        0xFFFF  /*Loop back enabled*/
#define UART_DIS_LOOPBACK       0xFFBF  /*Loop back disabled*/

#define UART_EN_ABAUD           0xFFFF  /*Input to Capture module from UxRX pin*/
#define UART_DIS_ABAUD          0xFFDF  /*Input to Capture module from ICx pin*/

#define UART_NO_PAR_9BIT        0xFFFF  /*No parity 9 bit*/
#define UART_ODD_PAR_8BIT       0xFFFD  /*odd parity 8 bit*/
#define UART_EVEN_PAR_8BIT      0xFFFB  /*even parity 8 bit*/
#define UART_NO_PAR_8BIT        0xFFF9  /*no parity 8 bit*/

#define UART_2STOPBITS          0xFFFF  /*2 stop bits*/
#define UART_1STOPBIT           0xFFFE  /*1 stop bit*/

/* defines for UART Status register */

#define UART_INT_TX_BUF_EMPTY   0xFFFF  /* Interrupt on TXBUF becoming empty */
#define UART_INT_TX             0x7FFF  /* Interrupt on transfer of every character to TSR */

#define UART_TX_PIN_NORMAL      0xF7FF  /* UART TX pin operates normally */
#define UART_TX_PIN_LOW         0xFFFF  /* UART TX pin driven low */

#define UART_TX_ENABLE          0xFFFF  /* Transmit enable */
#define UART_TX_DISABLE         0xFBFF  /* Transmit disable */

#define UART_INT_RX_BUF_FUL     0xFFFF  /* Interrupt on RXBUF full */
#define UART_INT_RX_3_4_FUL     0xFFBF  /* Interrupt on RXBUF 3/4 full */
#define UART_INT_RX_CHAR        0xFF7F  /* Interrupt on every char received */

#define UART_ADR_DETECT_EN      0xFFFF  /* address detect enable */
#define UART_ADR_DETECT_DIS     0xFFDF  /* address detect disable */

#define UART_RX_OVERRUN_CLEAR   0xFFFD  /* Rx buffer Over run status bit clear */

/* defines for UART Interrupt configuartion */
#define UART_RX_INT_EN          0xFFFF  /*Receive interrupt enabled*/
#define UART_RX_INT_DIS         0xFFF7  /*Receive interrupt disabled*/

#define UART_RX_INT_PR0         0xFFF8  /*Priority RX interrupt 0*/
#define UART_RX_INT_PR1         0xFFF9  /*Priority RX interrupt 1*/
#define UART_RX_INT_PR2         0xFFFA  /*Priority RX interrupt 2*/
#define UART_RX_INT_PR3         0xFFFB  /*Priority RX interrupt 3*/
#define UART_RX_INT_PR4         0xFFFC  /*Priority RX interrupt 4*/
#define UART_RX_INT_PR5         0xFFFD  /*Priority RX interrupt 5*/
#define UART_RX_INT_PR6         0xFFFE  /*Priority RX interrupt 6*/
#define UART_RX_INT_PR7         0xFFFF  /*Priority RX interrupt 7*/

#define UART_TX_INT_EN          0xFFFF  /*transmit interrupt enabled*/
#define UART_TX_INT_DIS         0xFF7F  /*transmit interrupt disabled*/

#define UART_TX_INT_PR0         0xFF8F  /*Priority TX interrupt 0*/
#define UART_TX_INT_PR1         0xFF9F  /*Priority TX interrupt 1*/
#define UART_TX_INT_PR2         0xFFAF  /*Priority TX interrupt 2*/
#define UART_TX_INT_PR3         0xFFBF  /*Priority TX interrupt 3*/
#define UART_TX_INT_PR4         0xFFCF  /*Priority TX interrupt 4*/
#define UART_TX_INT_PR5         0xFFDF  /*Priority TX interrupt 5*/
#define UART_TX_INT_PR6         0xFFEF  /*Priority TX interrupt 6*/
#define UART_TX_INT_PR7         0xFFFF  /*Priority TX interrupt 7*/

#endif

#define UART_PARTITY_NONE  0
#define UART_PARTITY_ODD   UART_ODD_PAR_8BIT
#define UART_PARTITY_EVEN  UART_EVEN_PAR_8BIT

#define UART_STOP_BITS_1 UART_1STOPBIT
#define UART_STOP_BITS_2 UART_2STOPBITS

#if (defined _U4TXIE)
#define UART_HW_NUM 4
#elif (defined _U3TXIE)
#define UART_HW_NUM 3
#elif (defined _U2TXIE)
#define UART_HW_NUM 2
#else /* assume 1 uart */
#define UART_HW_NUM 1
#endif

#endif //_UART_DEFS_H_

/*  
 *  Copyright Droids Corporation, Microb Technology, Eirbot (2009)
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
 *  Revision : $Id $
 *
 */

/* WARNING : this file is automatically generated by scripts.
 * You should not edit it. If you find something wrong in it,
 * write to zer0@droids-corp.org */


/* prescalers timer 0 */
#define TIMER0_PRESCALER_DIV_0          0
#define TIMER0_PRESCALER_DIV_1          1
#define TIMER0_PRESCALER_DIV_8          2
#define TIMER0_PRESCALER_DIV_64         3
#define TIMER0_PRESCALER_DIV_256        4
#define TIMER0_PRESCALER_DIV_1024       5
#define TIMER0_PRESCALER_DIV_FALL       6
#define TIMER0_PRESCALER_DIV_RISE       7

#define TIMER0_PRESCALER_REG_0          0
#define TIMER0_PRESCALER_REG_1          1
#define TIMER0_PRESCALER_REG_2          8
#define TIMER0_PRESCALER_REG_3          64
#define TIMER0_PRESCALER_REG_4          256
#define TIMER0_PRESCALER_REG_5          1024
#define TIMER0_PRESCALER_REG_6          -1
#define TIMER0_PRESCALER_REG_7          -2

/* prescalers timer 1 */
#define TIMER1_PRESCALER_DIV_0          0
#define TIMER1_PRESCALER_DIV_1          1
#define TIMER1_PRESCALER_DIV_8          2
#define TIMER1_PRESCALER_DIV_64         3
#define TIMER1_PRESCALER_DIV_256        4
#define TIMER1_PRESCALER_DIV_1024       5
#define TIMER1_PRESCALER_DIV_FALL       6
#define TIMER1_PRESCALER_DIV_RISE       7

#define TIMER1_PRESCALER_REG_0          0
#define TIMER1_PRESCALER_REG_1          1
#define TIMER1_PRESCALER_REG_2          8
#define TIMER1_PRESCALER_REG_3          64
#define TIMER1_PRESCALER_REG_4          256
#define TIMER1_PRESCALER_REG_5          1024
#define TIMER1_PRESCALER_REG_6          -1
#define TIMER1_PRESCALER_REG_7          -2


/* available timers */
#define TIMER0_AVAILABLE
#define TIMER0A_AVAILABLE
#define TIMER0B_AVAILABLE
#define TIMER1_AVAILABLE
#define TIMER1A_AVAILABLE
#define TIMER1B_AVAILABLE

/* overflow interrupt number */
#define SIG_OVERFLOW0_NUM 0
#define SIG_OVERFLOW1_NUM 1
#define SIG_OVERFLOW_TOTAL_NUM 2

/* output compare interrupt number */
#define SIG_OUTPUT_COMPARE0A_NUM 0
#define SIG_OUTPUT_COMPARE0B_NUM 1
#define SIG_OUTPUT_COMPARE1A_NUM 2
#define SIG_OUTPUT_COMPARE1B_NUM 3
#define SIG_OUTPUT_COMPARE_TOTAL_NUM 4

/* Pwm nums */
#define PWM0A_NUM 0
#define PWM0B_NUM 1
#define PWM1A_NUM 2
#define PWM1B_NUM 3
#define PWM_TOTAL_NUM 4

/* input capture interrupt number */
#define SIG_INPUT_CAPTURE1_NUM 0
#define SIG_INPUT_CAPTURE_TOTAL_NUM 1


/* DIDR */
#define AIN0D_REG            DIDR
#define AIN1D_REG            DIDR

/* CLKPR */
#define CLKPS0_REG           CLKPR
#define CLKPS1_REG           CLKPR
#define CLKPS2_REG           CLKPR
#define CLKPS3_REG           CLKPR
#define CLKPCE_REG           CLKPR

/* WDTCR */
#define WDP0_REG             WDTCR
#define WDP1_REG             WDTCR
#define WDP2_REG             WDTCR
#define WDE_REG              WDTCR
#define WDCE_REG             WDTCR
#define WDP3_REG             WDTCR
#define WDIE_REG             WDTCR
#define WDIF_REG             WDTCR

/* GIMSK */
#define PCIE_REG             GIMSK
#define INT0_REG             GIMSK
#define INT1_REG             GIMSK

/* SREG */
#define C_REG                SREG
#define Z_REG                SREG
#define N_REG                SREG
#define V_REG                SREG
#define S_REG                SREG
#define H_REG                SREG
#define T_REG                SREG
#define I_REG                SREG

/* DDRB */
#define DDB0_REG             DDRB
#define DDB1_REG             DDRB
#define DDB2_REG             DDRB
#define DDB3_REG             DDRB
#define DDB4_REG             DDRB
#define DDB5_REG             DDRB
#define DDB6_REG             DDRB
#define DDB7_REG             DDRB

/* USISR */
#define USICNT0_REG          USISR
#define USICNT1_REG          USISR
#define USICNT2_REG          USISR
#define USICNT3_REG          USISR
#define USIDC_REG            USISR
#define USIPF_REG            USISR
#define USIOIF_REG           USISR
#define USISIF_REG           USISR

/* EEDR */
#define EEDR0_REG            EEDR
#define EEDR1_REG            EEDR
#define EEDR2_REG            EEDR
#define EEDR3_REG            EEDR
#define EEDR4_REG            EEDR
#define EEDR5_REG            EEDR
#define EEDR6_REG            EEDR
#define EEDR7_REG            EEDR

/* DDRA */
#define DDA0_REG             DDRA
#define DDA1_REG             DDRA
#define DDA2_REG             DDRA

/* TCCR1A */
#define WGM10_REG            TCCR1A
#define WGM11_REG            TCCR1A
#define COM1B0_REG           TCCR1A
#define COM1B1_REG           TCCR1A
#define COM1A0_REG           TCCR1A
#define COM1A1_REG           TCCR1A

/* GTCCR */
#define PSR10_REG            GTCCR

/* TCCR1B */
#define CS10_REG             TCCR1B
#define CS11_REG             TCCR1B
#define CS12_REG             TCCR1B
#define WGM12_REG            TCCR1B
#define WGM13_REG            TCCR1B
#define ICES1_REG            TCCR1B
#define ICNC1_REG            TCCR1B

/* TIMSK */
#define OCIE0A_REG           TIMSK
#define TOIE0_REG            TIMSK
#define OCIE0B_REG           TIMSK
#define ICIE1_REG            TIMSK
#define OCIE1B_REG           TIMSK
#define OCIE1A_REG           TIMSK
#define TOIE1_REG            TIMSK

/* UCSRA */
#define MPCM_REG             UCSRA
#define U2X_REG              UCSRA
#define UPE_REG              UCSRA
#define DOR_REG              UCSRA
#define FE_REG               UCSRA
#define UDRE_REG             UCSRA
#define TXC_REG              UCSRA
#define RXC_REG              UCSRA

/* OCR0A */
/* #define OCR0_0_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_1_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_2_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_3_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_4_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_5_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_6_REG           OCR0A */ /* dup in OCR0B */
/* #define OCR0_7_REG           OCR0A */ /* dup in OCR0B */

/* DDRD */
#define DDD0_REG             DDRD
#define DDD1_REG             DDRD
#define DDD2_REG             DDRD
#define DDD3_REG             DDRD
#define DDD4_REG             DDRD
#define DDD5_REG             DDRD
#define DDD6_REG             DDRD

/* OCR0B */
/* #define OCR0_0_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_1_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_2_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_3_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_4_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_5_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_6_REG           OCR0B */ /* dup in OCR0A */
/* #define OCR0_7_REG           OCR0B */ /* dup in OCR0A */

/* ICR1H */
#define ICR1H0_REG           ICR1H
#define ICR1H1_REG           ICR1H
#define ICR1H2_REG           ICR1H
#define ICR1H3_REG           ICR1H
#define ICR1H4_REG           ICR1H
#define ICR1H5_REG           ICR1H
#define ICR1H6_REG           ICR1H
#define ICR1H7_REG           ICR1H

/* OCR1BL */
/* #define OCR1AL0_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL1_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL2_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL3_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL4_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL5_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL6_REG          OCR1BL */ /* dup in OCR1AL */
/* #define OCR1AL7_REG          OCR1BL */ /* dup in OCR1AL */

/* UCSRB */
#define TXB8_REG             UCSRB
#define RXB8_REG             UCSRB
#define UCSZ2_REG            UCSRB
#define TXEN_REG             UCSRB
#define RXEN_REG             UCSRB
#define UDRIE_REG            UCSRB
#define TXCIE_REG            UCSRB
#define RXCIE_REG            UCSRB

/* UCSRC */
#define UCPOL_REG            UCSRC
#define UCSZ0_REG            UCSRC
#define UCSZ1_REG            UCSRC
#define USBS_REG             UCSRC
#define UPM0_REG             UCSRC
#define UPM1_REG             UCSRC
#define UMSEL_REG            UCSRC

/* SPL */
#define SP0_REG              SPL
#define SP1_REG              SPL
#define SP2_REG              SPL
#define SP3_REG              SPL
#define SP4_REG              SPL
#define SP5_REG              SPL
#define SP6_REG              SPL
#define SP7_REG              SPL

/* OCR1BH */
/* #define OCR1AH0_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH1_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH2_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH3_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH4_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH5_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH6_REG          OCR1BH */ /* dup in OCR1AH */
/* #define OCR1AH7_REG          OCR1BH */ /* dup in OCR1AH */

/* PIND */
#define PIND0_REG            PIND
#define PIND1_REG            PIND
#define PIND2_REG            PIND
#define PIND3_REG            PIND
#define PIND4_REG            PIND
#define PIND5_REG            PIND
#define PIND6_REG            PIND

/* GPIOR1 */
#define GPIOR10_REG          GPIOR1
#define GPIOR11_REG          GPIOR1
#define GPIOR12_REG          GPIOR1
#define GPIOR13_REG          GPIOR1
#define GPIOR14_REG          GPIOR1
#define GPIOR15_REG          GPIOR1
#define GPIOR16_REG          GPIOR1
#define GPIOR17_REG          GPIOR1

/* ICR1L */
#define ICR1L0_REG           ICR1L
#define ICR1L1_REG           ICR1L
#define ICR1L2_REG           ICR1L
#define ICR1L3_REG           ICR1L
#define ICR1L4_REG           ICR1L
#define ICR1L5_REG           ICR1L
#define ICR1L6_REG           ICR1L
#define ICR1L7_REG           ICR1L

/* UBRRH */
#define UBRR8_REG            UBRRH
#define UBRR9_REG            UBRRH
#define UBRR10_REG           UBRRH
#define UBRR11_REG           UBRRH

/* GPIOR2 */
#define GPIOR20_REG          GPIOR2
#define GPIOR21_REG          GPIOR2
#define GPIOR22_REG          GPIOR2
#define GPIOR23_REG          GPIOR2
#define GPIOR24_REG          GPIOR2
#define GPIOR25_REG          GPIOR2
#define GPIOR26_REG          GPIOR2
#define GPIOR27_REG          GPIOR2

/* UBRRL */
#define UBRR0_REG            UBRRL
#define UBRR1_REG            UBRRL
#define UBRR2_REG            UBRRL
#define UBRR3_REG            UBRRL
#define UBRR4_REG            UBRRL
#define UBRR5_REG            UBRRL
#define UBRR6_REG            UBRRL
#define UBRR7_REG            UBRRL

/* MCUSR */
#define PORF_REG             MCUSR
#define EXTRF_REG            MCUSR
#define BORF_REG             MCUSR
#define WDRF_REG             MCUSR

/* EECR */
#define EERE_REG             EECR
#define EEPE_REG             EECR
#define EEMPE_REG            EECR
#define EERIE_REG            EECR
#define EEPM0_REG            EECR
#define EEPM1_REG            EECR

/* PCMSK */
#define PCINT0_REG           PCMSK
#define PCINT1_REG           PCMSK
#define PCINT2_REG           PCMSK
#define PCINT3_REG           PCMSK
#define PCINT4_REG           PCMSK
#define PCINT5_REG           PCMSK
#define PCINT6_REG           PCMSK
#define PCINT7_REG           PCMSK

/* SPMCSR */
#define SPMEN_REG            SPMCSR
#define PGERS_REG            SPMCSR
#define PGWRT_REG            SPMCSR
#define RFLB_REG             SPMCSR
#define CTPB_REG             SPMCSR

/* OSCCAL */
#define CAL0_REG             OSCCAL
#define CAL1_REG             OSCCAL
#define CAL2_REG             OSCCAL
#define CAL3_REG             OSCCAL
#define CAL4_REG             OSCCAL
#define CAL5_REG             OSCCAL
#define CAL6_REG             OSCCAL

/* TCNT1L */
#define TCNT1L0_REG          TCNT1L
#define TCNT1L1_REG          TCNT1L
#define TCNT1L2_REG          TCNT1L
#define TCNT1L3_REG          TCNT1L
#define TCNT1L4_REG          TCNT1L
#define TCNT1L5_REG          TCNT1L
#define TCNT1L6_REG          TCNT1L
#define TCNT1L7_REG          TCNT1L

/* PORTB */
#define PORTB0_REG           PORTB
#define PORTB1_REG           PORTB
#define PORTB2_REG           PORTB
#define PORTB3_REG           PORTB
#define PORTB4_REG           PORTB
#define PORTB5_REG           PORTB
#define PORTB6_REG           PORTB
#define PORTB7_REG           PORTB

/* PORTD */
#define PORTD0_REG           PORTD
#define PORTD1_REG           PORTD
#define PORTD2_REG           PORTD
#define PORTD3_REG           PORTD
#define PORTD4_REG           PORTD
#define PORTD5_REG           PORTD
#define PORTD6_REG           PORTD

/* EEAR */
#define EEAR0_REG            EEAR
#define EEAR1_REG            EEAR
#define EEAR2_REG            EEAR
#define EEAR3_REG            EEAR
#define EEAR4_REG            EEAR
#define EEAR5_REG            EEAR
#define EEAR6_REG            EEAR

/* TCNT1H */
#define TCNT1H0_REG          TCNT1H
#define TCNT1H1_REG          TCNT1H
#define TCNT1H2_REG          TCNT1H
#define TCNT1H3_REG          TCNT1H
#define TCNT1H4_REG          TCNT1H
#define TCNT1H5_REG          TCNT1H
#define TCNT1H6_REG          TCNT1H
#define TCNT1H7_REG          TCNT1H

/* PORTA */
#define PORTA0_REG           PORTA
#define PORTA1_REG           PORTA
#define PORTA2_REG           PORTA

/* TCNT0 */
#define TCNT0_0_REG          TCNT0
#define TCNT0_1_REG          TCNT0
#define TCNT0_2_REG          TCNT0
#define TCNT0_3_REG          TCNT0
#define TCNT0_4_REG          TCNT0
#define TCNT0_5_REG          TCNT0
#define TCNT0_6_REG          TCNT0
#define TCNT0_7_REG          TCNT0

/* GPIOR0 */
#define GPIOR00_REG          GPIOR0
#define GPIOR01_REG          GPIOR0
#define GPIOR02_REG          GPIOR0
#define GPIOR03_REG          GPIOR0
#define GPIOR04_REG          GPIOR0
#define GPIOR05_REG          GPIOR0
#define GPIOR06_REG          GPIOR0
#define GPIOR07_REG          GPIOR0

/* TCCR0B */
#define CS00_REG             TCCR0B
#define CS01_REG             TCCR0B
#define CS02_REG             TCCR0B
#define WGM02_REG            TCCR0B
#define FOC0B_REG            TCCR0B
#define FOC0A_REG            TCCR0B

/* TIFR */
#define OCF0A_REG            TIFR
#define TOV0_REG             TIFR
#define OCF0B_REG            TIFR
#define ICF1_REG             TIFR
#define OCF1B_REG            TIFR
#define OCF1A_REG            TIFR
#define TOV1_REG             TIFR

/* TCCR1C */
#define FOC1B_REG            TCCR1C
#define FOC1A_REG            TCCR1C

/* TCCR0A */
#define WGM00_REG            TCCR0A
#define WGM01_REG            TCCR0A
#define COM0B0_REG           TCCR0A
#define COM0B1_REG           TCCR0A
#define COM0A0_REG           TCCR0A
#define COM0A1_REG           TCCR0A

/* UDR */
#define UDR0_REG             UDR
#define UDR1_REG             UDR
#define UDR2_REG             UDR
#define UDR3_REG             UDR
#define UDR4_REG             UDR
#define UDR5_REG             UDR
#define UDR6_REG             UDR
#define UDR7_REG             UDR

/* USICR */
#define USITC_REG            USICR
#define USICLK_REG           USICR
#define USICS0_REG           USICR
#define USICS1_REG           USICR
#define USIWM0_REG           USICR
#define USIWM1_REG           USICR
#define USIOIE_REG           USICR
#define USISIE_REG           USICR

/* PINB */
#define PINB0_REG            PINB
#define PINB1_REG            PINB
#define PINB2_REG            PINB
#define PINB3_REG            PINB
#define PINB4_REG            PINB
#define PINB5_REG            PINB
#define PINB6_REG            PINB
#define PINB7_REG            PINB

/* EIFR */
#define PCIF_REG             EIFR
#define INTF0_REG            EIFR
#define INTF1_REG            EIFR

/* MCUCR */
#define ISC00_REG            MCUCR
#define ISC01_REG            MCUCR
#define ISC10_REG            MCUCR
#define ISC11_REG            MCUCR
#define SM0_REG              MCUCR
#define SE_REG               MCUCR
#define SM1_REG              MCUCR
#define PUD_REG              MCUCR

/* OCR1AH */
/* #define OCR1AH0_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH1_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH2_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH3_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH4_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH5_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH6_REG          OCR1AH */ /* dup in OCR1BH */
/* #define OCR1AH7_REG          OCR1AH */ /* dup in OCR1BH */

/* OCR1AL */
/* #define OCR1AL0_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL1_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL2_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL3_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL4_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL5_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL6_REG          OCR1AL */ /* dup in OCR1BL */
/* #define OCR1AL7_REG          OCR1AL */ /* dup in OCR1BL */

/* ACSR */
#define ACIS0_REG            ACSR
#define ACIS1_REG            ACSR
#define ACIC_REG             ACSR
#define ACIE_REG             ACSR
#define ACI_REG              ACSR
#define ACO_REG              ACSR
#define ACBG_REG             ACSR
#define ACD_REG              ACSR

/* PINA */
#define PINA0_REG            PINA
#define PINA1_REG            PINA
#define PINA2_REG            PINA

/* USIDR */
#define USIDR0_REG           USIDR
#define USIDR1_REG           USIDR
#define USIDR2_REG           USIDR
#define USIDR3_REG           USIDR
#define USIDR4_REG           USIDR
#define USIDR5_REG           USIDR
#define USIDR6_REG           USIDR
#define USIDR7_REG           USIDR

/* pins mapping */
#define AIN0_PORT PORTB
#define AIN0_BIT 0

#define AIN1_PORT PORTB
#define AIN1_BIT 1

#define OC0A_PORT PORTB
#define OC0A_BIT 2

#define OC1A_PORT PORTB
#define OC1A_BIT 3

#define OC1B_PORT PORTB
#define OC1B_BIT 4

#define MOSI_PORT PORTB
#define MOSI_BIT 5
#define DI_PORT PORTB
#define DI_BIT 5

#define MISO_PORT PORTB
#define MISO_BIT 6
#define DO_PORT PORTB
#define DO_BIT 6

#define SCK_PORT PORTB
#define SCK_BIT 7
#define SCL_PORT PORTB
#define SCL_BIT 7

#define RXD_PORT PORTD
#define RXD_BIT 0

#define TXD_PORT PORTD
#define TXD_BIT 1

#define INT0_PORT PORTD
#define INT0_BIT 2
#define XCK_PORT PORTD
#define XCK_BIT 2
#define CKOUT_PORT PORTD
#define CKOUT_BIT 2

#define INT1_PORT PORTD
#define INT1_BIT 3

#define T0_PORT PORTD
#define T0_BIT 4

#define T1_PORT PORTD
#define T1_BIT 5
#define OC0B_PORT PORTD
#define OC0B_BIT 5

#define ICP_PORT PORTD
#define ICP_BIT 6



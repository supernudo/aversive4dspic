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
 *  Revision : $Id: encoders_microb.c,v 1.6.4.3 2008-01-09 22:27:19 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Bali�as Santos <javier@arc-robots.org>
 *
 *  Code ported to families of microcontrollers dsPIC, with quadrature encoder HW module,
 *  from encoders_microb.c,v 1.6.4.3 2008/01/09 22:27:19 zer0 Exp.
 *
 */

#ifndef HOST_VERSION

#include <stdlib.h>

#include <aversive.h>
#include <aversive/wait.h>

#include <encoders_dspic.h>
#include <encoders_dspic_config.h>


/******************************************/
#if defined(__dsPIC33F__)
int32_t g_encoders_dspic_values[ENCODERS_DSPIC_NUMBER];
int16_t g_encoders_dspic_previous[ENCODERS_DSPIC_NUMBER];
#elif defined(__dsPIC33E__)
int32_t g_encoders_dspic_values[ENCODERS_DSPIC_NUMBER];
int32_t g_encoders_dspic_previous[ENCODERS_DSPIC_NUMBER];
#else
#error Quadrature encoder not supported by MCU part No.
#endif

/******************************************/

#if defined(__dsPIC33F__)
#define READ(n)                                \
do {                                           \
val = POS##n##CNT;                             \
res = (val - g_encoders_dspic_previous[n-1]);  \
                                               \
g_encoders_dspic_previous[n-1] = val;          \
                                               \
g_encoders_dspic_values[n-1] += (int32_t)res ; \
} while(0)

#elif defined(__dsPIC33E__)
#define READ(n)                                \
do {                                           \
val = POS##n##CNTL;                            \
val <<= 16;                                    \
val |= POS##n##HLD;                		         \
                                               \
res = (val - g_encoders_dspic_previous[n-1]);  \
g_encoders_dspic_previous[n-1] = val;          \
                                               \
g_encoders_dspic_values[n-1] += (int32_t)res ; \
} while(0)
#endif

/******************************************/

#define INIT(n) 						\
do {										\
g_encoders_dspic_values[n-1] = 0;  \
} while(0)

/******************************************/


/**
 * Initialisation of encoders, variables
 */
void encoders_dspic_init(void)
{
  uint8_t flags;
#if defined(__dsPIC33F__)
#ifdef ENCODERS_DSPIC1_ENABLED
	POS1CNT=0;
	MAX1CNT = 0xFFFF;

	QEI1CONbits.QEIM = 0b111; 	// Enabled (x4 mode) with position counter reset by match (MAXxCNT)

	DFLT1CONbits.QEOUT = 1; 		// Digital filter outputs enabled on QEAx/QEBx/INDXx pins
	DFLT1CONbits.QECK = 0;  		// 1:1 Clock divide for QEAx/QEBx/INDXx
#endif

#ifdef ENCODERS_DSPIC2_ENABLED
	POS2CNT=0;
	MAX2CNT = 0xFFFF;

	QEI2CONbits.QEIM = 0b111; 	// Enabled (x4 mode) with position counter reset by match (MAXxCNT)

	DFLT2CONbits.QEOUT = 1; 		// Digital filter outputs enabled on QEAx/QEBx/INDXx pins
	DFLT2CONbits.QECK = 0;  		// 1:1 Clock divide for QEAx/QEBx/INDXx
#endif

#elif defined(__dsPIC33E__)
#ifdef ENCODERS_DSPIC1_ENABLED
  POS1HLD = 0;
  POS1CNTL = 0;

	QEI1CONbits.CCM = 0; 	      // Enabled (x4 mode) with position counter reset by match (MAXxCNT)

	QEI1IOCbits.FLTREN = 1; 		// Digital filter outputs enabled on QEAx/QEBx/INDXx pins
	QEI1IOCbits.QFDIV = 0;  		// 1:1 Clock divide for QEAx/QEBx/INDXx
#endif

#ifdef ENCODERS_DSPIC2_ENABLED
  POS2HLD = 0;
  POS2CNTL = 0;

	QEI2CONbits.CCM = 0; 	      // Enabled (x4 mode) with position counter reset by match (MAXxCNT)

	QEI2IOCbits.FLTREN = 1; 		// Digital filter outputs enabled on QEAx/QEBx/INDXx pins
	QEI2IOCbits.QFDIV = 0;  		// 1:1 Clock divide for QEAx/QEBx/INDXx
#endif
#endif
  encoders_dspic_manage(NULL);

  IRQ_LOCK(flags);
#ifdef ENCODERS_DSPIC1_ENABLED
  INIT(1);
#endif

#ifdef ENCODERS_DSPIC2_ENABLED
  INIT(2);
#endif
  IRQ_UNLOCK(flags);

}


/**
 * Update encoders values, need to be done quite often
 * (Fmax_encoders/64). Encoders 1 and 2 are read.
 *
 * \param dummy : a (void *) pointer that is not used. It is here according
 *                to the encoders interface.
 */
void encoders_dspic_manage(void * dummy)
{
  uint8_t flags;
#if defined(__dsPIC33F__)
  int16_t val, res;
#elif defined(__dsPIC33E__)
  int32_t val, res;
#endif

  IRQ_LOCK(flags);

#ifdef ENCODERS_DSPIC1_ENABLED
  READ(1);
#endif

#ifdef ENCODERS_DSPIC2_ENABLED
  READ(2);
#endif

  IRQ_UNLOCK(flags);
}



/** Extract encoder value.
 *
 * \param number : a (void *) that is casted in (int) containing the number
 *                 of the encoder to be read.
 */
int32_t encoders_dspic_get_value(void * number)
{
  int32_t value;
  uint8_t flags;

  number--;

  IRQ_LOCK(flags);
  value = g_encoders_dspic_values[(int)number];
  IRQ_UNLOCK(flags);

  return value;
}

/** Set an encoder value
 *
 * \param number : a (void *) that is casted in (int) containing the number
 *                 of the encoder to be read.
 * \param v      : the value
 */
void encoders_dspic_set_value(void * number, int32_t v)
{
  uint8_t flags;

	number--;

  IRQ_LOCK(flags);
  g_encoders_dspic_values[(int)number] = v;
  IRQ_UNLOCK(flags);
}

#endif

/*
 *  Copyright Robotics Association of Coslada, Eurobotics Engineering (2010)
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
 *  Revision : $Id$
 *
 *  Javier Baliñas Santos <javier@arc-robots.org>
 */

#ifndef HOST_VERSION

#include <oscillator.h>


/**
 *	Initialize the oscillator
 */
void oscillator_init(void)
{

  /* FOSC clock signal and main PLL */
	#if defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24H__)
	// Configure PLL prescaler, PLL postscaler, PLL divisor
	PLLFBD = (int)M-2;
	CLKDIVbits.PLLPOST = N1-2;
	CLKDIVbits.PLLPRE = (N2/2)-1;

	// Tune FRC oscillator, if FRC is used
	//OSCTUN=0;

	// Initiate Clock Switch to Primary Oscillator with PLL (NOSC = 0b011)
	__builtin_write_OSCCONH(0x03);
	__builtin_write_OSCCONL(0x01);

	// Wait for Clock switch to occur
	while (OSCCONbits.COSC != 0b011);

	// Wait for PLL to lock
	while(OSCCONbits.LOCK!=1) {};

	#endif /* defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24H__)  */

  /* FAVCO clock signal and auxiliary PLL */
  #if defined(__dsPIC33E__)
    #if defined(__dsPIC33EP256MU806__) || defined(__dsPIC33EP256MU810__) ||\
        defined(__dsPIC33EP256MU814__) || defined(__dsPIC33EP512MU810__) ||\
        defined(__dsPIC33EP512MU814__)


    /* Frecuency input */
    #ifdef FAIN_POSCCLK
    _SELACLK = 1;
    _ASRCSEL = 1;
    #else
    #error -- Not yet supported
    #endif

    /* APLL prescaler and multiplier */
    _APLLPRE = AN1-1;
    #if AM == 24
    _APLLDIV = 7;
    #elif (AM < 22) && (AM > 14)
    _APLLDIV = 6 - (21-AM);
    #else
    #error -- AM not match
    #endif

    /* APLL postscaler */
    #if   (AN2 == 1  )
      _APLLPOST = 7;
    #elif (AN2 == 2  )
      _APLLPOST = 6;
    #elif (AN2 == 4  )
      _APLLPOST = 5;
    #elif (AN2 == 8  )
      _APLLPOST = 4;
    #elif (AN2 == 16 )
      _APLLPOST = 3;
    #elif (AN2 == 32 )
      _APLLPOST = 2;
    #elif (AN2 == 64 )
      _APLLPOST = 1;
    #elif (AN2 == 256)
      _APLLPOST = 0;
    #else
      #error -- AN2 value not valid
    #endif

    /* Enable APLL and wait locking */
    ACLKCON3bits.ENAPLL = 1;
    while(ACLKCON3bits.APLLCK != 1);

    #endif /* __dsPIC33EP256MU806__ parts */

  #elif defined(__PIC24E__)
    #error -- Not yet supported
  #endif
}

#endif /* !HOST_VERSION */

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

#ifndef _OSCILLATOR_H_
#define _OSCILLATOR_H_

#include <aversive.h>
#include <oscillator_config.h>

#if defined(__PIC24F__) && defined(PLLX4)
#define FOSC 	((unsigned long)(CONFIG_QUARTZ*4))
#define FCY		(FOSC/2)
#define F_CPU (FOSC/2)
#endif

/* FOSC clock signal and main PLL */
#if defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24H__)

  // Configure Oscillator
  // Fosc= Fin*(M/(N1*N2)), Fcy=Fosc/2

  // Example for crystal (Fin) of 10MHz and Fcy = 40Mips:
  // Fosc= 10M*32/(2*2)=80Mhz for 10M input clock

  #if defined(__dsPIC33F__)
    #define FOSC_MAX 80000000L
    #define FREF_MAX 8000000L
    #define FREF_MIN 800000L
  #elif defined(__dsPIC33E__)
    #define FOSC_MAX 120000000L
    #define FREF_MAX 8000000L
    #define FREF_MIN 800000L
  #elif defined(__PIC24H__)
    #define FOSC_MAX 80000000L
    #define FREF_MAX 8000000L
    #define FREF_MIN 800000L
  #endif


  #define FIN    CONFIG_QUARTZ
  #define FOSC   (FCY*2)

  #if (FOSC > FOSC_MAX)
  #error FOSC exceeds the frequency range
  #endif

  #define N1  2
  #define N2  2
  #define M   ((FOSC*N1*N2)/FIN)

  #define FREF  (FIN/N1)
  #if ((FREF < FREF_MIN) || (FREF > FREF_MAX))
  #error FREF exceeds the frequency range
  #endif

  // BUG: i don't know why this not works !!
  #define FVCO (FIN*(M/N1))
  //#if ((FVCO < 100000000) || (FVCO > 200000000))
  //#error FVCO exceeds the frequency range
  //#endif

#endif /* defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24H__) */


/* FACLK clock signal and auxiliary PLL */
#if defined(__dsPIC33E__)
  #if defined(__dsPIC33EP256MU806__) || defined(__dsPIC33EP256MU810__) ||\
      defined(__dsPIC33EP256MU814__) || defined(__dsPIC33EP512MU810__) ||\
      defined(__dsPIC33EP512MU814__)

    /* FAVCO clk signal

      FAVCO is calculate as:
      FAVCO = FAIN x (AM/AN1) = FAIN x (APLLDIV/APLLPRE)
      FACLK = FAVCO / AN2 = FAVCO / APLLPOST
    */

    /* Frecuency input */
    #ifdef FAIN_POSCCLK
    #define FAIN FIN
    #else
    #error FAIN clock config not supported
    #endif

    /* PLL scalers */
    #define AN1 2
    #define AN2 2
    #define AM  ((FACLK * AN1 * AN2) / FAIN)

    /* FAREF assert */
    #define FAREF  (FAIN/AN1)
    #if ((FREF < 3000000L) || (FREF > 5500000L))
    #error FAREF exceeds the frequency range
    #endif

    /* TODO: FAVCO assert */
    #define FAVCO (FIN * (AM / AN1))
    //#if ((FAVCO < 60000000) || (FVCO > 200000000))
    //#error FAVCO exceeds the frequency range
    //#endif

  #endif /* __dsPIC33EP256MU806__ parts */

#elif defined(__PIC24E__)
  #error -- Not yet supported
#endif

/**
 *	Initialize the oscillator
 */
void oscillator_init(void);

#endif /* OSCILLATOR_H */
#endif /* !HOST_VERSION */

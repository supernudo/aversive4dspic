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


#if defined(__dsPIC33F__) || defined(__PIC24H__)

// Configure Oscillator
// Fosc= Fin*(M/(N1*N2)), Fcy=Fosc/2

// Example for crystal (Fin) of 10MHz and Fcy = 40Mips:
// Fosc= 10M*32/(2*2)=80Mhz for 10M input clock

#define FIN    CONFIG_QUARTZ
#define FOSC   (FCY*2)

#if (FOSC > 80000000)
#error FOSC exceeds the frequency range
#endif

#define N1  2
#define N2  2
#define M   ((FOSC*N1*N2)/FIN)

#define FREF  (FIN/N1)
#if ((FREF < 800000) || (FREF > 8000000))
#error FREF exceeds the frequency range
#endif

// BUG: i don't know why this not works !!
#define FVCO (FIN*(M/N1))
//#if ((FVCO < 100000000) || (FVCO > 200000000))
//#error FVCO exceeds the frequency range
//#endif

#endif /* defined(__dsPIC33F__) || defined(__PIC24H__) */

/**
 *	Initialize the oscillator
 */
void oscillator_init(void);

#endif /* OSCILLATOR_H */
#endif /* !HOST_VERSION */


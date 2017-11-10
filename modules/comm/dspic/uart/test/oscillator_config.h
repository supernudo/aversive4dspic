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


#ifndef _OSCILLATOR_CONFIG_H_
#define _OSCILLATOR_CONFIG_H_


/* *******************************  PIC24F  ***********************************/
/* PLL x4 configuration */
//#define PLLX4 1

/* *************************  dsPIC33E & PIC24E  ******************************/

/* Auxxilary frecuency clock (USB) */
#define FAIN_POSCCLK
#define FACLK 48000000L

#endif

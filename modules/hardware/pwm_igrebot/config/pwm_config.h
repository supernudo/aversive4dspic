/*  
 *  Copyright I-Grebot (2009)
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
 *  Revision : $Id: $
 *
 */

/** \file pwm_config.h
    \brief Module to operate all PWM outputs
*/

#ifndef _PWM_CONFIG_
#define _PWM_CONFIG_

#define MOT_DIR_G	LATAbits.LATA2
#define TRIS_MOT_DIR_G	TRISAbits.TRISA2

#define MOT_DIR_D	LATBbits.LATB11
#define TRIS_MOT_DIR_D	TRISBbits.TRISB11


/* Left motor is PWM1H1 */
#define MOT_PWM_G	P1DC1
#define TRIS_MOT_PWM_G	TRISBbits.TRISB14
#define MOT_G_FORWARD 1


/* Right motor is PWM1H2 */
#define MOT_PWM_D	P1DC2
#define TRIS_MOT_PWM_D	TRISBbits.TRISB12
#define MOT_D_FORWARD 0


#define MOT_G_BACKWARDS (1 - MOT_G_FORWARD)
#define MOT_D_BACKWARDS (1 - MOT_D_FORWARD)

#endif


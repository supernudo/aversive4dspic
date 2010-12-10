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
 *  Revision : $Id: encoders_microb.h,v 1.4.4.1 2006/11/26 21:06:04 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Code ported to families of microcontrollers dsPIC, with quadrature encoder HW module,
 *  from encoders_microb.h,v 1.4.4.1 2006/11/26 21:06:04 zer0 Exp
 *
 */

#ifndef _ENCODERS_DSPIC_H_
#define _ENCODERS_DSPIC_H_

/** 
 * Initialisation of encoders, variables
 */
void encoders_dspic_init(void);

/** 
 * Update encoders values, need to be done quite often
 * (Fmax_encoders/64). Encoders 1 and 2 are read. 
 * 
 * \param dummy : a (void *) pointer that is not used. It is here according
 *                to the encoders interface.
 */
void encoders_dspic_manage(void * dummy);

/** Extract encoder value.
 *
 * \param data : a (void *) that is casted in (uint8_t) containing the number
 *               of the encoder to be read.
 */
int32_t encoders_dspic_get_value(void * data);

/** Set an encoder value
 *
 * \param data : a (void *) that is casted in (uint8_t) containing the number
 *               of the encoder to be read.
 * \param v    : the value
 */
void encoders_dspic_set_value(void * data, int32_t c);

#endif


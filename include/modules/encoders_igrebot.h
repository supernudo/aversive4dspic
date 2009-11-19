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
 *  Revision : $Id: encoders_microb.h,v 1.4 2006-11-03 09:05:12 zer0 Exp $
 *
 */

#ifndef _ENCODERS_IGREBOT_H_
#define _ENCODERS_IGREBOT_H_

/** 
 * Initialisation of encoders, variables
 */
void encoders_igrebot_init(void);



/** Extract encoder value.
 *
 * \param data : a (void *) that is casted in (uint8_t) containing the number
 *               of the encoder to be read.
 */
int32_t encoders_igrebot_get_value(void * data);

/** Set an encoder value
 *
 * \param data : a (void *) that is casted in (uint8_t) containing the number
 *               of the encoder to be read.
 * \param v    : the value
 */
void encoders_igrebot_set_value(void * data, int32_t c);

#endif

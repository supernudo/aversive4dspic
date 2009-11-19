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
 *  Revision : $Id: pwm.h,v 1.12 2008-04-13 16:55:31 zer0 Exp $
 *
 */

/* Droids-corp, Eirbot, Microb Technology 2005 - Zer0
 * Implementation for PWM
 */
/** \file pwm.h
 *  \brief Interface for the PWM module.
 *
 *  \todo Test the module.
 *
 *  \test No tests for the moment.
 *
 * This module provides functions for using a pwm 
 */

#ifndef _PWM_IGREBOT_H_
#define _PWM_IGREBOT_H_

#include <aversive.h>

#include <pwm_config.h>

/** global functions*/
extern void pwm_igrebot_init(void);

/** apply a PWM.
 * \param data is a pointer that is casted in (uint8_t) to
 *        specify the number of the PWM.
 * \param value is the value of the pwm.
 */
extern void pwm_igrebot_set(void * data, int32_t value); 

extern int32_t pwm_igrebot_get(void * data);

#endif // _PWM_IGREBOT_H_

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

#ifndef _PWM_SERVO_H_
#define _PWM_SERVO_H_

#include <aversive.h>

struct pwm_servo{
	uint16_t num;
	uint16_t th_min;
	uint16_t th_max;
	uint16_t range;
};

void pwm_servo_init(struct pwm_servo * pwm, uint16_t num, uint16_t th_min, uint16_t th_max);
void pwm_servo_enable();
void pwm_servo_disable();
uint16_t pwm_servo_set(struct pwm_servo *pwm, uint16_t value);

#endif

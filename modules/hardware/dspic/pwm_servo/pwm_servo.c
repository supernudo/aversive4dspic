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


#include <stdlib.h>

#include <aversive.h>
#include <aversive/wait.h>

#if defined(__dsPIC30F__)
#include <p30fxxxx.h>
#elif defined(__dsPIC33F__)
#include <p33Fxxxx.h>
#elif defined(__PIC24H__)
#include <p24Hxxxx.h>
#endif 

#include <pwm_servo.h>
#include <pwm_servo_config.h>

#define TIMER_DIV							64
#define TIMER_DIV_VAL_CONFIG 	2
#define TIMER_FREQ						(FCY/TIMER_DIV)


#define OUTPUT_COMPARE_CONFIG(num)						\
do{																						\
	OC##num##CON = 0x0000;											\
	OC##num##CON |= (uint16_t)(TIMER_SOURCE-2);	\
	OC##num##R 	 = 0x0000;											\
	OC##num##RS  = (uint16_t)(pwm->th_min+(uint16_t)((pwm->th_max-pwm->th_min)/2)); \
	OC##num##CON |= 0x0005;											\
}while(0)	

#define TIMER_CONFIG(num)											\
do{																						\
	PR##num = (uint16_t)(TIMER_FREQ/PWM_FREQ);	\
	T##num##CON = (uint16_t)(TIMER_DIV_VAL_CONFIG<<4);		\
}while(0)

#define OUTPUT_COMPARE_SET(num,value)	\
do{																		\
	OC##num##RS = value;								\
}while(0)

void pwm_servo_init(struct pwm_servo *pwm, uint16_t num, uint16_t th_min_us, uint16_t th_max_us)
{
	/* fill structure */
	pwm->num = num;
	pwm->th_min = (th_min_us*TIMER_FREQ)/1000000;
	pwm->th_max = (th_max_us*TIMER_FREQ)/1000000;
	pwm->range = pwm->th_max-pwm->th_min;
	
	/* configure output compare */
	// XXX tested on dspic33fj128mc804 target	
	if(num == 1)
		OUTPUT_COMPARE_CONFIG(1);
	else if(num == 2)
		OUTPUT_COMPARE_CONFIG(2);
	else if(num == 3)
		OUTPUT_COMPARE_CONFIG(3);
	else if(num == 4)
		OUTPUT_COMPARE_CONFIG(4);

	/* configure timer */
#if TIMER_SOURCE == 2
	TIMER_CONFIG(2);
#elif TIMER_SOURCE == 3
	TIMER_CONFIG(3);
#else
#error "Invalid timer source"
#endif
	
}

void pwm_servo_enable()
{
#if TIMER_SOURCE == 2
	T2CON |= 0x8000;
#elif TIMER_SOURCE == 3
	T3CON |= 0x8000;
#else
#error "Invalid timer source"
#endif	
}

void pwm_servo_disable()
{
#if TIMER_SOURCE == 2
	T2CON &= 0x3FFF;
#elif TIMER_SOURCE == 3
	T3CON &= 0x3FFF;
#else
#error "Invalid timer source"
#endif	
}

void pwm_servo_set(struct pwm_servo *pwm, uint16_t value)
{
	/* add th min */
	value += pwm->th_min;
	
	/* saturate th */
	if(value > pwm->th_max)
		value = pwm->th_max;
	
	/* set value */
	if(pwm->num == 1)
		OUTPUT_COMPARE_SET(1, value);
	else if(pwm->num == 2)
		OUTPUT_COMPARE_SET(2, value);
	else if(pwm->num == 3)
		OUTPUT_COMPARE_SET(3, value);
	else if(pwm->num == 4)
		OUTPUT_COMPARE_SET(4, value);
		
}


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
 *  Revision : $Id: pwm.c,v 1.13 2008-04-13 16:55:31 zer0 Exp $
 *
 */

/* Droids-corp, Eirbot, Microb Technology 2005 - Zer0
 * Implementation for PWM
 */
/** \file pwm.c
 *  \brief Implementation for the PWM module.
 *
 *  \todo Test the module.
 *
 *  \test The modul fonctions and had been tested by Lamygalle.
 *
 * This module provides functions for using a pwm 
 */

#include <aversive.h>
#include <stdio.h>

#include "pwm.h"

#include <aversive/parts.h>
#include <pwm_config.h>

/***********************************************************/

/* PWM freq: (HZ) */
#define FPWM 500
#define PRESC 16

#define PERIOD ((FCY / (FPWM * PRESC)) - 1)

/* Maximum duty cycle :
 * 100% duty cycle is when PxDCy is PxTPER x2
 * since bit 0 is compared with the prescaler.
 * This information is well hidden on figure 14-16
 * page 14-33 of the PWM module datasheet.
 */
#define MAX_DUTY_PERCENT 100
#define MAX_DUTY (2L * PERIOD * MAX_DUTY_PERCENT / 100)

// global init
void pwm_igrebot_init(void)
{
	P1TCONbits.PTMOD=0;//free running mode !
	P1TCONbits.PTOPS=0;//postscaler 1:1
	P1TCONbits.PTCKPS=2;//prescaler 1:16

	P1TPER = PERIOD;
	
	PWM1CON1=0b0000001100110000; //output PWM1H et 2H

	/* Configure tristates as outputs */
	TRIS_MOT_DIR_G = 0;
	TRIS_MOT_DIR_D = 0;
	TRIS_MOT_PWM_G = 0;
	TRIS_MOT_PWM_D = 0;

	MOT_DIR_D = 1;
	MOT_DIR_G = 1;

	P1TCONbits.PTEN=1; //time base Enable
}
/***********************************************************/


/***********************************************************/

/* global SET FUNCTION : we use a (void *) to be compliant with
 * control_system functions. For instance pwm_set((void *)(PWM1B_NUM), x) 
 * is equivalent to pwm_set_1B(x) */
void pwm_igrebot_set(void * data, int32_t value)
{
	uint8_t num = (uint8_t)(int)data;
	S_MAX(value, MAX_DUTY);
	
	if (num == 1) {
		/* Left motor */
		if (value > 0) {
			MOT_DIR_G = MOT_G_FORWARD;
		} else {	
			value = -value; 
			MOT_DIR_G = MOT_G_BACKWARDS;
		}
		MOT_PWM_G = (unsigned int) value;
	} else {
		/* Right motor */
		if (value > 0) {
			MOT_DIR_D = MOT_D_FORWARD;
		} else {	
			value = -value; 
			MOT_DIR_D = MOT_D_BACKWARDS;
		}		
		MOT_PWM_D = (unsigned int) value;	
	}	 
}


int32_t pwm_igrebot_get( void* data)
{
	uint8_t num = (uint8_t)(int)data;
	int32_t value;	

	if (num == 1) {
		/* Left */
		value = MOT_PWM_G;
		if(MOT_DIR_G == MOT_G_BACKWARDS)
			value = -value; 
	} else {
		/* Right */
		value = MOT_PWM_D;
		if(MOT_DIR_D == MOT_D_BACKWARDS)
			value = -value; 
	}	 
	return value;	
}



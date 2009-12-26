
/*  
 *  Copyright EuRobotics Ingeneering (2010)
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
 *  Copyright EuRobotics Ingeneering (2010) 
 *  Javier Bali�as Santos <balinas@gmail.com>
 * 
 *  Based on pwm_ng aversive module:
 *
 *  Copyright Droids Corporation (2009) - Olivier MATZ -
 *  Copyright Microb Technology, Eirbot (2005)
 *
 *  Revision : $Id$
 *
 */

#ifndef _PWM_MC_H_
#define _PWM_MC_H_

#include <aversive.h>
#include <parts.h>

#include <pwm.h>
#include <pwm12.h>

/*
 * The pwm mode is defined be the following flags:
 *
 * PWM_MC_MODE_NORMAL            : normal pwm, just to put a value if 
 *                                 nothing else is needed.
 * PWM_MC_MODE_SIGNED            : activate the sign output on another port
 * PWM_MC_MODE_SIGN_INVERTED     : invert sign output
 */
#define PWM_MC_MODE_NORMAL          0x00 
#define PWM_MC_MODE_SIGN_INVERTED   0x01
#define PWM_MC_MODE_SIGNED          0x02

/* 
 * PWM pins configuration 
 */
#if defined(_PWMIF)
#define MOD3_COMP PWM_MOD3_COMP	/*3th channel in complimentary mode*/
#define MOD3_IND PWM_MOD3_IND    /*3th channel in independant mode*/
#define PEN3H  PWM_PEN3H         /*H of channel 3 works as PWM*/
#define PEN2H  PWM_PEN2H         /*H of channel 2 works as PWM*/
#define PEN1H  PWM_PEN1H         /*H of channel 1 works as PWM*/
#define PEN2L  PWM_PEN2L         /*L of channel 2 works as PWM*/
#define PEN1L  PWM_PEN1L         /*L of channel 1 works as PWM*/

#elif defined(_FLTA1IF)
#define MOD3_COMP PWM1_MOD3_COMP	 /*3th channel in complimentary mode*/
#define MOD3_IND PWM1_MOD3_IND    /*3th channel in independant mode*/
#define PEN3H  PWM1_PEN3H         /*H of channel 3 works as PWM*/
#define PEN2H  PWM1_PEN2H         /*H of channel 2 works as PWM*/
#define PEN1H  PWM1_PEN1H         /*H of channel 1 works as PWM*/
#define PEN2L  PWM1_PEN2L         /*L of channel 2 works as PWM*/
#define PEN1L  PWM1_PEN1L         /*L of channel 1 works as PWM*/
#else
#error "This target don't have MCPWM"
#endif

/* PWM motor control struct */
struct pwm_mc {
	uint8_t mode:4,
		module_num:1, 		/* DCMCPWM module up to 2 (value range 1 to 2) */
		channel_num:2, 	/* Up to 3 for module 1 */
					 			/* Up to 1 for module 2 */
		reserved:1;
		
	volatile uint16_t *sign_port;
	volatile uint16_t *sign_port_n;
	uint8_t sign_bit;
	uint8_t sign_bit_n;
};

/**
 * Inititialize a PWM channel.
 *	/param pwm_mc is the struct where is stored the channel config.
 *	/param pwm_mode define the funcionality mode (PWM_MC_MODE_XXX). 
 *	/param pwm_module_num is the DCMCPWM module, up to 2 (range 1 to 2).
 *	/param pwm_channel_num is the channel of the module(Up to 3 for module 1, 1 for module 2).
 * /param sign_port is the port where is mapped the sing pin.
 * /param sign_bit is the bit number of the sing pin into the sing_port.
 * /param sign_port_n is the port where is mapped the negate sing pin.
 * /param sign_bit_n is the bit number of the negate sing pin into the sing_port_n.
 */
void pwm_mc_channel_init(struct pwm_mc *pwm, uint8_t pwm_mode,
		 uint8_t pwm_module_num, uint8_t pwm_channel_num,
		 volatile uint16_t *sign_port, uint8_t sign_bit,
		 volatile uint16_t *sign_port_n, uint8_t sign_bit_n);
		 

/**
 * Inititialize PWMs generation.
 * /param num is the DCMCPWM module (1 or 2).
 * /param f_pwm is the PWM frequency in Hz. 
 * NOTE:
 *	 - The resolution of PWM is: log2(2*FCY/f_pwm)
 *	 - The PWM value max is: 2*((FCY / (f_pwm * 1))-1)
 * /param pwm_pins_config is the configuration for the pins of PWM channels.
 * 	example 1. Generation of PWM by channel 1 in complementary mode (implies channel L and H are enable):
 * 				  pwm_pins_config = MOD1_COMP & PEN1H & PEN1L;
 * 	example 2. Generation of PWM by channel 1 in independs mode (implies only channel H is enable):
 * 				  pwm_pins_config = MOD1_IND & PEN1H & PDIS1L;
 */
void pwm_mc_init(uint8_t num, uint16_t f_pwm, uint16_t pwm_pins_config);

/** Apply a PWM.
 * \param pwm is a pointer to the struct pwm.
 * \param value is the value of the pwm. The value is between 0 and 
 * 2*((FCY / (f_pwm * 1))-1)(value MAX) for a non-signed pwm or -MAX and MAX for a signed one.
 */
void pwm_mc_set(void *pwm, int32_t value); 

#endif // _PWM_MC_H_
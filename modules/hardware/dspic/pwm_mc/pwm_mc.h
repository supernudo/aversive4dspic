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
 *  Copyright Droids-corporation - Olivier MATZ - 2009
 *
 *  Revision : $Id$
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Code ported to families of microcontrollers dsPIC, with DAC module,
 *  from pwm_ng.h made by Olivier MATZ.
 *
 */

#ifndef _PWM_MC_H_
#define _PWM_MC_H_

#include <aversive.h>

#ifndef HOST_VERSION
#include <parts.h>

#include <pwm12.h>
#include <pwm.h>


/*
 * The pwm mode is defined be the following flags:
 *
 * PWM_MC_MODE_NORMAL            : normal pwm, just to put a value if 
 *                                 nothing else is needed.
 * PWM_MC_MODE_SIGNED            : activate the sign output on another port
 * PWM_MC_MODE_SIGN_INVERTED     : invert sign output
 */
#define PWM_MC_MODE_NORMAL          	0x01 
#define PWM_MC_MODE_REVERSE          	0x02 
#define PWM_MC_MODE_SIGN_INVERTED   	0x04
#define PWM_MC_MODE_SIGNED          	0x08
#define PWM_MC_MODE_BIPOLAR				0x16

/* 
 * PWM pins configuration 
 */
#if defined(_PWMIF)
#define CH3_COMP PWM_MOD3_COMP	 /*3th channel in complimentary mode*/
#define CH2_COMP PWM_MOD2_COMP  /*2th channel in complimentary mode*/
#define CH1_COMP PWM_MOD1_COMP  /*1th channel in complimentary mode*/

#define CH3_IND PWM_MOD3_IND    /*3th channel in independant mode*/
#define CH2_IND PWM_MOD2_IND    /*2th channel in independant mode*/
#define CH1_IND PWM_MOD1_IND    /*1th channel in independant mode*/

#define PEN3H  PWM_PEN3H         /*H of channel 3 works as PWM*/
#define PDIS3H PWM_PDIS3H        /*H of channel 3 works as IO*/

#define PEN2H  PWM_PEN2H         /*H of channel 2 works as PWM*/
#define PDIS2H PWM_PDIS2H        /*H of channel 2 works as IO*/

#define PEN1H  PWM_PEN1H         /*H of channel 1 works as PWM*/
#define PDIS1H PWM_PDIS1H        /*H of channel 1 works as IO*/

#define PEN3L  PWM_PEN3L         /*L of channel 3 works as PWM*/
#define PDIS3L PWM_PDIS3L        /*L of channel 3 works as IO*/

#define PEN2L  PWM_PEN2L         /*L of channel 2 works as PWM*/
#define PDIS2L PWM_PDIS2L        /*L of channel 2 works as IO*/

#define PEN1L  PWM_PEN1L         /*L of channel 1 works as PWM*/
#define PDIS1L PWM_PDIS1L        /*L of channel 1 works as IO*/

#elif defined(_FLTA1IF)
#define CH3_COMP PWM1_MOD3_COMP	/*3th channel in complimentary mode*/
#define CH2_COMP PWM1_MOD2_COMP  /*2th channel in complimentary mode*/
#define CH1_COMP PWM1_MOD1_COMP  /*1th channel in complimentary mode*/

#define CH3_IND PWM1_MOD3_IND    /*3th channel in independant mode*/
#define CH2_IND PWM1_MOD2_IND    /*2th channel in independant mode*/
#define CH1_IND PWM1_MOD1_IND    /*1th channel in independant mode*/

#define PEN3H  PWM1_PEN3H         /*H of channel 3 works as PWM*/
#define PDIS3H PWM1_PDIS3H        /*H of channel 3 works as IO*/

#define PEN2H  PWM1_PEN2H         /*H of channel 2 works as PWM*/
#define PDIS2H PWM1_PDIS2H        /*H of channel 2 works as IO*/

#define PEN1H  PWM1_PEN1H         /*H of channel 1 works as PWM*/
#define PDIS1H PWM1_PDIS1H        /*H of channel 1 works as IO*/

#define PEN3L  PWM1_PEN3L         /*L of channel 3 works as PWM*/
#define PDIS3L PWM1_PDIS3L        /*L of channel 3 works as IO*/

#define PEN2L  PWM1_PEN2L         /*L of channel 2 works as PWM*/
#define PDIS2L PWM1_PDIS2L        /*L of channel 2 works as IO*/

#define PEN1L  PWM1_PEN1L         /*L of channel 1 works as PWM*/
#define PDIS1L PWM1_PDIS1L        /*L of channel 1 works as IO*/
#else
#error "This target don't have MCPWM"
#endif

#endif

/* PWM motor control struct */
struct pwm_mc{
	uint8_t mode:4,
		module_num:1, 		/* DCMCPWM module up to 2 (value range 1 to 2) */
		channel_num:2, 		/* Up to 3 for module 1 */
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
 * 	/param sign_port is the port where is mapped the sing pin.
 * 	/param sign_bit is the bit number of the sing pin into the sing_port.
 * 	/param sign_port_n is the port where is mapped the negate sing pin.
 * 	/param sign_bit_n is the bit number of the negate sing pin into the sing_port_n.
 */
void pwm_mc_channel_init(struct pwm_mc *pwm, uint8_t pwm_mode,
		 uint8_t pwm_module_num, uint8_t pwm_channel_num,
		 volatile uint16_t *sign_port, uint8_t sign_bit,
		 volatile uint16_t *sign_port_n, uint8_t sign_bit_n);
		 

/**
 * Inititialize PWMs generation.
 * /param pwm is a pointer to the struct pwm.
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
void pwm_mc_init(struct pwm_mc *pwm, uint16_t f_pwm, uint16_t pwm_pins_config);

/** Apply a PWM.
 * \param pwm is a pointer to the struct pwm.
 * \param value is the value of the pwm. The value is between 0 and 
 * 2*((FCY / (f_pwm * 1))-1)(value MAX) for a non-signed pwm or -MAX and MAX for a signed one.
 */
void pwm_mc_set(void *pwm, int32_t value); 

#endif // _PWM_MC_H_


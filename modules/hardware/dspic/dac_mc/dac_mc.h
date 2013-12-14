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

#ifndef _DAC_MC_H_
#define _DAC_MC_H_

#include <aversive.h>

#ifndef HOST_VERSION
#include <parts.h>

#if !(defined _DAC1LIE)
#error "This target don't have DAC module"
#endif

#endif

/*
 * The DAC mode is defined be the following flags:
 *
 * DAC_MC_MODE_NORMAL            : normal pwm, just to put a value if 
 *                                 nothing else is needed.
 * PWM_NG_MODE_REVERSE           : invert pwm output, not sign.
 * DAC_MC_MODE_SIGNED            : activate the sign output on another port
 * DAC_MC_MODE_SIGN_INVERTED     : invert sign output
 */
#define DAC_MC_MODE_NORMAL          	0x00 
#define DAC_MC_MODE_REVERSE          	0x01 
#define DAC_MC_MODE_SIGN_INVERTED   	0x02
#define DAC_MC_MODE_SIGNED          	0x04


/* Channel DAC motor control structure */
struct dac_mc{
	uint8_t mode:4,
		module_num:1, 	/* DAC module up to 2 */
		channel:1, 	/* 2 channels per DAC module, L and R. */
		reserved:2;
		
	volatile uint16_t *sign_port;
	volatile uint16_t *sign_port_n;
	uint8_t sign_bit;
	uint8_t sign_bit_n;
};

/**
 * Initialize a DAC_MC channel.
 *	/param dac_mc is the struct where is stored the channel config.
 *	/param dac_module_num is the DAC module, up to 2 (range 1 to 2).
 *	/param dac_channel is the channel of the module L or R 
 *				 (Up to 2 for module 1).
 *	/param dac_mode define the funcionality mode (DAC_MC_MODE_XXX). 
 *  /param sign_port is the port where is mapped the sing pin.
 *  /param sign_bit is the bit number of the sing pin into the sing_port.
 *  /param sign_port_n is the port where is mapped the negate sing pin.
 *  /param sign_bit_n is the bit number of the negate sing pin 
 *         into the sing_port_n.
 */
#define CHANNEL_R 0
#define CHANNEL_L 1
void dac_mc_channel_init(struct dac_mc *dac,
			uint8_t dac_module_num,
			uint8_t dac_channel,
		 	uint8_t dac_mode, 
		 	volatile uint16_t *sign_port, uint8_t sign_bit,
		 	volatile uint16_t *sign_port_n, uint8_t sign_bit_n);
		

/** Apply a analog value to a DAC channel.
 * \param dac_mc is a pointer to the struct dac.
 * \param value is the value of the dac. The value is between 0 and 65535.
 *
 */
void dac_mc_set(void *dac, int32_t value); 

#endif // _DAC_MC_H_


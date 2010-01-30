
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
 *  Javier Baliñas Santos <balinas@gmail.com>
 * 
 *  Based on pwm_ng aversive module:
 *
 *  Copyright Droids Corporation (2009) - Olivier MATZ -
 *  Copyright Microb Technology, Eirbot (2005)
 *
 *  Revision : $Id$
 *
 */

#include <stdio.h>
#include <string.h>

#include <aversive.h>
#include <dac_mc.h>


#if (defined _DAC1LIE)
uint16_t dac1_data_channel[2];
#endif

#if (defined _DAC1LIE)
uint16_t dac2_data_channel[2];
#endif


void dac_mc_channel_init(struct dac_mc *dac,
			uint8_t dac_module_num,
			uint8_t dac_channel,
		 	uint8_t dac_mode, 
		 	volatile uint16_t *sign_port, uint8_t sign_bit,
		 	volatile uint16_t *sign_port_n, uint8_t sign_bit_n){			 
	
	/* Save config in structure */		
	memset(dac, 0, sizeof(*dac));

	dac->mode = dac_mode;
	dac->module_num = (dac_module_num-1);
	dac->channel = dac_channel;
	
	dac->sign_port = sign_port;
	dac->sign_port_n = sign_port_n;
	dac->sign_bit = sign_bit;
	dac->sign_bit_n = sign_bit_n;
	
	/* Configure hardware based on default values */
	if(dac->module_num == 0){		

		// Disable module
		DAC1CONbits.DACEN = 0;
		
		DAC1CONbits.AMPON = 0;
		
		/* DAC Clock Divider
		 * XXX Fs_dac > 10*Fs_control ?
		 */
		_APSTSCLR = 7;
		DAC1CONbits.DACFDIV = 6; // Fs_dac = 410us @ Fcy = 40MHz

		// Enable channel output and interrupt
		if(dac->channel == CHANNEL_L){
			DAC1STATbits.LOEN = 1; 
			DAC1STATbits.LITYPE = 1;
			_DAC1LIF = 0;
			_DAC1LIE = 1;
		}
		else{ // CHANNEL_R
			DAC1STATbits.ROEN = 1;
			DAC1STATbits.RITYPE = 1;
			_DAC1RIF = 0;
			_DAC1RIE = 1; 
		}
		
		// Default DAC channels value
		DAC1DFLT = 0x0000;

		// Enable module
		DAC1CONbits.DACEN = 1;
	
	}
#if (defined _DAC2LIE)
	else{		
		
		// Disable module
		DAC2CONbits.DACEN = 0;
		
		/* DAC Clock Divider
		 * XXX Fs_dac > 10*Fs_control ?
		 */
		_APSTSCLR = 4;
		DAC2CONbits.DACFDIV = 0; // Fs_dac = 410us @ Fcy = 40MHz

		// Enable channel output and interrupt
		if(dac->channel == CHANNEL_L){
			DAC2STATbits.LOEN = 1; 
			DAC2STATbits.LITYPE = 1;
			_DAC2LIF = 0;
			_DAC2LIE = 1;
		}
		else{ // CHANNEL_R
			DAC2STATbits.ROEN = 1;
			DAC2STATbits.RITYPE = 1;
			_DAC2RIF = 0;
			_DAC2RIE = 1; 
		}
		
		// Default DAC channels value
		DAC2DFLT = 0x0000;

		// Enable module
		DAC2CONbits.DACEN = 1;
	}
#endif /* defined _DAC2LIE */	

}

#if (defined _DAC1LIE)
void __attribute__((interrupt, no_auto_psv))_DAC1RInterrupt(void)
{
	_DAC1RIF = 0; 														/* Clear Right Channel Interrupt Flag */
	DAC1RDAT = dac1_data_channel[CHANNEL_R]; 	/* User Code to Write to FIFO Goes Here */
}

void __attribute__((interrupt, no_auto_psv))_DAC1LInterrupt(void)
{
	_DAC1LIF = 0; 														/* Clear Left Channel Interrupt Flag */
	DAC1LDAT = dac1_data_channel[CHANNEL_L]; 	/* User Code to Write to FIFO Goes Here */
}
#endif

#if (defined _DAC2LIE)
void __attribute__((interrupt, no_auto_psv))_DAC2RInterrupt(void)
{
	_DAC2RIF = 0; 									/* Clear Right Channel Interrupt Flag */
	DAC2RDAT = dac2_data_channel[CHANNEL_R]; 	/* User Code to Write to FIFO Goes Here */
}

void __attribute__((interrupt, no_auto_psv))_DAC2LInterrupt(void)
{
	_DAC2LIF = 0; 								/* Clear Left Channel Interrupt Flag */
	DAC2LDAT = dac2_data_channel[CHANNEL_L]; 	/* User Code to Write to FIFO Goes Here */
}
#endif


static inline void dac_sign_set(struct dac_mc *dac)
{
	if (dac->mode & DAC_MC_MODE_SIGN_INVERTED){
		*dac->sign_port &= ~(1 << dac->sign_bit);
		*dac->sign_port_n |= (1 << dac->sign_bit_n);
	}
	else{
		*dac->sign_port |= (1 << dac->sign_bit);
		*dac->sign_port_n &= ~(1 << dac->sign_bit_n);
	}
}

static inline void dac_sign_reset(struct dac_mc *dac)
{
	if (dac->mode &DAC_MC_MODE_SIGN_INVERTED){
		*dac->sign_port |= (1 << dac->sign_bit);
		*dac->sign_port_n &= ~(1 << dac->sign_bit_n);
	}
	else{
		*dac->sign_port &= ~(1 << dac->sign_bit);
		*dac->sign_port_n |= (1 << dac->sign_bit_n);
	}
}

void dac_mc_set(void *data, int32_t value)
{
#define DAC_VALUE_MAX +65535
#define DAC_VALUE_MIN -65535
	
	struct dac_mc *dac = data;

	MAX(value, DAC_VALUE_MAX);
	
	if (dac->mode & DAC_MC_MODE_SIGNED) {
		MIN(value, DAC_VALUE_MIN);
		if (value < 0) {
			dac_sign_set(dac);
			value = -value;
		}
		else {
			dac_sign_reset(dac);
		}
		
		if (dac->mode & DAC_MC_MODE_REVERSE)
			value = DAC_VALUE_MAX-value;	
	}
	else {
		MIN(value, 0);
		
		if (dac->mode & DAC_MC_MODE_REVERSE)
			value = DAC_VALUE_MAX-value;
	}
	
	if (dac->module_num == 0)
		dac1_data_channel[dac->channel] = (uint16_t)value;
	else
		dac2_data_channel[dac->channel] = (uint16_t)value;

}



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
#include <pwm_mc.h>
#include <p33FJ64MC804.h>


#define DEBUG_PWM_MC 1

int32_t pwm_max[2];
int32_t pwm_min[2];

void pwm_mc_channel_init(struct pwm_mc *pwm, uint8_t pwm_mode,
		 uint8_t pwm_module_num, uint8_t pwm_channel_num,
		 volatile uint16_t *sign_port, uint8_t sign_bit,
		 volatile uint16_t *sign_port_n, uint8_t sign_bit_n){			 
			 
	memset(pwm, 0, sizeof(*pwm));

	pwm->mode = pwm_mode;
	pwm->module_num = (pwm_module_num-1);
	pwm->channel_num = pwm_channel_num;
	
	pwm->sign_port = sign_port;
	pwm->sign_port_n = sign_port_n;
	pwm->sign_bit = sign_bit;
	pwm->sign_bit_n = sign_bit_n;
}

void pwm_mc_init(uint8_t num, uint16_t f_pwm, uint16_t pwm_pins_config){
	
	volatile uint16_t period = 0;
	volatile uint16_t prescaler = 0;
	volatile uint16_t sptime = 0;
	volatile uint16_t config1 = 0;
	volatile uint16_t config2 = 0;
	volatile uint16_t config3 = 0;
	volatile uint16_t config4 = 0;
	
	// period - The PWM timebase period value to be stored in the PTPER SFR.
	prescaler = 1;
	period = (uint16_t)((FCY / (f_pwm * prescaler))-1); 	// ecuation for free running mode
														 					// XXX range depends of prescaler and FCY
	
	// PWM value ranges
	pwm_max[num-1] = (int32_t)(2*period);
	pwm_min[num-1] = -pwm_max[num-1];
	
	// sptime - The special event compare value to be stored in SEVTCMP SFR.
	sptime = 0;
	
#if defined(_PWMIF)
	// config1 - The parameters to be configured in the PTCON register.
	config1 = PWM_EN & PWM_IDLE_STOP & PWM_OP_SCALE1 &
				 PWM_IPCLK_SCALE1 & PWM_MOD_FREE;
	
	//	config2 - The parameters to be configured in the PWMCONx register.
	config2 = pwm_pins_config;
	
	// config3 - The parameters to be configured in the PWMCON2 register
	config3 = PWM_SEVOPS1 & PWM_OSYNC_PWM & PWM_UEN;
	
	// config4 - PWM interrupt priority and enable/disable information.
#ifndef DEBUG_PWM_MC
	config4 = PWM_INT_DIS & PWM_INT_PR0 &
				  PWM_FLTA_DIS_INT & PWM_FLTA_INT_PR0 &
				  PWM_FLTB_DIS_INT & PWM_FLTB_INT_PR0;
#else
	config4 = PWM_INT_EN & PWM_INT_PR1 &
				  PWM_FLTA_DIS_INT & PWM_FLTA_INT_PR0 &
				  PWM_FLTB_DIS_INT & PWM_FLTB_INT_PR0;
#endif

//#endif /* defined(_PWMIF) */
				  
#elif defined(_FLTA1IF)
	// config1 - The parameters to be configured in the PTCON register.
	config1 = PWM1_EN & PWM1_IDLE_STOP & PWM1_OP_SCALE1 &
				 PWM1_IPCLK_SCALE1 & PWM1_MOD_FREE;
	
	//	config2 - The parameters to be configured in the PWMCONx register.
	config2 = pwm_pins_config;
	
	// config3 - The parameters to be configured in the PWMCON2 register
	config3 = PWM1_SEVOPS1 & PWM1_OSYNC_PWM & PWM1_UEN;
	
	// config4 - PWM interrupt priority and enable/disable information.
#if defined(_FLTBIF)
#ifndef DEBUG_PWM_MC
	config4 = PWM1_INT_DIS & PWM1_INT_PR0 &
				  PWM1_FLTA_DIS_INT & PWM1_FLTA_INT_PR0 &
				  PWM1_FLTB_DIS_INT & PWM1_FLTB_INT_PR0;
#else
	config4 = PWM1_INT_EN & PWM1_INT_PR1 &
				  PWM1_FLTA_DIS_INT & PWM1_FLTA_INT_PR0 &
				  PWM1_FLTB_DIS_INT & PWM1_FLTB_INT_PR0;
#endif

#else

#ifndef DEBUG_PWM_MC
	config4 = PWM1_INT_DIS & PWM1_INT_PR0 &
				  PWM1_FLTA_DIS_INT & PWM1_FLTA_INT_PR0;
#else
	config4 = PWM1_INT_EN & PWM1_INT_PR1 &
				  PWM1_FLTA_DIS_INT & PWM1_FLTA_INT_PR0;
#endif

#endif

#else
#error "This target don't have MCPWM"
#endif
	

	
	if(num == 1){
#if defined(_PWMIF)
	OpenMCPWM(period, sptime, config1, config2, config3); 
	ConfigIntMCPWM(config4);
#elif defined(_FLTA1IF)
	OpenMCPWM1(period, sptime, config1, config2, config3); 
	ConfigIntMCPWM1(config4);	
#else
#error "This target don't have MCPWM"
#endif
	}
#if defined(_FLTA2IF)	
	else{
	OpenMCPWM2(period, sptime, config1, config2, config3); 
	ConfigIntMCPWM2(config4);	
	}
#else
#warning "This target don't have MCPWM2"
#endif
}

#ifdef DEBUG_PWM_MC
void __attribute__((__interrupt__,no_auto_psv)) _MPWM1Interrupt(void){
   _PWM1IF = 0;
} 

void __attribute__((__interrupt__,no_auto_psv)) _MPWM2Interrupt(void){
   _PWM2IF = 0;
}
#endif

static inline void pwm_sign_set(struct pwm_mc *pwm)
{
	if (pwm->mode & PWM_MC_MODE_SIGN_INVERTED){
		*pwm->sign_port &= ~(1 << pwm->sign_bit);
		*pwm->sign_port_n |= (1 << pwm->sign_bit_n);
	}
	else{
		*pwm->sign_port |= (1 << pwm->sign_bit);
		*pwm->sign_port_n &= ~(1 << pwm->sign_bit_n);
	}
}

static inline void pwm_sign_reset(struct pwm_mc *pwm)
{
	if (pwm->mode &PWM_MC_MODE_SIGN_INVERTED){
		*pwm->sign_port |= (1 << pwm->sign_bit);
		*pwm->sign_port_n &= ~(1 << pwm->sign_bit_n);
	}
	else{
		*pwm->sign_port &= ~(1 << pwm->sign_bit);
		*pwm->sign_port_n |= (1 << pwm->sign_bit_n);
	}
}

void pwm_mc_set(void *data, int32_t value)
{
	struct pwm_mc *pwm = data;

	MAX(value, pwm_max[pwm->module_num]);
	if (pwm->mode & PWM_MC_MODE_SIGNED) {
		MIN(value, pwm_min[pwm->module_num]);
		if (value < 0) {
			pwm_sign_set(pwm);
			value = -value;
		}
		else {
			pwm_sign_reset(pwm);
		}
	}
	else {
		MIN(value, 0);
	}
	
	if (pwm->module_num == 0)
#if defined(_PWMIF)
		SetDCMCPWM(pwm->channel_num, value,0);
#elif defined(_FLTA1IF)
		SetDCMCPWM1(pwm->channel_num, value,0);
#else
#error "This target don't have MCPWM"
#endif	

#if defined(_FLTA2IF)
	else
		SetDCMCPWM2(value,0);
#else
#warning "This target don't have MCPWM2"
#endif
}


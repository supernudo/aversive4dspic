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
 *  Javier Bali�as Santos <javier@arc-robots.org>
 *	
 *  Code ported to families of microcontrollers dsPIC, with DAC module,
 *  from pwm_ng.c made by Olivier MATZ.
 *
 */

#ifndef HOST_VERSION

#include <stdio.h>
#include <string.h>

#include <aversive.h>
#include <pwm_mc.h>

#include <pwm.h>
#include <pwm12.h>

/* FIXME: headers of pwm.h */
void CloseMCPWM(void) __attribute__ ((section (".libperi")));
void ConfigIntMCPWM(unsigned int config) __attribute__ ((section (".libperi")));
void OpenMCPWM(unsigned int period, unsigned int sptime,unsigned int
               config1, unsigned int config2, unsigned int config3) __attribute__ ((section (".libperi")));
void OverrideMCPWM(unsigned int config) __attribute__ ((section (".libperi")));
void SetDCMCPWM(unsigned int dutycyclereg, unsigned int dutycycle, 
                char updatedisable) __attribute__ ((section (".libperi")));
void SetMCPWMDeadTimeGeneration(unsigned int config) __attribute__ ((section (".libperi")));
void SetMCPWMFaultA(unsigned int config) __attribute__ ((section (".libperi")));

void SetMCPWMDeadTimeAssignment(unsigned int config) __attribute__ ((section (".libperi")));
void SetMCPWMFaultB(unsigned int config) __attribute__ ((section (".libperi")));

/* FIXME: headers of pwm12.h */
void CloseMCPWM1(void) __attribute__ ((section (".libperi")));
void ConfigIntMCPWM1(unsigned int config) __attribute__ ((section (".libperi")));
void OpenMCPWM1(unsigned int period, unsigned int sptime,unsigned int
               config1, unsigned int config2, unsigned int config3) __attribute__ ((section (".libperi")));
void OverrideMCPWM1(unsigned int config) __attribute__ ((section (".libperi")));
void SetDCMCPWM1(unsigned int dutycyclereg, unsigned int dutycycle, 
                char updatedisable) __attribute__ ((section (".libperi")));
void SetMCPWM1DeadTimeGeneration(unsigned int config) __attribute__ ((section (".libperi")));
void SetMCPWM1FaultA(unsigned int config) __attribute__ ((section (".libperi")));
void SetMCPWM1DeadTimeAssignment(unsigned int config) __attribute__ ((section (".libperi")));
void SetMCPWM1FaultB(unsigned int config) __attribute__ ((section (".libperi")));
void CloseMCPWM2(void) __attribute__ ((section (".libperi")));
void ConfigIntMCPWM2(unsigned int config) __attribute__ ((section (".libperi")));
void OpenMCPWM2(unsigned int period, unsigned int sptime,unsigned int
               config1, unsigned int config2, unsigned int config3) __attribute__ ((section (".libperi")));
void OverrideMCPWM2(unsigned int config) __attribute__ ((section (".libperi")));
void SetDCMCPWM2(unsigned int dutycycle, 
                char updatedisable) __attribute__ ((section (".libperi")));
void SetMCPWM2DeadTimeGeneration(unsigned int config) __attribute__ ((section (".libperi")));
void SetMCPWM2FaultA(unsigned int config) __attribute__ ((section (".libperi")));
//#define DEBUG_PWM_MC 1

int32_t pwm_max[2];
int32_t pwm_min[2];
int32_t pwm_offset[2];

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

void pwm_mc_init(struct pwm_mc *pwm, uint16_t f_pwm, uint16_t pwm_pins_config){
	
	volatile uint8_t num;
	volatile uint16_t period = 0;
	volatile uint16_t prescaler = 0;
	volatile uint16_t sptime = 0;
	volatile uint16_t config1 = 0;
	volatile uint16_t config2 = 0;
	volatile uint16_t config3 = 0;
	volatile uint16_t config4 = 0;
	
	// pwm generator module number
	num = pwm->module_num;
	
	// period - The PWM timebase period value to be stored in the PTPER SFR.
	prescaler = 1;
	period = (uint16_t)((FCY / (f_pwm * prescaler))-1); 	// ecuation for free running mode
														 														// XXX range depends of prescaler and FCY
	
	// PWM value ranges
	if((pwm->mode & PWM_MC_MODE_SIGNED)){
			 
		pwm_max[num] = (int32_t)(2*period);
		pwm_min[num] = -pwm_max[num];
		
		// PWM offset
		pwm_offset[num] = 0;	
	}
	else if((pwm->mode & PWM_MC_MODE_BIPOLAR)){
			 
		pwm_max[num] = (int32_t)(period-1);
		pwm_min[num] = -(int32_t)(period);
		
		// PWM offset
		pwm_offset[num] = (int32_t)(period);
	}
	else{
		pwm_max[num] = (int32_t)(2*period);
		pwm_min[num] = 0;
		
		// PWM offset
		pwm_offset[num] = 0;
		
	}
	
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
	

	
	if(num == 0){
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
	else if (num == 1){
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

	/* return if not configured */
	if(pwm->mode == 0)
		return;

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
	else if (pwm->mode & PWM_MC_MODE_BIPOLAR) {
		MIN(value, pwm_min[pwm->module_num]);
		
		if (pwm->mode & PWM_MC_MODE_SIGN_INVERTED)
			value = -value;
		
		value += pwm_offset[pwm->module_num];
	}
	else if (pwm->mode & PWM_MC_MODE_NORMAL) {
		MIN(value, 0);
		
		if (pwm->mode & PWM_MC_MODE_REVERSE)
			value = pwm_max[pwm->module_num]-value;
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

#endif /* !HOST_VERSION */


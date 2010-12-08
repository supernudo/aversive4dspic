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
 *  Revision : $Id$
 *
 */

#include <stdio.h>
#include <aversive.h>
#include <wait.h>
#include <pwm_mc.h>

#include <configuration_bits_config.h>


int main(void)
{
	//struct pwm_mc pwm_r, pwm_l; 
	struct pwm_mc pwm_beacon;

	oscillator_init();

	/************************************************************************* 
	 * Dummy robot board IO portmap
	 */
	
//	/* L6203 H bridges */
//	_TRISB13 	= 0;	// M_DER_IN1
//	_TRISC7  	= 0;	// M_DER_IN2
//	_TRISB12 	= 0;	// M_DER_EN
//	
//	_TRISB15 	= 0;	// M_IZQ_IN1
//	_TRISC6  	= 0;	// M_IZQ_IN2
//	_TRISB14 	= 0;	// M_IZQ_EN
//	
//	/* UARTs */
//	_U1RXR 	= 8;	// U1RX <- RP8
//  _RP7R 	= 3;	// U1TX -> RP7
//	_TRISB8 = 1;	// U1RX
//	_TRISB7	= 0;	// U1TX
	
	/************************************************************************* 
	 * Beacon IO portmap
	 */
	
	/* Mostfet H bridge */
	_TRISC6 = 0;	// PH1
	_ODCC6 = 1;
	_TRISC7 = 0;	// PH2
	_ODCC7 = 1;
	
	//_TRISC5 = 0;
	//_TRISC4 = 0;
	
	/* UARTs */
//	_U1RXR 	= 8;	// U1RX <- RP8
//  _RP7R 	= 3;	// U1TX -> RP7
//	_TRISB8 = 1;	// U1RX
//	_TRISB7	= 0;	// U1TX
	 
	
//	pwm_mc_channel_init(&pwm_l, PWM_MC_MODE_SIGNED, 1, 1, &LATB, 15, &LATC, 6);
//	pwm_mc_channel_init(&pwm_r, PWM_MC_MODE_SIGNED, 1, 2, &LATB, 13, &LATC, 7);
//	
//	pwm_mc_set(&pwm_l, 0);
//	pwm_mc_set(&pwm_r, 0);
//
//	pwm_mc_init(1, 15000, MOD1_IND&PEN1H&PDIS1L & MOD2_IND&PEN2H&PDIS2L);
//
//
//	pwm_mc_set(&pwm_l, 2666);
//	pwm_mc_set(&pwm_r, 2666);
//	
//	wait_ms(5000);
//	
//	pwm_mc_set(&pwm_l, -2666);
//	pwm_mc_set(&pwm_r, -2666);
//	
//	wait_ms(5000);
//	
//	pwm_mc_set(&pwm_l, 2666*2);
//	pwm_mc_set(&pwm_r, 2666*2);
//	
//	wait_ms(5000);
//	
//	pwm_mc_set(&pwm_l, -2666*2);
//	pwm_mc_set(&pwm_r, -2666*2);
//	
//	wait_ms(5000);
//	
//	pwm_mc_set(&pwm_l, 0);
//	pwm_mc_set(&pwm_r, 0);

//	while(1)
//	{
//		_LATC6 = 0;
//		_LATC7 = 0;
//		wait_ms(1);
//		_LATC6 = 1;
//		_LATC7 = 0;
//		wait_ms(1);
//	}	
//
	pwm_mc_channel_init(&pwm_beacon, PWM_MC_MODE_NORMAL, 2, 1, NULL, 0, NULL, 0);
	
	pwm_mc_set(&pwm_beacon, 2666);

	pwm_mc_init(&pwm_beacon, 15000, CH1_COMP&PEN1H&PEN1L);

	pwm_mc_set(&pwm_beacon, 0);
	
	wait_ms(5000);
	
	pwm_mc_set(&pwm_beacon, 2666*2);
	
	wait_ms(5000);
	
	pwm_mc_set(&pwm_beacon, 2666);
	
	wait_ms(5000);

	pwm_mc_set(&pwm_beacon, 4000);
	
	wait_ms(5000);
	
	while(1);
	return 0;
}



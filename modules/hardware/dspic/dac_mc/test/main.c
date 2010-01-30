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
#include <math.h>
#include <aversive.h>
#include <wait.h>
#include <dac_mc.h>

#include <configuration_bits_config.h>


int main(void)
{
	struct dac_mc dac_r, dac_l;
	
	int32_t ydata=0, m=0;

	oscillator_init();

	/*********************************
	 * Dummy robot board IO portmap
	 */
	
	_TRISB11 = 0; // M_DER_#START_STOP
	_LATB11	 = 1; // BRAKE ON
	
	_TRISA7  = 0; // M_IZQ_#START_STOP
	_LATA7 	 = 1; // BRAKE ON
	
	_TRISB10 = 0; // M_DER_REV
	_TRISA10 = 0; // M_IZQ_REV
	
	
	dac_mc_channel_init(&dac_l, 1, CHANNEL_L,
											DAC_MC_MODE_SIGNED|DAC_MC_MODE_REVERSE,
										 	&LATA, 10, NULL, 0);
										 	
	dac_mc_channel_init(&dac_r, 1, CHANNEL_R, 
											DAC_MC_MODE_SIGNED|DAC_MC_MODE_REVERSE,
										 	&LATB, 10, NULL, 0);

	dac_mc_set(&dac_l, 0);
	dac_mc_set(&dac_r, 0);
	
	/* Brakes off */
	_LATB11 = 1;
	_LATA7 = 1;


	/* Test max velocity */	
//	dac_mc_set(&dac_l, 65535);
//	dac_mc_set(&dac_r, 65535);
//	while(1){
//		Nop();
//	}	
		
	while(1){

		wait_ms(1);

		
		/* Test slew rate */
//		ydata++;
//		if(ydata == 65535)
//			data = -1;
//		else
//			ydata = 65535;
		
		/* Test rampe */	
		if(m==0)
			m = 65;
			
		if(ydata >= 65000){
			Nop();
			m = -65;
		}
		else if(ydata <= -65000){
			Nop();
			m = 65;
		}
		
		ydata += m;
		
		if (ydata == 0){
			ydata = 0;
			dac_mc_set(&dac_l, ydata);
			dac_mc_set(&dac_r, ydata);
			wait_ms(2000);	
		}
		else{
			dac_mc_set(&dac_l, ydata);
			dac_mc_set(&dac_r, ydata);
		}
	}

	return 0;
}



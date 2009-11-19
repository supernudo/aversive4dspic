
/*
 *  Copyright JBS (2009)
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
 *  Revision : $Id:M$
 *
 */ 

#include <oscillator.h>

/**
 *	Initialize the oscillator
 */
void oscillator_init(void){
     	
	// Configure PLL prescaler, PLL postscaler, PLL divisor
   PLLFBD = M-2;	
	CLKDIVbits.PLLPOST = N1-2;	
	CLKDIVbits.PLLPRE = (N2/2)-1;		
	
	// Tune FRC oscillator, if FRC is used
	//OSCTUN=0;					   
	
	// Disable Watch Dog Timer
	//RCONbits.SWDTEN=0;
	
	// Initiate Clock Switch to Primary Oscillator with PLL (NOSC = 0b011)
	__builtin_write_OSCCONH(0x03);		   			
	__builtin_write_OSCCONL(0x01);		 
	
	// Wait for Clock switch to occur
	while (OSCCONbits.COSC != 0b011);	   
	
	// Wait for PLL to lock
	while(OSCCONbits.LOCK!=1) {};
}

/* EOF */ 


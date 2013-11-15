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
 *  Revision : $Id: stack_space.c,v 1.7.4.3 2008-05-09 08:23:52 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Compatibility with families of microcontrollers dsPIC and PIC24H of Microchip.
 *
 *	VERY EXPERIMENTAL! NOT TESTED!
 */

#ifdef AVR
#include <avr/io.h>
#endif
#include <aversive.h>


#include <diagnostic.h>


/** This diagnostical software fills the RAM with a mark, and counts
 * how many of these marks are unmodified, in order to avaluate the
 * min stack space available after code execution.  You can then know
 * how much your stack your program needed in a peak, without looking
 * espacially when this peak arises. you see the minmal stack space
 * left since the reset of the microcontroller. */

// call this function at the beginning of program
#ifdef AVR
void fill_mem_with_mark(void) __attribute__ ((naked)) \
__attribute__ ((section (".init1")));
#else
void fill_mem_with_mark(void) __attribute__((section (".user_init")));
//((user_init));
#endif

/** this functions fills the ram with a predefined pattern after a
 * reset and BEFORE any other operation */
void fill_mem_with_mark(void)
{
#ifdef AVR
	register int i   asm("r16");
	register int end asm("r18");


	// where is the beginning of the RAM memory ?
#ifdef DIAG_FILL_ENTIRE_RAM // fill entire RAM
	asm(  "ldi r16,lo8(__data_start)" );
	asm(  "ldi r17,hi8(__data_start)" );
#else                       // fill only stack and heap spaces
	asm(  "ldi r16,lo8(__heap_start)" );
	asm(  "ldi r17,hi8(__heap_start)" );
#endif

	// end of RAM
	asm(  "ldi r18,lo8(__stack)" );
	asm(  "ldi r19,hi8(__stack)" );
	
	
	// fill ram with the spacified pattern
	for(; i< end ; i++)
		* ( (volatile unsigned char* )(i) ) = MARK;
  
#else

	register int * i   asm("w4");
	register int * end asm("w5");

	// where is the beginning of the RAM memory ?
#ifdef DIAG_FILL_ENTIRE_RAM // fill entire RAM
	asm("mov #__DATA_BASE,w4");
#else                       // fill only stack and heap spaces
	asm("mov #__SP_init,w4");
#endif

	// end of RAM
	asm("mov #__DMA_END,w5");
	
	// fill ram with the spacified pattern
	for(; i< end ; i++)
		*i = MARK;

#endif
  
}


uint16_t min_stack_space_available(void)
{
#ifdef AVR	
	register int i   asm("r16");
	register int end asm("r18");
	uint16_t count , max;

	// where is the beginning of the stack space ?
	asm(  "ldi r16,lo8(__heap_start)" );
	asm(  "ldi r17,hi8(__heap_start)" );
	// end of RAM
	asm(  "ldi r18,lo8(__stack)" );
	asm(  "ldi r19,hi8(__stack)" );
 
 	/* the algorithm finds the size of the biggest zone filled
	 * with the mark, which is normally the stack space left */
	count = 0;
	max  = 0;
	for(; i<end; i++) {
		// = mark?
		if (MARK == * ( (volatile unsigned char* )(i) )) {
			// count
			count ++;
			if (count > max)
				max = count;
		}
		else
			count = 0; // reset counter
	}
 
#else
	register int * i   asm("w4");
	register int * end asm("w5");
	uint16_t count , max;

	// where is the beginning of the stack space ?
	asm("mov #__SP_init,w4");
	// end of RAM
	asm("mov #__DMA_END,w5");

	/* the algorithm finds the size of the biggest zone filled
	 * with the mark, which is normally the stack space left */
	count = 0;
	max  = 0;
	for(; i<end; i++) {
		// = mark?
		if (MARK == *i ){
			// count
			count+=2;
			if (count > max)
				max = count;
		}
		else
			count = 0; // reset counter
	}

#endif
	
	return max;
}

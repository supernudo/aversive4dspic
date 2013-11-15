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
 *  Revision : $Id: irq_lock.h,v 1.1.2.1 2007-05-23 17:18:09 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Compatibility with families of microcontrollers dsPIC and PIC24H of Microchip.
 *
 */

/** \file modules/base/utils/irq_lock_macros.h
 *  \brief Interface of the utils module
 *   
 *   here are defined the three macros : 
 *
 *  IRQ_LOCK(flags);              this saves interrupt state
 *  IRQ_UNLOCK(flags);            this restores interrupt state
 *  
 *  code example follows: 
 *
 *    uint8_t flags;
 *    IRQ_LOCK(flags);
 *      // code to be protected against interrupts ...
 *    IRQ_UNLOCK(flags); // needs to be associated with an unlock
 *  
 */


#ifndef _AVERSIVE_IRQ_LOCK_H_
#define _AVERSIVE_IRQ_LOCK_H_

#ifdef HOST_VERSION

/* we must use 'flags' to avoid a warning */
#define IRQ_UNLOCK(flags) flags=0
#define IRQ_LOCK(flags) flags=0
#define GLOBAL_IRQ_ARE_MASKED() (1)

#else

#ifdef AVR
#define GLOBAL_IRQ_ARE_MASKED() (!(bit_is_set(SREG,7)))

#define IRQ_LOCK(flags) do {         \
  flags = SREG;                      \
  cli();                             \
  } while(0)

#define IRQ_UNLOCK(flags) do {       \
  SREG = flags;                      \
  } while ( 0 )

#else /* DSPIC */

#if defined(__dsPIC30F__)
#include <p30fxxxx.h>
#elif defined(__dsPIC33F__)
#include <p33Fxxxx.h>
#elif defined(__PIC24H__)
#include <p24Hxxxx.h>
#endif 

#define GLOBAL_IRQ_ARE_MASKED() (SRbits.IPL==7)

#define IRQ_LOCK(flags) do {         \
  flags = SRbits.IPL ;               \
  cli();                             \
  } while(0)

#define IRQ_UNLOCK(flags) do {       \
  SRbits.IPL = flags;                \
  } while ( 0 )


#endif /* AVR else DSPIC */

#endif /* HOST_VERSION */

#endif /* _AVERSIVE_IRQ_LOCK_H_ */

/*  
 *  Copyright Droids Corporation, Microb Technology, Eirbot (2005)
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
 *  Revision : $Id: error.h,v 1.1.2.2 2007-06-01 09:37:22 zer0 Exp $
 *
 */

/*  Robotics Association of Coslada, Eurobotics Engineering (2010)
 *  Javier Baliñas Santos <javier@arc-robots.org>
 *	
 *  Compatibility with families of microcontrollers dsPIC and PIC24H of Microchip.
 *
 */


#ifndef _AVERSIVE_ERROR_H_
#define _AVERSIVE_ERROR_H_

#include <autoconf.h>

#ifdef CONFIG_MODULE_ERROR

#ifndef HOST_VERSION
#include <error/error.h>
#else
#include <error.h>
#endif

#else

#define EMERG(num, text...)  do {} while(0)

#define ERROR(num, text...)  do {} while(0)

#define WARNING(num, text...)  do {} while(0)

#define NOTICE(num, text...)  do {} while(0)

#define DEBUG(num, text...)  do {} while(0)

#endif /* CONFIG_MODULE_ERROR */
#endif /* _AVERSIVE_ERROR_H_ */

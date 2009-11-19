/*  
 *  Copyright Droids Corporation, Microb Technology, Eirbot (2005)
 *  Copyright I-Grebot(2009)
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
 *  Revision : $$
 *
 */

/** \file encoders_Igrebot.c
 *  \brief Implementation for getting motor position
 *
 */

#include <aversive.h>

#include <encoders_igrebot.h>
#include <encoders_igrebot_config.h>

static int32_t value_codeur[2];
static int16_t value_old[2];

/** 
 * Initialisation of encoders, variables
 */
void encoders_igrebot_init(void)
{
	POS1CNT=0;
	POS2CNT=0;
	QEI1CONbits.QEIM=0b111; //signal x4 + dépassement avec MAXxCNT
	MAX1CNT=0xFFFF;
	QEI1CONbits.SWPAB=0; //sens d'avance du codeur
	QEI1CONbits.PCDOUT=0;//pas de sortie sur UPDNx

	DFLT1CONbits.QEOUT=1; //Activation du filtrage en entrée
	DFLT1CONbits.QECK=0;  //division par 1

	QEI2CON=QEI1CON; //même config pour les deux codeurs
	MAX2CNT=MAX1CNT;
	DFLT2CON=DFLT1CON;
	QEI2CONbits.SWPAB=0; 

 
	/* Encodeurs */
	RPINR14bits.QEA1R = QUAD_ENCODER_1_PIN_A;
	RPINR14bits.QEB1R = QUAD_ENCODER_1_PIN_B;
	
	RPINR16bits.QEA2R = QUAD_ENCODER_2_PIN_A;
	RPINR16bits.QEB2R = QUAD_ENCODER_2_PIN_B;
}



/** Extract encoder value.
 *
 * \param number : a (void *) that is casted in (int) containing the number
 *                 of the encoder to be read.
 */
int32_t encoders_igrebot_get_value(void * number)
{
	int16_t value;
	uint8_t flags;

	IRQ_LOCK(flags);

	int num = (int) number;

	value = num ? (int16_t) POS2CNT : (int16_t) POS1CNT;

	int16_t res = value - value_old[num];
	value_old[num] = value;
	value_codeur[num] += res;

	IRQ_UNLOCK(flags);

	return value_codeur[num];
}

/** Set an encoder value
 *
 * \param number : a (void *) that is casted in (int) containing the number
 *                 of the encoder to be read.
 * \param v      : the value
 */
void encoders_igrebot_set_value(void * number, int32_t v)
{
	uint8_t flags;
	int num = (int) number;
	int val = (int) v;
	
	IRQ_LOCK(flags);
	
	value_codeur[num]=val;
	value_old[num]=val;

	if (num == 0)
		POS1CNT=val;
	else 
		POS2CNT=val;

	IRQ_UNLOCK(flags);
}

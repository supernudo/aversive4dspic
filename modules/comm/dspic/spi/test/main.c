/*
 *  Copyright Robotics Association of Coslada, Eurobotics Engineering (2010)
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
 *  Javier Baliñas Santos <javier@arc-robots.org>
 */

#include <stdarg.h>
#include <stdio.h>

#include <aversive.h>
#include <aversive\error.h>
#include <aversive\wait.h>
#include <pgmspace.h>

#include "spi_config.h"
#include <configuration_bits_config.h>
#include <oscillator.h>
#include <spi.h>
#include <uart.h>

//#define DRM12_BOARD
#define DSPIC33E_BOARD

//#define TEST_PIN_LOOPBACK
//#define TEST_SPI_ERRORS
#define TEST_LOOPBACK_NORMAL

/* remap and io config */
#if defined(DRM12_BOARD)

/* SPI module */
#define SPI_MODULE 1

/* SPI slaves */
#define SPI_MAX_SLAVES SPI1_MAX_SLAVES

#define SPI_SLAVE_0_PORT PORTG
#define SPI_SLAVE_1_PORT PORTG
#define SPI_SLAVE_2_PORT PORTG
#define SPI_SLAVE_0_PIN 9
#define SPI_SLAVE_1_PIN 8
#define SPI_SLAVE_2_PIN 6

#elif defined(DSPIC33E_BOARD)

/* SPI module */
#define SPI_MODULE 1

/* SPI slaves */
#define SPI_MAX_SLAVES SPI1_MAX_SLAVES

#define SPI_SLAVE_0_PORT PORTD
#define SPI_SLAVE_1_PORT PORTD
#define SPI_SLAVE_2_PORT PORTD
#define SPI_SLAVE_3_PORT PORTD
#define SPI_SLAVE_0_PIN 0
#define SPI_SLAVE_1_PIN 11
#define SPI_SLAVE_2_PIN 10
#define SPI_SLAVE_3_PIN 9
#endif

/* log function */
void mylog(struct error *e, ...) {
  va_list ap;

  va_start(ap, e);
  printf_P(PSTR("[%d]: E%d "), e->severity, e->err_num);
  vfprintf_P(stdout, e->text, ap);
  printf_P(PSTR(", "));
  printf_P(e->file);
  printf_P(PSTR(", L%d\r\n"), e->line);
  va_end(ap);
}

void pin_config(void) {
/* remap and io config */
#if defined(DRM12_BOARD)
  /* UART 1 */
  _U1RXR = 12; /* RX */
  _TRISD11 = 1;
  _RP9R = 0b00011; /* TX */
  _TRISB9 = 0;

  /* SPI 1 */
  _SDI1R = 17; /* SDI1 */
  _TRISF5 = 1;
  _RP10R = 7; /* SDO1 */
  _TRISF4 = 0;
  _RP29R = 8; /* SCK1OUT */
  _TRISB15 = 0;

#elif defined(DSPIC33E_BOARD)
  /* UART 1 */
  _U1RXR = 66;
  _RP65R = 0b00001;
  _TRISD1 = 0;
  _TRISD2 = 1;


  /* SPI 1 */
  _SDI1R = 68; /* SDI1 */
  _TRISD4 = 1;
  _RP67R = 5; /* SDO1 */
  _TRISD3 = 0;
  _RP69R = 6; /* SCK1OUT */
  _TRISD5 = 0;

  /* SPI SS lines */
  _TRISD0 = 0;
  _TRISD11 = 0;
  _TRISD10 = 0;
  _TRISD9 = 0;
#endif
}

uint8_t spi_slave[SPI_MAX_SLAVES];
uint16_t data_tx = 0, data_rx[SPI_MAX_SLAVES], i=0, j=0, k=0;

/* Simple pin loop test */
void spi_pin_loopback_test(void) {
/* PIN loopback */
#define PIN_OUT_TRIS  _TRISD3
#define PIN_OUT_LAT   _LATD3
#define PIN_OUT_R     _RD3

#define PIN_IN_TRIS   _TRISD4
#define PIN_IN_LAT    _LATD4
#define PIN_IN_R      _RD4

  PIN_OUT_TRIS = 0;
  PIN_IN_TRIS = 1;
  i = j = k = 0;

  while (1) {
    i ^= 1;
    PIN_OUT_LAT = (0x01 & i);
    wait_ms(500);
    j = PIN_OUT_R;
    k = PIN_IN_R;
    printf("TX %d/%d, RX %d\n\r", i, j, k);
  }
}


/* Test the SPI errors */
void spi_errors_test(void) {
  uint8_t spi_slave[SPI_MAX_SLAVES];
  uint16_t data_tx = 0, data_rx[SPI_MAX_SLAVES];

  spi_init(4, SPI_MODE_MASTER_8BITS, SPI_FORMAT_0, SPI_CLK_RATE1_16,
           SPI_CLK_RATE2_1);

  spi_get_mode(4);
  spi_slave[0] = spi_register_ss_line(4, &PORTG, 9);
  spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
  spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
  spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);
  spi_slave[0] = spi_register_ss_line(1, &PORTG, 9);

  spi_slave_select(4, 0);
  spi_slave_select(1, 4);
  spi_slave_select(1, 0);
  spi_slave_select(1, 0);

  data_rx[0] = spi_send_and_receive_data(4, data_tx);

  spi_slave_deselect(4, 0);
  spi_slave_deselect(1, 4);

  while (1) {
  };
}


/*
 * This code sends a counter value to uart.
 */
int main(void) {
  /* initialize oscillator with the default parameters ( see
   * oscillator_config.h ) */
  oscillator_init();

  /* Init GPIOS */
  pin_config();

  /* init UART */
  uart_init();

  /* register log function */
  error_register_emerg(mylog);
  error_register_error(mylog);
  error_register_debug(mylog);
  error_register_warning(mylog);
  error_register_notice(mylog);

#if defined(TEST_SPI_ERRORS)
  spi_errors_test();
#elif defined(TEST_PIN_LOOPBACK)
  spi_pin_loopback_test();
#else

  /* init SPI */
  spi_init(SPI_MODULE, SPI_MODE_MASTER_16BITS, SPI_FORMAT_0, SPI_CLK_RATE1_4,
           SPI_CLK_RATE2_4);

  /* register slave line */
  spi_slave[0] =
      spi_register_ss_line(SPI_MODULE, &SPI_SLAVE_0_PORT, SPI_SLAVE_0_PIN);
  spi_slave[1] =
      spi_register_ss_line(SPI_MODULE, &SPI_SLAVE_1_PORT, SPI_SLAVE_1_PIN);
  spi_slave[2] =
      spi_register_ss_line(SPI_MODULE, &SPI_SLAVE_2_PORT, SPI_SLAVE_2_PIN);
  spi_slave[3] =
      spi_register_ss_line(SPI_MODULE, &SPI_SLAVE_3_PORT, SPI_SLAVE_3_PIN);

  /* enable interrupts */
  sei();

  /* dumpt SPI info */
  spi_display_ss_lines();
  wait_ms(1000);

  //while(1) {
  //};

  while (1) {

    for (i = 0; i < SPI_MAX_SLAVES; i++) {
      spi_slave_select(SPI_MODULE, spi_slave[i]);
      data_rx[i] = spi_send_and_receive_data(SPI_MODULE, data_tx);
      spi_slave_deselect(SPI_MODULE, spi_slave[i]);
    }

    printf("SPI Slave %d: send 0x%X, received 0x%X \r\n", spi_slave[0], data_tx,
           data_rx[0]);
    printf("SPI Slave %d: send 0x%X, received 0x%X \r\n", spi_slave[1], data_tx,
           data_rx[1]);
    printf("SPI Slave %d: send 0x%X, received 0x%X \r\n", spi_slave[2], data_tx,
           data_rx[2]);
    printf("SPI Slave %d: send 0x%X, received 0x%X \r\n", spi_slave[3], data_tx,
           data_rx[3]);

    data_tx++;
    wait_ms(1000);
  }

#endif
  return 0;
}

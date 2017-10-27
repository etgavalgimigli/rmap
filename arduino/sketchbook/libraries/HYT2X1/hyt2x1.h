/**@file hyt2x1.h */

/*********************************************************************
Copyright (C) 2017  Marco Baldinetti <m.baldinetti@digiteco.it>
authors:
Marco Baldinetti <m.baldinetti@digiteco.it>

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of
the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
**********************************************************************/

#ifndef _HYT2X1_H
#define _HYT2X1_H

#include "Arduino.h"
#include <Wire.h>

/*!
\def HYT2X1_DEFAULT_ADDRESS
\brief Default address.
*/
#define HYT2X1_DEFAULT_ADDRESS      (0x28)

/*!
\def HYT2X1_READ_HT_DATA_LENGTH
\brief Number of bytes to be read.
*/
#define HYT2X1_READ_HT_DATA_LENGTH  (4)

/*!
\def HYT2X1_ENTER_COMMAND_MODE
\brief Command mode.
*/
#define HYT2X1_ENTER_COMMAND_MODE   (0xA0)

/*!
\def HYT2X1_EXIT_COMMAND_MODE
\brief Exit command mode.
*/
#define HYT2X1_EXIT_COMMAND_MODE    (0x80)

/*!
\def HYT2X1_WRITE_ADDRESS
\brief Write address.
*/
#define HYT2X1_WRITE_ADDRESS        (0x5C)

/*!
\def HYT2X1_CONVERSION_TIME_MS
\brief Conversion time in milliseconds.
*/
#define HYT2X1_CONVERSION_TIME_MS   (100)

/*!
\def HYT2X1_TEMPERATURE_MIN
\brief Minimum temperature.
*/
#define HYT2X1_TEMPERATURE_MIN      (-40)

/*!
\def HYT2X1_TEMPERATURE_MAX
\brief Maximum temperature.
*/
#define HYT2X1_TEMPERATURE_MAX      (125)

/*!
\def HYT2X1_HUMIDITY_MIN
\brief Minimum humidity.
*/
#define HYT2X1_HUMIDITY_MIN         (0)

/*!
\def HYT2X1_HUMIDITY_MAX
\brief Maximum humidity.
*/
#define HYT2X1_HUMIDITY_MAX         (100)

/*!
\namespace Hyt2X1
\brief HYT2X1 namespace.
*/
namespace Hyt2X1 {
   /*!
   \fn void init(uint8_t power_pin)
   \brief Init sensor.
   \param power_pin sensors power pin.
   \return void.
   */
   void init(uint8_t power_pin);

   /*!
   \fn void on(uint8_t power_pin)
   \brief Power on sensor.
   \param power_pin sensors power pin.
   \return void.
   */
   void on(uint8_t power_pin);

   /*!
   \fn void off(uint8_t power_pin)
   \brief Power off sensor.
   \param power_pin sensors power pin.
   \return void.
   */
   void off(uint8_t power_pin);

   /*!
   \fn void changeAddress(uint8_t power_pin, int8_t address, int8_t new_address)
   \brief Change sensor address.
   \param power_pin sensors power pin.
   \param address sensors i2c address.
   \param new_address sensors i2c new address.
   \return void.
   */
   void changeAddress(uint8_t power_pin, int8_t address, int8_t new_address);

   /*!
   \fn uint32_t initRead(uint8_t address)
   \brief Init sensor read.
   \param address sensors i2c address.
   \return uint32_t sensors conversion time.
   */
   uint32_t initRead(uint8_t address);

   /*!
   \fn bool read(int8_t address, float *humidity, float *temperature)
   \brief Returns the humidty and temperature from hyt2X1 sensor at specified address.
   \param address sensor i2c address.
   \param *humidity pointer to readed humidity variable.
   \param *temperature pointer to readed temperature variable.
   \return true if success.
   */
   bool read(int8_t address, float *humidity, float *temperature);

   /*!
   \fn void send(int8_t address, uint8_t data_0, uint8_t data_1, uint8_t data_2)
   \brief Send sensor command.
   \param address sensor i2c address.
   \param data_0 first byte data.
   \param data_1 second byte data.
   \param data_2 third byte data.
   \return void.
   */
   void send(int8_t address, uint8_t data_0, uint8_t data_1, uint8_t data_2);
};

#endif

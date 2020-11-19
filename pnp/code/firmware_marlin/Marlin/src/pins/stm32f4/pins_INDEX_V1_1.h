/**
 * Marlin 3D Printer Firmware
 * Copyright (c) 2020 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (c) 2011 Camiel Gubbels / Erik van der Zalm
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 */
#pragma once

/**
 * Custom STM32F407VET6/VGT6 pick and place machine board
 * based on the BLACK_STM32F407VE6 pin mapping.
 * 
 * https://www.github.com/sphawes/index
 * Motherboard v1.1
 */

#if !defined(STM32F4) && !defined(STM32F4xx)
  #error "Oops! Select an STM32F4 board in 'Tools > Board.'"
#elif HOTENDS > 3 || E_STEPPERS > 3
  #error "Index V1.1 supports up to 3 E-steppers."
#endif

#ifndef BOARD_INFO_NAME
  #define BOARD_INFO_NAME "Index V1.1"
#endif

#define DEFAULT_MACHINE_NAME "Index Pick and Place"

//#define I2C_EEPROM
#define SRAM_EEPROM_EMULATION
#define MARLIN_EEPROM_SIZE                0x2000  // 8KB

// No power supply control, or kill switch
#define PS_ON_PIN                           -1
#define KILL_PIN                            -1

//
// Servos
//
#define SERVO0_PIN                          PE11
#define SERVO1_PIN                          PE12

//
// Limit Switches
//
#define X_MIN_PIN                           PB15
#define X_MAX_PIN                           -1
#define Y_MIN_PIN                           PB13
#define Y_MAX_PIN                           -1
#define Z_MIN_PIN                           PC9
#define Z_MAX_PIN                           -1

//
// Steppers
//
#define X_STEP_PIN                          PD7
#define X_DIR_PIN                           PD6
#define X_ENABLE_PIN                        PB3

#define Y_STEP_PIN                          PD1
#define Y_DIR_PIN                           PD0
#define Y_ENABLE_PIN                        PD2

#define Z_STEP_PIN                          PE6
#define Z_DIR_PIN                           PE5
#define Z_ENABLE_PIN                        PC13

//E0 is a surrogate for the Rotation stepper, or "R"
//T0
#define E0_STEP_PIN                         PE3
#define E0_DIR_PIN                          PE2
#define E0_ENABLE_PIN                       PE4

//E1 is a surrogate for the paste extrusion stepper, or "P"
//T1
#define E1_STEP_PIN                         PB5
#define E1_DIR_PIN                          PB4
#define E1_ENABLE_PIN                       PB6

//E2 is a surrogate for the "C" stepper
//T2
#define E2_STEP_PIN                         PD4
#define E2_DIR_PIN                          PD3
#define E2_ENABLE_PIN                       PD5

//
// Temperature Sensors ( i.e. "ANALOG" input )
//
#define TEMP_0_PIN                          PC2   // T0
#define TEMP_1_PIN                          PC3   // T1
#define TEMP_2_PIN                          PC3   // T2

//
// Heaters
// 
#define HEATER_0_PIN                        PA1
#define HEATER_1_PIN                        PA1
#define HEATER_2_PIN                        PA1

// "FAN" pin ( MOSFETS )
#ifndef FAN_PIN
  #define FAN_PIN                           PC6 // Mosfet 1
#endif
#define FAN1_PIN                            PD15 // Mosfet 2
#define FAN2_PIN                            PD14 // Mosfet 3
#define FAN3_PIN                            PD13 // Mosfet 4
#define FAN4_PIN                            PC0 // VAC_1_SIG
#define FAN_SOFT_PWM                        // slow software PWM rather than hardware

// Neopixel Rings
#define NEOPIXEL_PIN                        PE13 
#define NEOPIXEL2_PIN                       PE14
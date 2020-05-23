/**
 * \file
 *
 * \brief SAM D21 Xplained Pro board configuration.
 *
 * Copyright (c) 2013-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */

#ifndef CONF_BOARD_H_INCLUDED
#define CONF_BOARD_H_INCLUDED

#include "conf_oracle.h"

// USART -- Debug HW Config
#define USART_DEBUG_MODULE			SERCOM3
#define USART_DEBUG_PINMUX_PAD0		PINMUX_PA22C_SERCOM3_PAD0
#define USART_DEBUG_PINMUX_PAD1		PINMUX_PA23C_SERCOM3_PAD1
#define USART_DEBUG_PINMUX_PAD2		PINMUX_UNUSED
#define USART_DEBUG_PINMUX_PAD3		PINMUX_UNUSED
#define USART_DEBUG_BAUDRATE		115200
#define USART_DEBUG_MUX_SETTING		USART_RX_1_TX_0_XCK_1

#define I2C_MASTER_MODULE			SERCOM2
#define I2C_MASTER_PINMUX_PAD0		PINMUX_PA08D_SERCOM2_PAD0
#define I2C_MASTER_PINMUX_PAD1		PINMUX_PA09D_SERCOM2_PAD1

// GPIO -- SSD1963 Display Controller
#define SSD1963_TFT_DATA_MASK		(0x1C03C3F7)
#define SSD1963_TFT_DATA_PORT		((PortGroup*)&PORT->Group[1])
#define SSD1963_TFT_DATA_DIR		PORT_PIN_DIR_OUTPUT
#define SSD1963_TFT_DATA_PULL		PORT_PIN_PULL_NONE

#define SSD1963_TFT_nRST			PIN_PA04
#define SSD1963_TFT_RSDC			PIN_PA05
#define SSD1963_TFT_nCS				PIN_PA06
#define SSD1963_TFT_WR				PIN_PA07
#define SSD1963_TFT_RD				PIN_PA10


#endif /* CONF_BOARD_H_INCLUDED */

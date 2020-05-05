/*
 * pc_board.h
 *
 * Created: 5/3/2020 6:47:40 PM
 *  Author: Penguin
 */ 
#ifndef _PC_BOARD_H_
#define _PC_BOARD_H_

#include <hal_gpio.h>

// SAME54 has 14 pin functions
#define GPIO_PIN_FUNCTION_A 0
#define GPIO_PIN_FUNCTION_B 1
#define GPIO_PIN_FUNCTION_C 2
#define GPIO_PIN_FUNCTION_D 3
#define GPIO_PIN_FUNCTION_E 4
#define GPIO_PIN_FUNCTION_F 5
#define GPIO_PIN_FUNCTION_G 6
#define GPIO_PIN_FUNCTION_H 7
#define GPIO_PIN_FUNCTION_I 8
#define GPIO_PIN_FUNCTION_J 9
#define GPIO_PIN_FUNCTION_K 10
#define GPIO_PIN_FUNCTION_L 11
#define GPIO_PIN_FUNCTION_M 12
#define GPIO_PIN_FUNCTION_N 13

// I2C Config
#define I2C_MASTER_SDA (GPIO_PORTA, 22)
#define I2C_MASTER_SCL (GPIO_PORTA, 23)

// Debug USART Config
#define USART_DEBUG_RX GPIO(GPIO_PORTB, 24)
#define USART_DEBUG_TX GPIO(GPIO_PORTB, 25)

#endif
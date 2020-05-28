/*
 * oracle.c
 *
 * Created: 5/3/2020 7:24:09 PM
 *  Author: Penguin
 */ 
#include "oracle.h"
#include "p_usart.h"
#include "p_gpio.h"
#include "p_i2c.h"
#include "p_tcc.h"
#include "lvgl/lvgl.h"
#include "p_ssd1963.h"
#include "p_screen.h"

	
void oracle_init(void)
{
	// init mcu
	init_mcu();
	// uart init
	p_usart_init();
	// i2c init
	p_i2c_init();
	// gpio init
	p_gpio_init();
	// time init
	p_tcc_init();

	p_screen_init();
}

void oracle_service(void)
{
	p_screen_service();
}
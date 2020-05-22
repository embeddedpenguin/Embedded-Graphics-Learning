/*
 * oracle.h
 *
 * Created: 5/3/2020 7:05:17 PM
 *  Author: Penguin
 */ 
#ifndef _ORACLE_H_
#define _ORACLE_H_
#include "pc_board.h"
#include "pc_master.h"
#include <hal_atomic.h>
#include <hal_delay.h>
#include <hal_gpio.h>
#include <hal_init.h>
#include <hal_io.h>
#include <hal_sleep.h>

#include <hal_ext_irq.h>

#include <hal_usart_async.h>

#include <hal_i2c_m_sync.h>
#include <hal_timer.h>
#include <hpl_tc_base.h>

#include <peripheral_clk_config.h>
#include <utils.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

typedef enum p_err
{
	PE_GOOD = 0x0,		//
	PE_BAD  = 0x1		//
}p_err;

typedef enum p_log_level
{
	PE_LOG_NONE = 0
}p_log_level;
void oracle_init(void);

int p_qprint(const char* str, ...);

int p_lprint(const char* str, ...);

void oracle_init(void);

#endif
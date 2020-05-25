#include "p_usart.h"
#include "p_time.h"

#include "lvgl.h"

#include <stdarg.h>
#include <string.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>
static struct usart_module p_debug_inst;

volatile uint16_t rx_char;

static const char level_strings[5][16] =
{
	{"TRACE"},
	{"INFO"},
	{"WARN"},
	{"ERROR"},
	{"NONE"},
};

static void p_debug_intf_cb(lv_log_level_t level, const char* file_name, uint32_t line_num, const char* description)
{
	p_printf("[%s][LVGL][%s][%s][%lu][%s]\n", p_get_time_str(), level_strings[level], file_name, line_num, description);
}

static void p_debug_rx_cb(struct usart_module* const mod)
{
	p_printf("%c", (char)rx_char);
}
void p_usart_init(void)
{
	struct usart_config p_debug_conf;
	usart_get_config_defaults(&p_debug_conf);
	p_debug_conf.baudrate =		USART_DEBUG_BAUDRATE;
	p_debug_conf.character_size = USART_CHARACTER_SIZE_8BIT;
	p_debug_conf.parity =		USART_PARITY_NONE;
	p_debug_conf.stopbits =		USART_STOPBITS_1;
	p_debug_conf.pinmux_pad0 =	USART_DEBUG_PINMUX_PAD0;
	p_debug_conf.pinmux_pad1 =	USART_DEBUG_PINMUX_PAD1;
	p_debug_conf.pinmux_pad2 =	USART_DEBUG_PINMUX_PAD2;
	p_debug_conf.pinmux_pad3 =	USART_DEBUG_PINMUX_PAD3;
	p_debug_conf.mux_setting =	USART_DEBUG_MUX_SETTING;
	
	usart_init(&p_debug_inst, USART_DEBUG_MODULE, &p_debug_conf);
	usart_enable(&p_debug_inst);
	
	usart_register_callback(&p_debug_inst, p_debug_rx_cb, USART_CALLBACK_BUFFER_RECEIVED);
	usart_enable_callback(&p_debug_inst, USART_CALLBACK_BUFFER_RECEIVED);
	
	p_printf("USART INIT\n");
	lv_log_register_print_cb(p_debug_intf_cb);
}

void p_printf(const char* str, ...)
{
	volatile uint8_t pprint_buffer[ORACLE_DEBUG_PRINT_BUFF_SIZE + 1];
	memset(pprint_buffer, '\0', ORACLE_DEBUG_PRINT_BUFF_SIZE + 1);
	va_list args;
	va_start(args, str);
	vsprintf(pprint_buffer, str, args);
	va_end(args);
	uint16_t strsize = (uint16_t)strlen(pprint_buffer);
	if(strsize > ORACLE_DEBUG_PRINT_BUFF_SIZE)
	{
		// return error
		return;
	}
	usart_write_buffer_wait(&p_debug_inst, pprint_buffer, strsize);
	usart_read_job(&p_debug_inst, &rx_char);
}

void p_debug_start_service(void)
{
	usart_read_job(&p_debug_inst, &rx_char);
}

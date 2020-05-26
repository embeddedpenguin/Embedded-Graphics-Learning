#ifndef _P_GPIO_H_
#define _P_GPIO_H_

#include "oracle.h"

#define SSD1963_TFT_DATA_FIX(x)			((x & 0x07)			|	\
										((x & 0x1F8) << 1)	|	\
										((x & 0x1E00) << 5)	|	\
										((x & 0xE000) << 13))

typedef struct p_port_config
{
	enum gpio_pull_mode pull_mode;
	enum gpio_direction direction;
	uint32_t function;
}p_port_config;

void p_gpio_init(void);

void p_gpio_parallel_write(PortGroup* group, uint32_t mask, uint32_t data);

void p_gpio_parallel_write_arr(PortGroup* group, uint32_t mask, uint32_t* data, uint32_t len);

void p_gpio_set_port_data(PortGroup* const port, const uint32_t mask, const uint32_t data);

void p_gpio_set_port_group_config(enum gpio_port port, const uint32_t mask, p_port_config* config);
#endif
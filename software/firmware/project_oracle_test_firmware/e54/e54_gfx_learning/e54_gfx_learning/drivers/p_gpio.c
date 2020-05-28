#include "p_gpio.h"

static void p_weird_delay(void)
{
	for(int x = 0; x < 8; x++)
	{
		asm volatile("nop");
	}
}
void p_gpio_init(void)
{
	// set data port config
	p_port_config data_config;
	memset(&data_config, 0, sizeof(data_config));
	data_config.direction = GPIO_DIRECTION_OUT;
	data_config.pull_mode = GPIO_PULL_OFF;
	data_config.function = GPIO_PIN_FUNCTION_OFF;
	p_gpio_set_port_group_config(SSD1963_TFT_DATA_PORT, SSD1963_TFT_DATA_MASK, &data_config);
	
	// set lcd control pin configs
	// Chip select
	gpio_set_pin_direction(SSD1963_TFT_CS, GPIO_DIRECTION_OUT);
	gpio_set_pin_pull_mode(SSD1963_TFT_CS, GPIO_PULL_OFF);
	gpio_set_pin_function(SSD1963_TFT_CS, GPIO_PIN_FUNCTION_OFF);
	
	// Reset pin
	gpio_set_pin_direction(SSD1963_TFT_nRST, GPIO_DIRECTION_OUT);
	gpio_set_pin_pull_mode(SSD1963_TFT_nRST, GPIO_PULL_OFF);
	gpio_set_pin_function(SSD1963_TFT_nRST, GPIO_PIN_FUNCTION_OFF);
	
	// Read pin
	gpio_set_pin_direction(SSD1963_TFT_RD, GPIO_DIRECTION_OUT);
	gpio_set_pin_pull_mode(SSD1963_TFT_RD, GPIO_PULL_OFF);
	gpio_set_pin_function(SSD1963_TFT_RD, GPIO_PIN_FUNCTION_OFF);
	
	
	// RSDC pin, aka Read/Send Data/Command pin
	gpio_set_pin_direction(SSD1963_TFT_RSDC, GPIO_DIRECTION_OUT);
	gpio_set_pin_pull_mode(SSD1963_TFT_RSDC, GPIO_PULL_OFF);
	gpio_set_pin_function(SSD1963_TFT_RSDC, GPIO_PIN_FUNCTION_OFF);
	
	
	// Write Pin
	gpio_set_pin_direction(SSD1963_TFT_WR, GPIO_DIRECTION_OUT);
	gpio_set_pin_pull_mode(SSD1963_TFT_WR, GPIO_PULL_OFF);
	gpio_set_pin_function(SSD1963_TFT_WR, GPIO_PIN_FUNCTION_OFF);
	
	// TE, tear enable, aka frame sync
	gpio_set_pin_direction(SSD1963_TFT_TE, GPIO_DIRECTION_IN);
	gpio_set_pin_pull_mode(SSD1963_TFT_TE, GPIO_PULL_DOWN);
	gpio_set_pin_function(SSD1963_TFT_TE, GPIO_PIN_FUNCTION_OFF);
	
	gpio_set_pin_level(SSD1963_TFT_CS, 1);
	gpio_set_pin_level(SSD1963_TFT_nRST, 1);
	gpio_set_pin_level(SSD1963_TFT_RD, 1);
	gpio_set_pin_level(SSD1963_TFT_WR, 1);

	

}

void p_gpio_parallel_write(PortGroup* group, uint32_t mask, uint16_t data)
{
	gpio_set_pin_level(SSD1963_TFT_CS, 0);
	p_gpio_set_port_data(group, mask, (uint32_t)data);
	gpio_set_pin_level(SSD1963_TFT_WR, 0);
	gpio_set_pin_level(SSD1963_TFT_WR, 1);
	
	gpio_set_pin_level(SSD1963_TFT_CS, 1);
}

void p_gpio_parallel_write_arr(PortGroup* group, uint32_t mask, uint16_t* data, uint16_t len)
{
	for(int ind = 0; ind < len; ind++)
	{
		p_gpio_parallel_write(group, mask, data[ind]);
	}
}

void p_gpio_set_port_data(PortGroup* const port, const uint32_t mask, const uint32_t data)
{
	uint32_t dword = (uint32_t)(SSD1963_TFT_DATA_FIX(data));
	port->OUTSET.reg = (mask & dword);
	port->OUTCLR.reg = (mask & ~dword);
}

void p_gpio_set_port_group_config(enum gpio_port port, const uint32_t mask, p_port_config* config)
{
	for(uint8_t i = 0; i < 32; i++)
	{
		if(mask & (1UL << i))
		{
			uint32_t _gpio_pin = GPIO(port, i);
			gpio_set_pin_direction(_gpio_pin, config->direction);
			gpio_set_pin_pull_mode(_gpio_pin, config->pull_mode);
			gpio_set_pin_function(_gpio_pin, config->function);
			gpio_set_pin_level(_gpio_pin, 0);
		}
		
	}
}



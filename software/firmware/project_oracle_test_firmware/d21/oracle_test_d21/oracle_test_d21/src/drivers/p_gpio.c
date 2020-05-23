#include "p_gpio.h"

void p_gpio_init(void)
{
	struct port_config data_port_config;
	port_get_config_defaults(&data_port_config);
	data_port_config.direction = SSD1963_TFT_DATA_DIR;
	data_port_config.input_pull = SSD1963_TFT_DATA_PULL;
	port_group_set_config(SSD1963_TFT_DATA_PORT, SSD1963_TFT_DATA_MASK, &data_port_config);
	
	struct port_config ssd1963_ctrl_pins_conf;
	port_get_config_defaults(&ssd1963_ctrl_pins_conf);
	ssd1963_ctrl_pins_conf.input_pull = PORT_PIN_PULL_NONE;
	ssd1963_ctrl_pins_conf.direction = PORT_PIN_DIR_OUTPUT;
	
	port_pin_set_config(SSD1963_TFT_nRST, &ssd1963_ctrl_pins_conf);
	port_pin_set_config(SSD1963_TFT_RSDC, &ssd1963_ctrl_pins_conf);
	port_pin_set_config(SSD1963_TFT_nCS, &ssd1963_ctrl_pins_conf);
	port_pin_set_config(SSD1963_TFT_WR, &ssd1963_ctrl_pins_conf);
	port_pin_set_config(SSD1963_TFT_RD, &ssd1963_ctrl_pins_conf);
	
	port_pin_set_output_level(SSD1963_TFT_nRST, 1);
	port_pin_set_output_level(SSD1963_TFT_RSDC, 1);
	port_pin_set_output_level(SSD1963_TFT_nCS, 1);
	port_pin_set_output_level(SSD1963_TFT_WR, 1);
	port_pin_set_output_level(SSD1963_TFT_RD, 1);
}


void p_gpio_parallel_wr_word(PortGroup* group, uint32_t mask, uint32_t data)
{
	port_group_set_output_level(group, mask, data);
	port_pin_set_output_level(SSD1963_TFT_WR, 0);
	port_pin_set_output_level(SSD1963_TFT_WR, 1);
}

void p_gpio_parallel_wr_arr(PortGroup* group, uint32_t mask, uint32_t* data, uint32_t len)
{
	for(int ind = 0; ind < len; ind++)
	{
		p_gpio_parallel_wr_word(group, mask, data[ind]);
	}
}

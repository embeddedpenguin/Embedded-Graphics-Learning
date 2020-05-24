#ifndef _P_GPIO_H_
#define _P_GPIO_H_

#include "oracle.h"

void p_gpio_init(void);

void p_gpio_parallel_wr_word(PortGroup* group, uint32_t mask, uint32_t data);

void p_gpio_parallel_wr_arr(PortGroup* group, uint32_t mask, uint32_t* data, uint32_t len);

#define LV_DRV_DELAY_MS(x)			delay_ms(x)
#define LV_DRV_DISP_CMD_DATA(x)		port_pin_set_output_level(SSD1963_TFT_RSDC, x)
#define LV_DRV_DISP_RST(x)			port_pin_set_output_level(SSD1963_TFT_nRST, x)
#define LV_DRV_DISP_PAR_WR_WORD(x)	p_gpio_parallel_wr_word(SSD1963_TFT_DATA_PORT, SSD1963_TFT_DATA_MASK, x)
#define LV_DRV_DISP_PAR_WR_ARRAY(x, n)	p_gpio_parallel_wr_arr(SSD1963_TFT_DATA_PORT, SSD1963_TFT_DATA_MASK, x, n)
#define LV_DRV_DISP_PAR_CS(x)		port_pin_set_output_level(SSD1963_TFT_nCS, x)
#endif
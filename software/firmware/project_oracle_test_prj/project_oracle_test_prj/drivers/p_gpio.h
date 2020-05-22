#ifndef _P_GPIO_H_
#define _P_GPIO_H_

void p_gpio_init(void);

void p_gpio_parallel_write(PortGroup* group, uint32_t mask, uint32_t data);

void p_gpio_parallel_write_arr(PortGroup* group, uint32_t mask, uint32_t* data, uint32_t len);
#endif
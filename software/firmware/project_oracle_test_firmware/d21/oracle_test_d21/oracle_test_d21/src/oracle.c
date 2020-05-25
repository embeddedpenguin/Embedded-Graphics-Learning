#include "oracle.h"

#include "p_usart.h"
#include "p_i2c.h"
#include "p_gpio.h"
#include "p_time.h"

#include "lvgl.h"
#include "p_ssd1963.h"

#include "hornet.h"

static lv_disp_buf_t disp_buf;
static lv_color_t buf[LV_HOR_RES_MAX * 10];                     /*Declare a buffer for 10 lines*/
void oracle_init(void)
{
	system_init();
	
	system_interrupt_enable_global();
	
	p_usart_init();
	p_i2c_init();
	p_gpio_init();
	p_time_init();
	
	
	lv_init();
	
	ssd1963_init();
	lv_disp_buf_init(&disp_buf, buf, NULL, LV_HOR_RES_MAX * 10);    /*Initialize the display buffer*/
	lv_disp_drv_t disp_drv;               /*Descriptor of a display driver*/
	lv_disp_drv_init(&disp_drv);          /*Basic initialization*/
	disp_drv.flush_cb = ssd1963_flush;    /*Set your driver function*/
	disp_drv.buffer = &disp_buf;          /*Assign the buffer to the display*/
	lv_disp_drv_register(&disp_drv);      /*Finally register the driver*/
	
	lv_obj_t* scr = lv_disp_get_scr_act(NULL);
	
	
	lv_obj_t* hornet_image = lv_img_create(scr, NULL);
	lv_img_set_src(hornet_image, &hornet);
	lv_obj_set_pos(hornet_image, 0, 0);
	
	lv_obj_t* random_text = lv_label_create(scr, NULL);
	lv_obj_set_pos(random_text, 90, 35);
	lv_label_set_text(random_text, "Hello World");

	p_debug_start_service();
}

void oracle_service(void)
{
	delay_ms(1);
	lv_task_handler();
}
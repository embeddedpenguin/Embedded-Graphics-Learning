/*
 * p_screen.c
 *
 * Created: 5/28/2020 3:41:15 AM
 *  Author: Penguin
 */ 
#include "p_screen.h"
#include "p_ssd1963.h"
#include "lvgl/lvgl.h"
#include "hornet.h"

static lv_disp_buf_t disp_buf;
static lv_color_t buf[LV_HOR_RES_MAX * 34];                     /*Declare a buffer for 10 lines*/

void p_screen_init(void)
{
	// devices init
	lv_init();
		
	ssd1963_init();
		
		
	lv_disp_buf_init(&disp_buf, buf, NULL, LV_HOR_RES_MAX * 34);    /*Initialize the display buffer*/
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
}

void p_screen_service(void)
{
	lv_task_handler();
}
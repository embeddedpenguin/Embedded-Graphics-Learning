#include "p_ssd1963.h"
#include "p_gpio.h"
#define LV_DRV_DELAY_MS(x)			delay_ms(x)
#define LV_DRV_DISP_CMD_DATA(x)		gpio_set_pin_level(SSD1963_TFT_RSDC, x)
#define LV_DRV_DISP_RST(x)			gpio_set_pin_level(SSD1963_TFT_nRST, x)
#define LV_DRV_DISP_PAR_WR_WORD(x)	p_gpio_parallel_write(SSD1963_TFT_DATA_PORT_GROUP, SSD1963_TFT_DATA_MASK, x)
#define LV_DRV_DISP_PAR_WR_ARRAY(x, n)	p_gpio_parallel_write_arr(SSD1963_TFT_DATA_PORT_GROUP, SSD1963_TFT_DATA_MASK, x, n)
#define LV_DRV_DISP_PAR_CS(x)		gpio_set_pin_level(SSD1963_TFT_CS, x)
/**
 * @file SSD1963.c
 *
 */

/*********************
 *      INCLUDES
 *********************/
#include "p_ssd1963.h"
#if USE_SSD1963

#include <stdbool.h>
/*********************
 *      DEFINES
 *********************/
#define SSD1963_CMD_MODE     0
#define SSD1963_DATA_MODE    1

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 *  STATIC PROTOTYPES
 **********************/
static inline void ssd1963_cmd_mode(void);
static inline void ssd1963_data_mode(void);
static inline void ssd1963_cmd(uint8_t cmd);
static inline void ssd1963_data(uint8_t data);
static void ssd1963_io_init(void);
static void ssd1963_reset(void);
static void ssd1963_set_clk(void);
static void ssd1963_set_tft_spec(void);
static void ssd1963_init_bl(void);

/**********************
 *  STATIC VARIABLES
 **********************/
static bool cmd_mode = true;

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/

void ssd1963_init(void)
{
	ssd1963_reset();
	LV_DRV_DISP_PAR_CS(0);
	ssd1963_cmd(0xE2);    //PLL multiplier, set PLL clock to 120M
	//ssd1963_data(0x23);   //N=0x36 for 6.5M, 0x23 for 10M crystal
	//ssd1963_data(0x02);
	//ssd1963_data(0x54);
	ssd1963_data(0x2F);   //N=0x36 for 6.5M, 0x23 for 10M crystal
	ssd1963_data(0x03);
	ssd1963_data(0x54);
	
	ssd1963_cmd(0xE0);    // PLL enable
	ssd1963_data(0x01);
	delay_us(100);
	ssd1963_cmd(0xE0);
	ssd1963_data(0x03);   // now, use PLL output as system clock
	delay_ms(1);
	ssd1963_cmd(0x01);
	delay_ms(1);

	ssd1963_cmd(0xE6);    //PLL setting for PCLK, depends on resolution
	//ssd1963_data(0x04);
	//ssd1963_data(0x3A);
	//ssd1963_data(0xB6);
	//ssd1963_data(0x01);
	//ssd1963_data(0x55);
	//ssd1963_data(0x54);
	ssd1963_data(0x01);
	ssd1963_data(0xCC);
	ssd1963_data(0xCC);
	ssd1963_cmd(0xB0);
	ssd1963_data(0x28);                // set 18-bit for 7" panel TY700TFT800480
	ssd1963_data(0x80);                // set TTL mode
	ssd1963_data((SSD1963_HOR_RES-1)>>8); //Set panel size
	ssd1963_data(SSD1963_HOR_RES-1);
	ssd1963_data((SSD1963_VER_RES-1)>>8);
	ssd1963_data(SSD1963_VER_RES-1);
	ssd1963_data(0x00);
	
	ssd1963_cmd(0xF0);    //Pixel Data Interface Format
	ssd1963_data(0x03);   //16-bit(565 format) data
	
	
	ssd1963_cmd(0x3A);    //Set the current pixel format for RGB image data
	ssd1963_data(0x55);   //16-bit/pixel

	ssd1963_cmd(0xb4);          //SET HBP,
	ssd1963_data(0x02);      //SET HSYNC Tatol 525
	ssd1963_data(0x0d);
	ssd1963_data(0x00);      //SET HBP 43
	ssd1963_data(0x2b);
	ssd1963_data(0x28);      //SET VBP 41=40+1
	ssd1963_data(0x00);      //SET Hsync pulse start position
	ssd1963_data(0x00);
	ssd1963_data(0x00);      //SET Hsync pulse subpixel start position

	ssd1963_cmd(0xb6);          //SET VBP,
	ssd1963_data(0x01);      //SET Vsync total 286=285+1
	ssd1963_data(0x1d);
	ssd1963_data(0x00);      //SET VBP=12
	ssd1963_data(0x0c);
	ssd1963_data(0x09);      //SET Vsync pulse 10=9+1
	ssd1963_data(0x00);      //SET Vsync pulse start position
	ssd1963_data(0x00);
	
	
	ssd1963_cmd(0x2a);		//SET column address
	ssd1963_data(0x00);			//SET start column address=0
	ssd1963_data(0x00);
	ssd1963_data(0x01);			//SET end column address=479
	ssd1963_data(0xDF);

	ssd1963_cmd(0x2b);		//SET page address
	ssd1963_data(0x00);			//SET start page address=0
	ssd1963_data(0x00);
	ssd1963_data(0x01);			//SET end page address=271
	ssd1963_data(0x0F);

	ssd1963_cmd(0x29); //display on
	ssd1963_cmd(0xBE);
	ssd1963_data(0x06);
	ssd1963_data(0xFF);
	ssd1963_data(0x01);
	ssd1963_data(0xFF);
	ssd1963_data(0x00);
	ssd1963_data(0x01);

	LV_DRV_DISP_PAR_CS(1);
}

void ssd1963_flush(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p)
{

    /*Return if the area is out the screen*/
    if(area->x2 < 0) return;
    if(area->y2 < 0) return;
    if(area->x1 > SSD1963_HOR_RES - 1) return;
    if(area->y1 > SSD1963_VER_RES - 1) return;

    /*Truncate the area to the screen*/
    int32_t act_x1 = area->x1 < 0 ? 0 : area->x1;
    int32_t act_y1 = area->y1 < 0 ? 0 : area->y1;
    int32_t act_x2 = area->x2 > SSD1963_HOR_RES - 1 ? SSD1963_HOR_RES - 1 : area->x2;
    int32_t act_y2 = area->y2 > SSD1963_VER_RES - 1 ? SSD1963_VER_RES - 1 : area->y2;

    //Set the rectangular area
    ssd1963_cmd(0x002A);
    ssd1963_data(act_x1 >> 8);
    ssd1963_data(0x00FF & act_x1);
    ssd1963_data(act_x2 >> 8);
    ssd1963_data(0x00FF & act_x2);

    ssd1963_cmd(0x002B);
    ssd1963_data(act_y1 >> 8);
    ssd1963_data(0x00FF & act_y1);
    ssd1963_data(act_y2 >> 8);
    ssd1963_data(0x00FF & act_y2);

    ssd1963_cmd(0x2c);
    int16_t i;
    uint16_t full_w = area->x2 - area->x1 + 1;

    ssd1963_data_mode();
    LV_DRV_DISP_PAR_CS(0);
#if LV_COLOR_DEPTH == 16
    uint16_t act_w = act_x2 - act_x1 + 1;
    for(i = act_y1; i <= act_y2; i++) {
        LV_DRV_DISP_PAR_WR_ARRAY((uint16_t *)color_p, act_w);
        color_p += full_w;
    }
    LV_DRV_DISP_PAR_CS(1);
#else
    int16_t j;
    for(i = act_y1; i <= act_y2; i++) {
        for(j = 0; j <= act_x2 - act_x1 + 1; j++) {
            LV_DRV_DISP_PAR_WR_WORD(color_p[j]);
            color_p += full_w;
        }
    }
#endif

    lv_disp_flush_ready(disp_drv);
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

static void ssd1963_io_init(void)
{
    LV_DRV_DISP_CMD_DATA(SSD1963_CMD_MODE);
    cmd_mode = true;
}

static void ssd1963_reset(void)
{
    /*Hardware reset*/
	asm volatile("nop");
    LV_DRV_DISP_RST(1);
    LV_DRV_DELAY_MS(50);
    LV_DRV_DISP_RST(0);
	asm volatile("nop");
    LV_DRV_DELAY_MS(50);
    LV_DRV_DISP_RST(1);
    LV_DRV_DELAY_MS(50);

	asm volatile("nop");
    /*Chip enable*/
    LV_DRV_DISP_PAR_CS(0);
    LV_DRV_DELAY_MS(10);
    LV_DRV_DISP_PAR_CS(1);
    LV_DRV_DELAY_MS(5);

    /*Software reset*/
    ssd1963_cmd(0x01);
    LV_DRV_DELAY_MS(20);

    ssd1963_cmd(0x01);
    LV_DRV_DELAY_MS(20);

    ssd1963_cmd(0x01);
    LV_DRV_DELAY_MS(20);

}

/**
 * Command mode
 */
static inline void ssd1963_cmd_mode(void)
{
    if(cmd_mode == false) {
        LV_DRV_DISP_CMD_DATA(SSD1963_CMD_MODE);
        cmd_mode = true;
    }
}

/**
 * Data mode
 */
static inline void ssd1963_data_mode(void)
{
    if(cmd_mode != false) {
        LV_DRV_DISP_CMD_DATA(SSD1963_DATA_MODE);
        cmd_mode = false;
    }
}

/**
 * Write command
 * @param cmd the command
 */
static inline void ssd1963_cmd(uint8_t cmd)
{

    LV_DRV_DISP_PAR_CS(0);
    ssd1963_cmd_mode();
    LV_DRV_DISP_PAR_WR_WORD(cmd);
    LV_DRV_DISP_PAR_CS(1);

}

/**
 * Write data
 * @param data the data
 */
static inline void ssd1963_data(uint8_t data)
{

    LV_DRV_DISP_PAR_CS(0);
    ssd1963_data_mode();
    LV_DRV_DISP_PAR_WR_WORD(data);
    LV_DRV_DISP_PAR_CS(1);

}

#endif
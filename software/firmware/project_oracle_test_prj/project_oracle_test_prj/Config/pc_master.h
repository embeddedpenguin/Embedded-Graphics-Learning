/*
 * pc_master.h
 *
 * Created: 5/3/2020 6:47:27 PM
 *  Author: Penguin
 */ 
#ifndef _PC_MASTER_H_
#define _PC_MASTER_H_

// usart debug settings
#define DEBUG_MAX_BUFFER_SIZE (128)


/*----------------
 *    SSD1963
 *--------------*/
#ifndef USE_SSD1963
#  define USE_SSD1963         1
#endif

#if USE_SSD1963
#  define SSD1963_HOR_RES     LV_HOR_RES
#  define SSD1963_VER_RES     LV_VER_RES
#  define SSD1963_HT          531
#  define SSD1963_HPS         43
#  define SSD1963_LPS         8
#  define SSD1963_HPW         10
#  define SSD1963_VT          288
#  define SSD1963_VPS         12
#  define SSD1963_FPS         4
#  define SSD1963_VPW         10
#  define SSD1963_HS_NEG      0   /*Negative hsync*/
#  define SSD1963_VS_NEG      0   /*Negative vsync*/
#  define SSD1963_ORI         0   /*0, 90, 180, 270*/
#  define SSD1963_COLOR_DEPTH 16
#endif
#endif
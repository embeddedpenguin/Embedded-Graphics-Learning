#include "p_time.h"
#include "p_usart.h"
#include "lvgl.h"
static volatile uint64_t sys_time = 0;
char sys_time_str[P_SYS_TIME_STR_MAX_LEN];
void p_time_init(void)
{
	memset(sys_time_str, '\0', P_SYS_TIME_STR_MAX_LEN);
	// Configure SysTick to trigger every millisecond using the CPU Clock
	SysTick->CTRL = 0;					// Disable SysTick
	SysTick->LOAD = 7999UL;				// Set reload register for 1mS interrupts
	NVIC_SetPriority(SysTick_IRQn, 3);	// Set interrupt priority to least urgency
	SysTick->VAL = 0;					// Reset the SysTick counter value
	SysTick->CTRL = 0x00000007;			// Enable SysTick, Enable SysTick Exceptions, Use CPU Clock
	NVIC_EnableIRQ(SysTick_IRQn);		// Enable SysTick Interrupt
}


 void SysTick_Handler(void)
 {
	 sys_time++;
	 lv_tick_inc(1);
 }

const char* p_get_time_str(void)
{
	uint16_t millis = sys_time % 1000;
	// remove millis portion
	uint32_t current_time = sys_time / 1000;
	uint8_t hour = ((current_time % 86400UL) / 3600); // 86400 seconds per day
	uint8_t minute = ((current_time % 3600) / 60);
	uint8_t _sec = (current_time % 60);
	memset(sys_time_str, '\0', P_SYS_TIME_STR_MAX_LEN);
	snprintf(sys_time_str, P_SYS_TIME_STR_MAX_LEN, "[%02u:%02u:%02u:%03u]",
	hour, minute, _sec, millis);
	return sys_time_str;
}

uint64_t p_sys_time(void)
{
	return sys_time;
}
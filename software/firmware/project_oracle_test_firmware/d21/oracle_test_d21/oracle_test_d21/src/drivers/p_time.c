#include "p_time.h"
#include "p_usart.h"
#include "lvgl.h"
static volatile uint64_t sys_time = 0;
void p_time_init(void)
{
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

#include "p_tcc.h"
#include "lvgl/lvgl.h"
static struct timer_task TIMER_0_task1, TIMER_0_task2;
struct timer_descriptor p_tcc_inst;

static volatile uint64_t sys_time = 0;
/**
 * Example of using TIMER_0.
 */
static void TIMER_0_task1_cb(const struct timer_task *const timer_task)
{
	sys_time++;
	lv_tick_inc(1);
}

static void TIMER_0_task2_cb(const struct timer_task *const timer_task)
{
}

void TIMER_0_example(void)
{
	TIMER_0_task1.interval = 1;
	TIMER_0_task1.cb       = TIMER_0_task1_cb;
	TIMER_0_task1.mode     = TIMER_TASK_REPEAT;
	//TIMER_0_task2.interval = 200;
	//TIMER_0_task2.cb       = TIMER_0_task2_cb;
	//TIMER_0_task2.mode     = TIMER_TASK_REPEAT;

	timer_add_task(&p_tcc_inst, &TIMER_0_task1);
	//timer_add_task(&p_tcc_inst, &TIMER_0_task2);
	timer_start(&p_tcc_inst);
}

void p_tcc_init(void)
{
	delay_init(SysTick);
	hri_mclk_set_APBAMASK_TC0_bit(MCLK);
	hri_gclk_write_PCHCTRL_reg(GCLK, TC0_GCLK_ID, CONF_GCLK_TC0_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	timer_init(&p_tcc_inst, TC0, _tc_get_timer());
	
	TIMER_0_task1.interval = 1;
	TIMER_0_task1.cb       = TIMER_0_task1_cb;
	TIMER_0_task1.mode     = TIMER_TASK_REPEAT;
	//TIMER_0_task2.interval = 200;
	//TIMER_0_task2.cb       = TIMER_0_task2_cb;
	//TIMER_0_task2.mode     = TIMER_TASK_REPEAT;
	
	timer_add_task(&p_tcc_inst, &TIMER_0_task1);
	//timer_add_task(&p_tcc_inst, &TIMER_0_task2);
	timer_start(&p_tcc_inst);
}

#include "p_i2c.h"

struct i2c_m_sync_desc p_i2c_master;

void p_i2c_init(void)
{
	// clock init
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM3_GCLK_ID_CORE, CONF_GCLK_SERCOM3_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM3_GCLK_ID_SLOW, CONF_GCLK_SERCOM3_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBBMASK_SERCOM3_bit(MCLK);
	
	i2c_m_sync_init(&p_i2c_master, I2C_MASTER_SERCOM);
	
	// port init
	gpio_set_pin_pull_mode(I2C_MASTER_SDA, GPIO_PULL_OFF);
	gpio_set_pin_function(I2C_MASTER_SDA, I2C_MASTER_SDA_MUX);
	gpio_set_pin_pull_mode(I2C_MASTER_SCL, GPIO_PULL_OFF);
	gpio_set_pin_function(I2C_MASTER_SCL, I2C_MASTER_SCL_MUX);
}

//
//void I2C_0_example(void)
//{
	//struct io_descriptor *I2C_0_io;
//
	//i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
	//i2c_m_sync_enable(&I2C_0);
	//i2c_m_sync_set_slaveaddr(&I2C_0, 0x12, I2C_M_SEVEN);
	//io_write(I2C_0_io, (uint8_t *)"Hello World!", 12);
//}
//

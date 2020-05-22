#include "p_usart.h"

#define DEBUG_USART_EX_BUFF_SIZE		16
struct usart_async_descriptor p_usart_debug_inst;

static uint8_t example_USART_0[12] = "Hello World!";

static uint8_t debug_buffer[DEBUG_MAX_BUFFER_SIZE];
static uint8_t debug_rx_buff[DEBUG_USART_EX_BUFF_SIZE];
void p_usart_init(void)
{
	// clock init
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM2_GCLK_ID_CORE, CONF_GCLK_SERCOM2_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM2_GCLK_ID_SLOW, CONF_GCLK_SERCOM2_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBBMASK_SERCOM2_bit(MCLK);
	
	usart_async_init(&p_usart_debug_inst, USART_DEBUG_SERCOM, debug_rx_buff, DEBUG_USART_EX_BUFF_SIZE, (void*)NULL);
	
	// port init
	gpio_set_pin_function(USART_DEBUG_RX, USART_DEBUG_RX_MUX);
	gpio_set_pin_function(USART_DEBUG_TX, USART_DEBUG_TX_MUX);
	
	usart_async_enable(&p_usart_debug_inst);
	
	io_write(&p_usart_debug_inst.io, example_USART_0, 12);
	
	
}

void p_write(struct usart_async_descriptor* const inst, const uint8_t* data, uint16_t len)
{
	
}

void p_debug(const char* str, ...)
{
	
}



/**
 * Example of using USART_0 to write "Hello World" using the IO abstraction.
 *
 * Since the driver is asynchronous we need to use statically allocated memory for string
 * because driver initiates transfer and then returns before the transmission is completed.
 *
 * Once transfer has been completed the tx_cb function will be called.
 */
static void tx_cb_USART_0(const struct usart_async_descriptor *const io_descr)
{
	/* Transfer completed */
}
//
//void USART_0_example(void)
//{
	//struct io_descriptor *io;
//
	//usart_async_register_callback(&USART_0, USART_ASYNC_TXC_CB, tx_cb_USART_0);
	///*usart_async_register_callback(&USART_0, USART_ASYNC_RXC_CB, rx_cb);
	//usart_async_register_callback(&USART_0, USART_ASYNC_ERROR_CB, err_cb);*/
	//usart_async_get_io_descriptor(&USART_0, &io);
	//usart_async_enable(&USART_0);
//
	//io_write(io, example_USART_0, 12);
//}

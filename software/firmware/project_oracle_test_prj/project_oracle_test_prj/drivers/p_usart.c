#include "p_usart.h"

static usart_async_descriptor debug_inst;

static uint8_t example_USART_0[12] = "Hello World!";

static uint8_t debug_buffer[DEBUG_MAX_BUFFER_SIZE]
void p_usart_init(void)
{
	
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

void USART_0_example(void)
{
	struct io_descriptor *io;

	usart_async_register_callback(&USART_0, USART_ASYNC_TXC_CB, tx_cb_USART_0);
	/*usart_async_register_callback(&USART_0, USART_ASYNC_RXC_CB, rx_cb);
	usart_async_register_callback(&USART_0, USART_ASYNC_ERROR_CB, err_cb);*/
	usart_async_get_io_descriptor(&USART_0, &io);
	usart_async_enable(&USART_0);

	io_write(io, example_USART_0, 12);
}

#ifndef _P_USART_H_
#define _P_USART_H_

#include "oracle.h"

extern struct usart_async_descriptor p_usart_debug_inst;

void p_usart_init(void);

void p_write(struct usart_async_descriptor* const inst, const uint8_t* data, uint16_t len);

void p_debug(const char* str, ...);

#endif
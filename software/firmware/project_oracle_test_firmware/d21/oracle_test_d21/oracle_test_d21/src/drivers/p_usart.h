#ifndef _P_USART_H_
#define _P_USART_H_

#include "oracle.h"

void p_usart_init(void);

void p_printf(const char* str, ...);

void p_debug_start_service(void);


#endif
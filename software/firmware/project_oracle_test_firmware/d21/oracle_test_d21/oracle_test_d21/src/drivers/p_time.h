#ifndef _P_TIME_H_
#define _P_TIME_H_

#include "oracle.h"

void p_time_init(void);
const char* p_get_time_str(void);
uint64_t p_sys_time(void);
#endif
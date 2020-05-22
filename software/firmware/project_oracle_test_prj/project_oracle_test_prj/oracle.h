/*
 * oracle.h
 *
 * Created: 5/3/2020 7:05:17 PM
 *  Author: Penguin
 */ 
#ifndef _ORACLE_H_
#define _ORACLE_H_

typedef enum p_err
{
	PE_GOOD = 0x0,		//
	PE_BAD  = 0x1		//
}p_err;

typedef enum p_log_level
{
	
}p_log_level;
void oracle_init(void);

int p_qprint(const char* str, ...);

int p_lprint(const char* str, ...);

void oracle_init(void);

#endif
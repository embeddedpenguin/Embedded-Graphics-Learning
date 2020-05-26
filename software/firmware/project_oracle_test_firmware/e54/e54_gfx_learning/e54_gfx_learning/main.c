#include "oracle.h"


int main(void)
{
	oracle_init();
	
	for(;;)
	{
		oracle_service();
	}
}

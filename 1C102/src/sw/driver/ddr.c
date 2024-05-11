#include "ddr.h"
#include "ls1x.h"

int DDR_Init(void)
{
    int cnt = 0;
    while(DDR_INIT != 0x00000001)
    {
        cnt += 1;
        if (cnt == 50000)
        {
            return 0;
        }
    }
    return 1;
}

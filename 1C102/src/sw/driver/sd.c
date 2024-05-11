#include "sd.h"
#include "ls1x.h"

int SD_Init(void)
{
    int cnt = 0;
    while(SD_INIT != 0x00000001)
    {
        cnt += 1;
        if (cnt == 50000)
        {
            return 0;
        }
    }
    return 1;
}

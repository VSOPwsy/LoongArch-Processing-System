#include "memory.h"
#include "ls1x_string.h"

void *_start_addr = 0;
void *_end_addr = 0;
void *_alloc_ptr;

MEM_SPACE mem_space;
void alloc_init(int base, int len)
{
    mem_space._base = (char *)base;
    mem_space._len =  (char *)len;
    mem_space._ptr =  (char *)base;
}

void *soc_malloc(int size)
{
    void *alloc_mem_base = mem_space._ptr;
    mem_space._ptr += (size + 3)&~3;
    return alloc_mem_base;
}

void *soc_calloc(int num, int size)
{
    void *alloc_mem_base = mem_space._ptr;
    memset(alloc_mem_base, 0, size);
    mem_space._ptr += (num * size + 3)&~3;
    return alloc_mem_base;
}


SOC_FILE *soc_fopen(void *base)
{
    SOC_FILE *file = (SOC_FILE *)soc_calloc(1, sizeof(SOC_FILE));
    file->_base = base;
    file->_ptr = base;
    return file;
}

void soc_fread(void *target, int size, int num, SOC_FILE* file)
{
    for (int i = 0; i < num; i++)
    {
        memcpy(target, file->_ptr, size);
        file->_ptr += size;
    }
}

void soc_fread_float(void *target, SOC_FILE* file)
{
    *(char*)target++ = *file->_ptr++;
    *(char*)target++ = *file->_ptr++;
    *(char*)target++ = *file->_ptr++;
    *(char*)target++ = *file->_ptr++;
}

#ifndef __FILE_H
#define __FILE_H

typedef struct {
    char *_ptr;
    char *_base;
    char *_len;
} MEM_SPACE;
MEM_SPACE mem_space;

typedef struct {
    char *_ptr;
    int _cnt;
    char *_base;
    int _flag;
    int _file;
    int _charbuf;
    int _bufsiz;
    char *_tmpfname;
} SOC_FILE;

void *_start_addr;
void *_end_addr;
void *_alloc_ptr;
void alloc_init(int, int);
void *soc_malloc(int);
void *soc_calloc(int, int);

SOC_FILE *soc_fopen(void *);
void soc_fread(void *, int, int, SOC_FILE *);
void soc_fread_float(void *target, SOC_FILE* file);

#endif

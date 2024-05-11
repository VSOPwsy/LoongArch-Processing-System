#include "calIn8M.h"
#include "Config.h"
#include "ls1x_pmu.h"
#include "ls1x_clock.h"
#include "ls1x_common.h"
#include "ls1x_uart.h"
#include "ls1x_wdg.h"
#include "ls1x_string.h"
#include "UserGpio.h"

#include <stdlib.h>
#include <ctype.h>
#include <math.h>

#include <fcntl.h>

// ================================================================
// ================================================================
// ================================================================
#include "soc_ls1c102.h"
#include "my_delay.h"

#include "soc_gpio.h"
#include "soc_pwm.h"
#include "soc_hpet.h"
#include "soc_uart.h"
#include "soc_printf.h"

#include "1c102_Interrupt.h"

#include "ddr.h"
#include "sd.h"
#include "math.h"
#include "memory.h"
// ================================================================

extern void wakeup_reset(void);
extern int do_d1(int argc,void *argv[]);
extern int do_d4(int argc,void *argv[]);
extern int do_m1(int argc,void *argv[]);
extern int do_m4(int argc,void *argv[]);
extern int v_play(int argc,void *argv[]);
extern int hpet(int argc,void *argv[]);
extern int latimer(int argc,void *argv[]);
extern int delay(int argc, void *argv[]);
extern int wakeup(int argc, void *argv[]);
extern int date(int argc, void* argv[]);
extern int touch_test(int argc, void *argv[]);
extern int watch_dog(int argc, void *argv[]);
extern int i2cp (int argc, void *argv[]);
extern int i2cw (int argc, void *argv[]);
extern int i2cr (int argc, void *argv[]);
extern int adc(int argc, void* argv[]);
extern int batdet(int argc, void* argv[]);
extern int tmp(int argc, void* argv[]);
extern int uart_init (int argc, void *argv[]);
extern int spi_init(int argc, void* argv[]);
extern int spi_erase(int argc, void* argv[]);
extern int spi_write(int argc, void* argv[]);
extern int spi_read(int argc, void* argv[]);
extern int spi_flash(int argc, void* argv[]);
extern int gpio_int(int argc, void* argv[]);
extern int do_nothing();
extern int copy();
extern int copy_iram(int argc, void *argv[]);
extern unsigned int str2num(unsigned char);
// add
int do_help(int argc, void *argv[]);
int do_exit(int argc, void *argv[]);

// unsigned int nmi_caller;

static struct cmd_struct {
	const char *cmdname;
	int (*func)(int, void *[]);
	const char *usage;
	const char *expression;
} cmd[] __attribute__((section(".rodata"))) =  {
  {"exit",      do_exit,     "[exit]",                  ""},
  {"d1",        do_d1,       "[d1 <addr> <num>]",     "--dump address byte"},
  {"d4",        do_d4,       "[d4 <addr> <num>]",     "--dump address word"},
  {"help",      do_help,     "[help <command>]",      "--cmd list"},
  {"m1",        do_m1,       "[m1 <addr> <value>]",   "--modify address byte"},
  {"m4",        do_m4,       "[m4 <addr> <value>]",   "--modify address word"},
  {"v",         v_play,      "[v]",                   "--v1"},
  {"touch",     touch_test,  "[touch]",               "--v1"},
  {"hpet",      hpet,        "[timer test]",          "--v1"},
  {"latimer",   latimer,     "[core timer test]",     "--v1"},
  {"delay",     delay,       "[delay test]",          "--v1"},
  {"wakeup",    wakeup,      "[wakeup test]",         "--v1"},
  {"date",      date,        "[rtc test]",            "--v1"},
  {"wdg",       watch_dog,   "[wdg test]",            "--v1"},
  {"i2cp",      i2cp,        "[i2cp <prescale>]",     "--i2c prescale"},
  {"i2cw",      i2cw,        "[i2cw <chipaddr> <regaddr> <wdata>]",  "--i2c write"},
  {"i2cr",      i2cr,        "[i2cr <chipaddr> <regaddr>]",          "--i2c read"},
  {"adc",       adc,         "[adc]",                 "--adc"},
  {"batdet",    batdet,      "[batdet <n>]",          "--v1"},
  {"copy",      copy,        "[spi_flash=>in_flash]", "--v1"},
  {"copy_iram", copy_iram,   "[copy]",                "--batdet <n>"},
  {"uinit",     uart_init,   "[uart init]",           "--v1"},
  {"spinit",    spi_init,    "[spi_init]",            "--v1"},
  {"sperase",   spi_erase,   "[spi_erase]",           "--v1"},
  {"spwr",      spi_write,   "[spi_write]",           "--v1"},
  {"sprd",      spi_read,    "[spi_read]",            "--v1"},
  {"sflash",    spi_flash,   "[spi_flash]",           "--v1"},
  {"gpio_int",  gpio_int,    "[exti]",                "--v1"},
  {"t",         tmp,         "[exti]",                "--v1"},
//add
  {"NULL",      do_nothing,  "[NULL]",                "NULL"}
};

int do_exit(int argc, void *argv[])
{
}

int do_help(int argc, void *argv[])
{
	unsigned int i;
	char *s;
	switch(argc)
	{
		case 1:
			{
				soc_printf("\ncommands:\n\n");
				for(i=0;strcmp("NULL", cmd[i].cmdname)!=0; i++)
				{
					soc_printf("\t %2d:%s\n\r",i+1, cmd[i].cmdname);
				}
			}
			break;
		case 2:
			{
				s = (char *)argv[1];
				for(i=0; strcmp("NULL", cmd[i].cmdname)!=0; i++)
				{
					if(strcmp(s, cmd[i].cmdname)==0)
					{
						soc_printf("\n\t%s\t%s\t%s\n", cmd[i].cmdname, cmd[i].usage, cmd[i].expression);
						break;
					}
				}
				if(strcmp("NULL", cmd[i].cmdname)==0)
				{
					soc_printf("\n\tERROR: undefine command!!!\n");
				}
			}
			break;
		default:
			soc_printf("\n usage: help  <cmd>\n\r");
			break;
	}
	return 0;
}

int cmdline(void)
{
	char c;
	char cmdbuffer[80];
	char cmdpara[8][30];
	int (*op)(int argc, void *argv[]);
	char *p[8];
	char *cmdptr;
	short cp, i, j, k, num;
	short h = 0;  			
	int tmp = 11;
	char history_str[13][80];
	for(j=0;j<13;j++) 
	{
		for(i=0; i<80; i++)
		{
			history_str[j][i] = '\0';
		}
	}

	while(1)
	{
START:
		for(i=0; i<80; i++)
		{
			cmdbuffer[i] = '\0';
		}
		soc_printf("\n$ ");
		cmdptr = cmdpara[0];
		cp = 0; 
		while(1)
		{
			c = getchar();
			if((c>0x1f)&&(c<0x7f))
			{
				if(h > 0)
				{
					for(i=0; i<h ; i++)
					{
						cmdbuffer[cp-i] = cmdbuffer[cp-i-1];
					}
					cmdbuffer[cp-h] = c;
					cp++;
					for(i=h; i>=0; i--)
					{
						putchar(cmdbuffer[cp-i]);
					}
					for(i=0; i<cp-1; i++)
					{
						putchar(0x8);
						putchar(0x20);
						putchar(0x8);
					}
					for(i=0; cmdbuffer[i]; i++)
					{
						putchar(cmdbuffer[i]);
					}
					for(i=h; i>0; i--)
					{
						putchar(0x08);
					}
				}
				else
				{
					cmdbuffer[cp++] = c;
					putchar(c);
				}
			}
			else if(c == 0x8)
			{
				if((h != 0) && (cp-h > 0))
				{
					for(i=h; i>=0; i--)
					{
						putchar(cmdbuffer[cp-i]);
					}
					for(i=0; i<cp; i++)
					{
						putchar(0x8);
						putchar(0x20);
						putchar(0x8);
					}
					for(i=h; i>0 ; i--)
					{
						cmdbuffer[cp-i-1] = cmdbuffer[cp-i];
					}
					cmdbuffer[--cp] = '\0'; 
					for(i=0; cmdbuffer[i]; i++)
					{
						putchar(cmdbuffer[i]);
					}
					for(i=h; i>0; i--) 
					{
						putchar(0x08);
					}
				}
				else
				{
					if((cp != 0) && (h == 0))
					{
						cmdbuffer[--cp] = '\0';
						putchar(0x8);
						putchar(0x20);
						putchar(0x8);
					}
				}
			}
			else if((c==0xa) || (c==0xd))
			{
				if(cmdbuffer[0] == '\0')
				{
					 goto START;
				}
				h = 0;
				tmp = 11;
				for(j=0;cmdbuffer[j];j++)
				{
					history_str[11][j] = cmdbuffer[j];
				}
				break;
			}

/****************************************************************************/


			else if(c==0x1b)
			{
				c = getchar();
				if(c==0x5b)
				{
					c = getchar();
					switch(c)
					{
						case 0x44:
									if(h < cp)
									{
										putchar(0x8);
										h++;
									}
									else
										h = cp;
									break;
						case 0x41: 
									if(tmp>=1)
									{
										if(tmp==1)
										{
											tmp = 1;
											break;
										}
										else
											tmp--;
										for(; h != 0; h--)
										{
											putchar(cmdbuffer[cp-h]);
										}
										if((cmdbuffer[0] != 0)||(cp == 0))
										{
											for(i=0;cmdbuffer[i];i++)
											{
												putchar(0x8);
												putchar(0x20);
												putchar(0x8);
												cmdbuffer[i] = '\0';
											}
										}
										else
										{
											for(i=0;history_str[tmp+1][i];i++)
											{
												putchar(0x8);
												putchar(0x20);
												putchar(0x8);
											}
										}
										for(j=0;history_str[tmp][j];j++)
										{
											cmdbuffer[j] = history_str[tmp][j];
											putchar(cmdbuffer[j]);
										}
									}
									cp = j;
									break;
						case 0x43:		
									if(h > 0)
									{
										putchar(cmdbuffer[cp-h]);
										h--;
									}
									else
										h = 0;
									break;
						case 0x42:                      
									if(tmp <= 11)  
									{
										if(tmp == 11)
										{
											tmp = 11;
											break;
										}
										else
											tmp++;
										for(; h != 0; h--)
										{
											putchar(cmdbuffer[cp-h]);
										}
										if((cmdbuffer[0] != 0)||(cp == 0))
										{
											for(i=0;cmdbuffer[i];i++)
											{
													putchar(0x8);
													putchar(0x20);
													putchar(0x8);
													cmdbuffer[i] = '\0';
											}
										}
										else
										{
											for(i=0;history_str[tmp-1][i];i++)
											{
												putchar(0x8);
												putchar(0x20);
												putchar(0x8);
											}
										}
										for(j=0;history_str[tmp][j];j++)
										{
											cmdbuffer[j] = history_str[tmp][j];
											putchar(cmdbuffer[j]);
										}
									}
									cp = j;
									break;
						default :
									break;
					}
				}
				c = 0;
			}

/***********************************************************************/
		}
/***********************************************************************/
		if(tmp == 11)
		{
			for(j=1;j<12;j++) 
			{
				for(i=0;i<30;i++)
					history_str[j][i]=history_str[j+1][i];
			}
			for(i=0; i<30; i++) 
			{
				history_str[11][i] = '\0';
			}
		}

/***********************************************************************/
		if(cp == 0)
		{
			goto START;
		}
		else
		{
			for(i=0; i<8; i++)
				for(j=0; j<30; j++)
					cmdpara[i][j] = '\0';
			num = 0;  //argc
//			soc_printf("\ncmd:%s\n", cmdbuffer);

			for(j = 0,i=0; i<cp; i++) //xpj
			{
				if(cmdbuffer[i] == 0x20)  //space
				{
					if((cmdbuffer[i+1] != 0x20) && ((cmdbuffer[i+1] != '\0'))) 
					{
						j = 0;
						num++;
						cmdptr = cmdpara[num];
					}
				}
				else
				{
					*(cmdptr + j) = cmdbuffer[i];
					j++;
				}
			}

			cmdptr = cmdpara[0];
			if(strcmp(cmdptr, cmd[0].cmdname)==0)
			{
				break;
			}
			else
			{
				for(k=1; strcmp("NULL", cmd[k].cmdname)!=0; k++)
				{
					if(strcmp(cmdptr, cmd[k].cmdname)==0)
					{
						op = cmd[k].func;
						for(j=0; j<=num; j++)
						{
							p[j] = (char *)(cmdpara[j]);
//							soc_printf("cmdpara[%d]: %s\n", j, cmdpara[j]);
						}
						op(j, (void *)p);
						break;
					}
				}
				if(strcmp("NULL", cmd[k].cmdname)==0)
				{
					soc_printf("\n\tERROR: undefine command!!!\n");
				}
			}
		}
	}
	return 0;
}


extern MEM_SPACE mem_space;
#define LED *(volatile uint32_t*)0xbff00000
#define SYSTEM_INIT_TIMEOUT (uint32_t)50000
uint32_t sys_init_cnt = 0;
int System_Init(void)
{
	EnableInt();
	UART_FIFO_CTRL = 0x07;  // Baud rate 115200
	my_delay_ms(500);

	while (!DDR_Init())
	{
		sys_init_cnt += 1;
		if (sys_init_cnt == SYSTEM_INIT_TIMEOUT)
		{
			soc_printf("DDR failed to initialize\r\n");
			return 0;
		}
	}
	
	sys_init_cnt = 0;
	while (!SD_Init())
	{
		sys_init_cnt += 1;
		if (sys_init_cnt == SYSTEM_INIT_TIMEOUT)
		{
			soc_printf("SD failed to initialize\r\n");
		}
	}

	soc_printf("System Initialized Successfully\r\n");

	uart1_interrupt();

	return 1;
}

void SD_load(uint32_t start_sec, uint32_t size, void* ddr_addr_base)
{
	SD_DMA_SD_START_SEC = start_sec;
	SD_DMA_SD_SEC_NUM = ceil(size / 512.0);
	SD_DMA_DDR_BASE = (uint32_t)ddr_addr_base;

	SD_DMA_START = (uint32_t)0x00000001;
	while (!SD_DMA_DONE);
}

void *model_address;
void *tokenizer_address;
uint32_t model_size;
uint32_t tokenizer_size;


typedef struct {
    int dim; // transformer dimension
    int hidden_dim; // for ffn layers
    int n_layers; // number of layers
    int n_heads; // number of query heads
    int n_kv_heads; // number of key/value heads (can be < query heads because of multiquery)
    int vocab_size; // vocabulary size, usually 256 (byte-level)
    int seq_len; // max sequence length
} Config;

typedef struct {
    // token embedding table
    float* token_embedding_table;    // (vocab_size, dim)
    // weights for rmsnorms
    float* rms_att_weight; // (layer, dim) rmsnorm weights
    float* rms_ffn_weight; // (layer, dim)
    // weights for matmuls. note dim == n_heads * head_size
    float* wq; // (layer, dim, n_heads * head_size)
    float* wk; // (layer, dim, n_kv_heads * head_size)
    float* wv; // (layer, dim, n_kv_heads * head_size)
    float* wo; // (layer, n_heads * head_size, dim)
    // weights for ffn
    float* w1; // (layer, hidden_dim, dim)
    float* w2; // (layer, dim, hidden_dim)
    float* w3; // (layer, hidden_dim, dim)
    // final rmsnorm
    float* rms_final_weight; // (dim,)
    // (optional) classifier weights for the logits, on the last layer
    float* wcls;
} TransformerWeights;

typedef struct {
    // current wave of activations
    float *x; // activation at current time stamp (dim,)
    float *xb; // same, but inside a residual branch (dim,)
    float *xb2; // an additional buffer just for convenience (dim,)
    float *hb; // buffer for hidden dimension in the ffn (hidden_dim,)
    float *hb2; // buffer for hidden dimension in the ffn (hidden_dim,)
    float *q; // query (dim,)
    float *k; // key (dim,)
    float *v; // value (dim,)
    float *att; // buffer for scores/attention values (n_heads, seq_len)
    float *logits; // output logits
    // kv cache
    float* key_cache;   // (layer, seq_len, dim)
    float* value_cache; // (layer, seq_len, dim)
} RunState;

typedef struct {
    Config config; // the hyperparameters of the architecture (the blueprint)
    TransformerWeights weights; // the weights of the model
    RunState state; // buffers for the "wave" of activations in the forward pass
    // some more state needed to properly clean up the memory mapping (sigh)
    int fd; // file descriptor for memory mapping
    float* data; // memory mapped data pointer
    ssize_t file_size; // size of the checkpoint file in bytes
} Transformer;

void malloc_run_state(RunState* s, Config* p) {
    // we calloc instead of malloc to keep valgrind happy
    int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
    s->x = soc_calloc(p->dim, sizeof(float));
    s->xb = soc_calloc(p->dim, sizeof(float));
    s->xb2 = soc_calloc(p->dim, sizeof(float));
    s->hb = soc_calloc(p->hidden_dim, sizeof(float));
    s->hb2 = soc_calloc(p->hidden_dim, sizeof(float));
    s->q = soc_calloc(p->dim, sizeof(float));
    s->key_cache = soc_calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
    s->value_cache = soc_calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
    s->att = soc_calloc(p->n_heads * p->seq_len, sizeof(float));
    s->logits = soc_calloc(p->vocab_size, sizeof(float));
}



void memory_map_weights(TransformerWeights *w, Config* p, float* ptr, int shared_weights) {
    int head_size = p->dim / p->n_heads;
    // make sure the multiplications below are done in 64bit to fit the parameter counts of 13B+ models
    unsigned long long n_layers = p->n_layers;
    w->token_embedding_table = ptr;
    ptr += p->vocab_size * p->dim;
    w->rms_att_weight = ptr;
    ptr += n_layers * p->dim;
    w->wq = ptr;
    ptr += n_layers * p->dim * (p->n_heads * head_size);
    w->wk = ptr;
    ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
    w->wv = ptr;
    ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
    w->wo = ptr;
    ptr += n_layers * (p->n_heads * head_size) * p->dim;
    w->rms_ffn_weight = ptr;
    ptr += n_layers * p->dim;
    w->w1 = ptr;
    ptr += n_layers * p->dim * p->hidden_dim;
    w->w2 = ptr;
    ptr += n_layers * p->hidden_dim * p->dim;
    w->w3 = ptr;
    ptr += n_layers * p->dim * p->hidden_dim;
    w->rms_final_weight = ptr;
    ptr += p->dim;
    ptr += p->seq_len * head_size / 2; // skip what used to be freq_cis_real (for RoPE)
    ptr += p->seq_len * head_size / 2; // skip what used to be freq_cis_imag (for RoPE)
    w->wcls = shared_weights ? w->token_embedding_table : ptr;
}

void read_checkpoint(void* checkpoint, Config* config, TransformerWeights* weights,
                     int* fd, float** data, ssize_t* file_size) {
    SOC_FILE *file = soc_fopen(checkpoint);
    soc_fread(config, sizeof(Config), 1, file);
    // negative vocab size is hacky way of signaling unshared weights. bit yikes.
    int shared_weights = config->vocab_size > 0 ? 1 : 0;
    config->vocab_size = abs(config->vocab_size);
    // figure out the file size
    *file_size = model_size;
    // memory map the Transformer weights into the data pointer
    *data = (float *)checkpoint;
    float* weights_ptr = *data + sizeof(Config)/sizeof(float);
    memory_map_weights(weights, config, weights_ptr, shared_weights);
}

void build_transformer(Transformer *t, void* checkpoint) {
    // read in the Config and the Weights from the checkpoint
    read_checkpoint(checkpoint, &t->config, &t->weights, &t->fd, &t->data, &t->file_size);
    // allocate the RunState buffers
    malloc_run_state(&t->state, &t->config);
}


// ----------------------------------------------------------------------------
// neural net blocks; the dynamics of the Transformer

void rmsnorm(float* o, float* x, float* weight, int size) {
    // calculate sum of squares
    float ss = 0.0f;
    for (int j = 0; j < size; j++) {
        ss += x[j] * x[j];
    }
    ss /= size;
    ss += 1e-5f;
    ss = 1.0f / sqrtf(ss);
    // normalize and scale
    for (int j = 0; j < size; j++) {
        o[j] = weight[j] * (ss * x[j]);
    }
}

void softmax(float* x, int size) {
    // find max value (for numerical stability)
    float max_val = x[0];
    for (int i = 1; i < size; i++) {
        if (x[i] > max_val) {
            max_val = x[i];
        }
    }
    // exp and sum
    float sum = 0.0f;
    for (int i = 0; i < size; i++) {
        x[i] = expf(x[i] - max_val);
        sum += x[i];
    }
    // normalize
    for (int i = 0; i < size; i++) {
        x[i] /= sum;
    }
}

void matmul(float* xout, float* x, float* w, int n, int d) {
    // W (d,n) @ x (n,) -> xout (d,)
    // by far the most amount of time is spent inside this little function
    int i;
    #pragma omp parallel for private(i)
    for (i = 0; i < d; i++) {
        float val = 0.0f;
        for (int j = 0; j < n; j++) {
            val += w[i * n + j] * x[j];
        }
        xout[i] = val;
    }
}

float* forward(Transformer* transformer, int token, int pos) {

    // a few convenience variables
    Config* p = &transformer->config;
    TransformerWeights* w = &transformer->weights;
    RunState* s = &transformer->state;
    float *x = s->x;
    int dim = p->dim;
    int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
    int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
    int hidden_dim =  p->hidden_dim;
    int head_size = dim / p->n_heads;

    // copy the token embedding into x
    float* content_row = w->token_embedding_table + token * dim;
    memcpy(x, content_row, dim*sizeof(*x));

    // forward all the layers
    for(unsigned long long l = 0; l < p->n_layers; l++) {

        // attention rmsnorm
        rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);

        // key and value point to the kv cache
        int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
        s->k = s->key_cache + loff + pos * kv_dim;
        s->v = s->value_cache + loff + pos * kv_dim;

        // qkv matmuls for this position
        matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
        matmul(s->k, s->xb, w->wk + l*dim*kv_dim, dim, kv_dim);
        matmul(s->v, s->xb, w->wv + l*dim*kv_dim, dim, kv_dim);

        // RoPE relative positional encoding: complex-valued rotate q and k in each head
        for (int i = 0; i < dim; i+=2) {
            int head_dim = i % head_size;
            float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
            float val = pos * freq;
            float fcr = cosf(val);
            float fci = sinf(val);
            int rotn = i < kv_dim ? 2 : 1; // how many vectors? 2 = q & k, 1 = q only
            for (int v = 0; v < rotn; v++) {
                float* vec = v == 0 ? s->q : s->k; // the vector to rotate (query or key)
                float v0 = vec[i];
                float v1 = vec[i+1];
                vec[i]   = v0 * fcr - v1 * fci;
                vec[i+1] = v0 * fci + v1 * fcr;
            }
        }

        // multihead attention. iterate over all heads
        int h;
        #pragma omp parallel for private(h)
        for (h = 0; h < p->n_heads; h++) {
            // get the query vector for this head
            float* q = s->q + h * head_size;
            // attention scores for this head
            float* att = s->att + h * p->seq_len;
            // iterate over all timesteps, including the current one
            for (int t = 0; t <= pos; t++) {
                // get the key vector for this head and at this timestep
                float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
                // calculate the attention score as the dot product of q and k
                float score = 0.0f;
                for (int i = 0; i < head_size; i++) {
                    score += q[i] * k[i];
                }
                score /= sqrtf(head_size);
                // save the score to the attention buffer
                att[t] = score;
            }

            // softmax the scores to get attention weights, from 0..pos inclusively
            softmax(att, pos + 1);

            // weighted sum of the values, store back into xb
            float* xb = s->xb + h * head_size;
            memset(xb, 0, head_size * sizeof(float));
            for (int t = 0; t <= pos; t++) {
                // get the value vector for this head and at this timestep
                float* v = s->value_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
                // get the attention weight for this timestep
                float a = att[t];
                // accumulate the weighted value into xb
                for (int i = 0; i < head_size; i++) {
                    xb[i] += a * v[i];
                }
            }
        }

        // final matmul to get the output of the attention
        matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);

        // residual connection back into x
        for (int i = 0; i < dim; i++) {
            x[i] += s->xb2[i];
        }

        // ffn rmsnorm
        rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);

        // Now for FFN in PyTorch we have: self.w2(F.silu(self.w1(x)) * self.w3(x))
        // first calculate self.w1(x) and self.w3(x)
        matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
        matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);

        // SwiGLU non-linearity
        for (int i = 0; i < hidden_dim; i++) {
            float val = s->hb[i];
            // silu(x)=x*σ(x), where σ(x) is the logistic sigmoid
            val *= (1.0f / (1.0f + expf(-val)));
            // elementwise multiply with w3(x)
            val *= s->hb2[i];
            s->hb[i] = val;
        }

        // final matmul to get the output of the ffn
        matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);

        // residual connection
        for (int i = 0; i < dim; i++) {
            x[i] += s->xb[i];
        }
    }

    // final rmsnorm
    rmsnorm(x, x, w->rms_final_weight, dim);

    // classifier into logits
    matmul(s->logits, x, w->wcls, p->dim, p->vocab_size);
    return s->logits;
}

// ----------------------------------------------------------------------------
// The Byte Pair Encoding (BPE) Tokenizer that translates strings <-> tokens

typedef struct {
    char *str;
    int id;
} TokenIndex;

typedef struct {
    char** vocab;
    float* vocab_scores;
    TokenIndex *sorted_vocab;
    int vocab_size;
    unsigned int max_token_length;
    unsigned char byte_pieces[512]; // stores all single-byte strings
} Tokenizer;

int compare_tokens(const void *a, const void *b) {
    return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
}

void build_tokenizer(Tokenizer* t, void* tokenizer_base, int vocab_size) {
    // i should have written the vocab_size into the tokenizer file... sigh
    t->vocab_size = vocab_size;
    // malloc space to hold the scores and the strings
    t->vocab = (char**)soc_malloc(vocab_size * sizeof(char*));
    t->vocab_scores = (float*)soc_malloc(vocab_size * sizeof(float));
    t->sorted_vocab = NULL; // initialized lazily
    for (int i = 0; i < 256; i++) {
        t->byte_pieces[i * 2] = (unsigned char)i;
        t->byte_pieces[i * 2 + 1] = '\0';
    }
    // read in the file
    SOC_FILE *file = soc_fopen(tokenizer_base);
    soc_fread(&t->max_token_length, sizeof(int), 1, file);
    int len;
    for (short i = 0; i < vocab_size; i++) {
        soc_fread(t->vocab_scores + i, sizeof(float), 1, file);
        soc_fread(&len, sizeof(int), 1, file);
        t->vocab[i] = (char *)soc_malloc(len + 1);
        soc_fread(t->vocab[i], len, 1, file);
        t->vocab[i][len] = '\0'; // add the string terminating token
    }
}

char* decode(Tokenizer* t, int prev_token, int token) {
    char *piece = t->vocab[token];
    // following BOS (1) token, sentencepiece decoder strips any leading whitespace (see PR #89)
    if (prev_token == 1 && piece[0] == ' ') { piece++; }
    // careful, some tokens designate raw bytes, and look like e.g. '<0x01>'
    // parse this and convert and return the actual byte
    // unsigned char byte_val;
    // if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
    //     piece = (char*)t->byte_pieces + byte_val * 2;
    // }
    return piece;
}

void safe_printf(char *piece) {
    // piece might be a raw byte token, and we only want to print printable chars or whitespace
    // because some of the other bytes can be various control codes, backspace, etc.
    if (piece == NULL) { return; }
    if (piece[0] == '\0') { return; }
    if (piece[1] == '\0') {
        unsigned char byte_val = piece[0];
        if (!(isprint(byte_val) || isspace(byte_val))) {
            return; // bad byte, don't print it
        }
    }
    soc_printf("%s", piece);
}

int str_lookup(char *str, TokenIndex *sorted_vocab, int vocab_size) {
    // efficiently find the perfect match for str in vocab, return its index or -1 if not found
    TokenIndex tok = { .str = str }; // acts as the key to search for
    TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
    return res != NULL ? res->id : -1;
}

void encode(Tokenizer* t, char *text, int8_t bos, int8_t eos, int *tokens, int *n_tokens) {
    // encode the string text (input) into an upper-bound preallocated tokens[] array
    // bos != 0 means prepend the BOS token (=1), eos != 0 means append the EOS token (=2)
    if (text == NULL) { soc_printf("cannot encode NULL text\n");}

    if (t->sorted_vocab == NULL) {
        // lazily malloc and sort the vocabulary
        t->sorted_vocab =  (TokenIndex *)soc_malloc(t->vocab_size * sizeof(TokenIndex));
        for (int i = 0; i < t->vocab_size; i++) {
            t->sorted_vocab[i].str = t->vocab[i];
            t->sorted_vocab[i].id = i;
        }
        qsort(t->sorted_vocab, t->vocab_size, sizeof(TokenIndex), compare_tokens);
    }

    // create a temporary buffer that will store merge candidates of always two consecutive tokens
    // *2 for concat, +1 for null terminator +2 for UTF8 (in case max_token_length is 1)
    char* str_buffer = (char *)soc_malloc(sizeof(char) * (t->max_token_length * 2 + 1 + 2));
    
    size_t str_len = 0;

    // start at 0 tokens
    *n_tokens = 0;

    // add optional BOS (=1) token, if desired
    if (bos) tokens[(*n_tokens)++] = 1;

    // add_dummy_prefix is true by default
    // so prepend a dummy prefix token to the input string, but only if text != ""
    // TODO: pretty sure this isn't correct in the general case but I don't have the
    // energy to read more of the sentencepiece code to figure out what it's doing
    if (text[0] != '\0') {
        int dummy_prefix = str_lookup(" ", t->sorted_vocab, t->vocab_size);
        tokens[(*n_tokens)++] = dummy_prefix;
    }

    // Okay UTF-8 time. This will get messy. Here is the reference from Wikipedia:
    // Code point ↔ UTF-8 conversion
    // First code point	Last code point	Byte 1	Byte 2	Byte 3	Byte 4
    // U+0000	U+007F	    0xxxxxxx
    // U+0080	U+07FF	    110xxxxx	10xxxxxx
    // U+0800	U+FFFF	    1110xxxx	10xxxxxx	10xxxxxx
    // U+10000	U+10FFFF    11110xxx	10xxxxxx	10xxxxxx	10xxxxxx

    // process the raw (UTF-8) byte sequence of the input string
    for (char *c = text; *c != '\0'; c++) {

        // reset buffer if the current byte is ASCII or a leading byte
        // 0xC0 is 11000000, so (*c & 0xC0) keeps the first 2 bits and zeros the rest
        // 0x80 is 10000000
        // in UTF-8, all continuation bytes start with "10" in first two bits
        // so in English this is: "if this byte is not a continuation byte"
        if ((*c & 0xC0) != 0x80) {
            // this byte must be either a leading byte (11...) or an ASCII char (0x...)
            // => reset our location, as we're starting a new UTF-8 codepoint
            str_len = 0;
        }

        // append the current byte to the buffer
        str_buffer[str_len++] = *c; // ++ is post-increment, incremented after this line
        str_buffer[str_len] = '\0';

        // while the next character is a continuation byte, continue appending
        // but if there are too many of them, just stop to avoid overruning str_buffer size.
        if ((*(c+1) & 0xC0) == 0x80 && str_len < 4) {
            continue;
        }

        // ok c+1 is not a continuation byte, so we've read in a full codepoint
        int id = str_lookup(str_buffer, t->sorted_vocab, t->vocab_size);

        if (id != -1) {
            // we found this codepoint in vocab, add it as a token
            tokens[(*n_tokens)++] = id;
        } else {
            // byte_fallback encoding: just encode each byte as a token
            // +3 is here because the first 3 vocab elements are <unk>, <s>, </s>
            // so the individual bytes only start at index 3
            for (int i=0; i < str_len; i++) {
                tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
            }
        }
        str_len = 0; // protect against a sequence of stray UTF8 continuation bytes
    }

    // merge the best consecutive pair each iteration, according the scores in vocab_scores
    while (1) {
        float best_score = -1e10;
        int best_id = -1;
        int best_idx = -1;

        for (int i=0; i < (*n_tokens-1); i++) {
            // check if we can merge the pair (tokens[i], tokens[i+1])
            sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
            int id = str_lookup(str_buffer, t->sorted_vocab, t->vocab_size);
            if (id != -1 && t->vocab_scores[id] > best_score) {
                // this merge pair exists in vocab! record its score and position
                best_score = t->vocab_scores[id];
                best_id = id;
                best_idx = i;
            }
        }

        if (best_idx == -1) {
            break; // we couldn't find any more pairs to merge, so we're done
        }

        // merge the consecutive pair (best_idx, best_idx+1) into new token best_id
        tokens[best_idx] = best_id;
        // delete token at position best_idx+1, shift the entire sequence back 1
        for (int i = best_idx+1; i < (*n_tokens-1); i++) {
            tokens[i] = tokens[i+1];
        }
        (*n_tokens)--; // token length decreased
    }

    // add optional EOS (=2) token, if desired
    if (eos) tokens[(*n_tokens)++] = 2;
}

// ----------------------------------------------------------------------------
// The Sampler, which takes logits and returns a sampled token
// sampling can be done in a few ways: greedy argmax, sampling, top-p sampling

typedef struct {
    float prob;
    int index;
} ProbIndex; // struct used when sorting probabilities during top-p sampling

typedef struct {
    int vocab_size;
    ProbIndex* probindex; // buffer used in top-p sampling
    float temperature;
    float topp;
    unsigned long long rng_state;
} Sampler;

int sample_argmax(float* probabilities, int n) {
    // return the index that has the highest probability
    int max_i = 0;
    float max_p = probabilities[0];
    for (int i = 1; i < n; i++) {
        if (probabilities[i] > max_p) {
            max_i = i;
            max_p = probabilities[i];
        }
    }
    return max_i;
}

int sample_mult(float* probabilities, int n, float coin) {
    // sample index from probabilities (they must sum to 1!)
    // coin is a random number in [0, 1), usually from random_f32()
    float cdf = 0.0f;
    for (int i = 0; i < n; i++) {
        cdf += probabilities[i];
        if (coin < cdf) {
            return i;
        }
    }
    return n - 1; // in case of rounding errors
}

int compare(const void* a, const void* b) {
    ProbIndex* a_ = (ProbIndex*) a;
    ProbIndex* b_ = (ProbIndex*) b;
    if (a_->prob > b_->prob) return -1;
    if (a_->prob < b_->prob) return 1;
    return 0;
}

int sample_topp(float* probabilities, int n, float topp, ProbIndex* probindex, float coin) {
    // top-p sampling (or "nucleus sampling") samples from the smallest set of
    // tokens that exceed probability topp. This way we never sample tokens that
    // have very low probabilities and are less likely to go "off the rails".
    // coin is a random number in [0, 1), usually from random_f32()

    int n0 = 0;
    // quicksort indices in descending order of probabilities
    // values smaller than (1 - topp) / (n - 1) cannot be part of the result
    // so for efficiency we crop these out as candidates before sorting
    const float cutoff = (1.0f - topp) / (n - 1);
    for (int i = 0; i < n; i++) {
        if (probabilities[i] >= cutoff) {
            probindex[n0].index = i;
            probindex[n0].prob = probabilities[i];
            n0++;
        }
    }
    qsort(probindex, n0, sizeof(ProbIndex), compare);

    // truncate the list where cumulative probability exceeds topp
    float cumulative_prob = 0.0f;
    int last_idx = n0 - 1; // in case of rounding errors consider all elements
    for (int i = 0; i < n0; i++) {
        cumulative_prob += probindex[i].prob;
        if (cumulative_prob > topp) {
            last_idx = i;
            break; // we've exceeded topp by including last_idx
        }
    }

    // sample from the truncated list
    float r = coin * cumulative_prob;
    float cdf = 0.0f;
    for (int i = 0; i <= last_idx; i++) {
        cdf += probindex[i].prob;
        if (r < cdf) {
            return probindex[i].index;
        }
    }
    return probindex[last_idx].index; // in case of rounding errors
}

void build_sampler(Sampler* sampler, int vocab_size, float temperature, float topp, unsigned long long rng_seed) {
    sampler->vocab_size = vocab_size;
    sampler->temperature = temperature;
    sampler->topp = topp;
    sampler->rng_state = rng_seed;
    // buffer only used with nucleus sampling; may not need but it's ~small
    sampler->probindex = (ProbIndex *)soc_malloc(sampler->vocab_size * sizeof(ProbIndex));
}



unsigned int random_u32(unsigned long long *state) {
    // xorshift rng: https://en.wikipedia.org/wiki/Xorshift#xorshift.2A
    *state ^= *state >> 12;
    *state ^= *state << 25;
    *state ^= *state >> 27;
    return (*state * 0x2545F4914F6CDD1Dull) >> 32;
}
float random_f32(unsigned long long *state) { // random float32 in [0,1)
    return (random_u32(state) >> 8) / 16777216.0f;
}

int sample(Sampler* sampler, float* logits) {
    // sample the token given the logits and some hyperparameters
    int next;
    if (sampler->temperature == 0.0f) {
        // greedy argmax sampling: take the token with the highest probability
        next = sample_argmax(logits, sampler->vocab_size);
    } else {
        // apply the temperature to the logits
        for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
        // apply softmax to the logits to get the probabilities for next token
        softmax(logits, sampler->vocab_size);
        // flip a (float) coin (this is our source of entropy for sampling)
        float coin = random_f32(&sampler->rng_state);
        // we sample from this distribution to get the next token
        if (sampler->topp <= 0 || sampler->topp >= 1) {
            // simply sample from the predicted probability distribution
            next = sample_mult(logits, sampler->vocab_size, coin);
        } else {
            // top-p (nucleus) sampling, clamping the least likely tokens to zero
            next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
        }
    }
    return next;
}


// ----------------------------------------------------------------------------
// generation loop

void generate(Transformer *transformer, Tokenizer *tokenizer, Sampler *sampler, char *prompt, int steps) {
    char *empty_prompt = "";
    if (prompt == NULL) { prompt = empty_prompt; }

    // encode the (string) prompt into tokens sequence
    int num_prompt_tokens = 0;
    int* prompt_tokens = (int*)soc_malloc((strlen(prompt) + 3) * sizeof(int));
    encode(tokenizer, prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
    if (num_prompt_tokens < 1) {
        soc_printf("something is wrong, expected at least 1 prompt token\n");
    }

    // start the main loop
    long start = 0;  // used to time our code, only initialized after first iteration
    int next;        // will store the next token in the sequence
    int token = prompt_tokens[0]; // kick off with the first token in the prompt
    int pos = 0;     // position in the sequence
    while (pos < steps) {

        // forward the transformer to get logits for the next token
        float* logits = forward(transformer, token, pos);

        // advance the state machine
        if (pos < num_prompt_tokens - 1) {
            // if we are still processing the input prompt, force the next prompt token
            next = prompt_tokens[pos + 1];
        } else {
            // otherwise sample the next token from the logits
            next = sample(sampler, logits);
        }
        pos++;

        // data-dependent terminating condition: the BOS (=1) token delimits sequences
        if (next == 1) { break; }

        // print the token as string, decode it with the Tokenizer object
        char* piece = decode(tokenizer, token, next);
        safe_printf(piece); // same as soc_printf("%s", piece), but skips "unsafe" bytes
        // fflush(stdout);
        token = next;

    }
    soc_printf("\n");


}
int a;
int main(void)
{
	System_Init();
	LED = (uint32_t)0x00000001;

    alloc_init(DDR_BASE, 0x0C000000);
    
    model_size = 60816028;
    tokenizer_size = 433869;
    model_address = soc_malloc(model_size);
    tokenizer_address = soc_malloc(tokenizer_size);

    soc_printf("loading model...\n");
	SD_load(2048, 60816028, (void*)DDR_BASE);
    soc_printf("loading tokenizer...\n");
	SD_load(200000, 433869, tokenizer_address);
	LED = (uint32_t)0x00000003;

    float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
    float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
    int steps = 256;            // number of steps to run for
    char *prompt = "Jim likes playing basketball";
    unsigned long long rng_seed = 0; // seed rng with time by default

    // parameter validation/overrides
    if (rng_seed <= 0) rng_seed = (unsigned int)1;
    if (temperature < 0.0) temperature = 0.0;
    if (topp < 0.0 || 1.0 < topp) topp = 0.9;
    if (steps < 0) steps = 0;

    // build the Transformer via the model .bin file
    Transformer transformer;
    soc_printf("building transformer...\n");
    build_transformer(&transformer, model_address);
    if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length

    // build the Tokenizer via the tokenizer .bin file
    Tokenizer tokenizer;
    soc_printf("building tokenizer...\n");
    build_tokenizer(&tokenizer, tokenizer_address, transformer.config.vocab_size);

    // build the Sampler
    Sampler sampler;
    soc_printf("building sampler...\n");
    build_sampler(&sampler, transformer.config.vocab_size, temperature, topp, rng_seed);

    soc_printf("generate:\n");
    generate(&transformer, &tokenizer, &sampler, prompt, steps);

    soc_printf("\nend\n");

    return 0;
}

void UART1_HANDLER(void)
{
	LED ^= (int32_t)0x00000001;
	uart1_interrupt();
}

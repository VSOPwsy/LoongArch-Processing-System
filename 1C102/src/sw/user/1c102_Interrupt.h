#ifndef _1c102_INTERRUPT_H
#define _1c102_INTERRUPT_H


#include "../driver/calIn8M.h"
#include"ls1x.h"
#include"ls1x_gpio.h"
#include"ls1x_wdg.h"
#include"ls1x_common.h"
#include"ls1x_exti.h"
#include"ls1c102_interrupt.h"
#include"ls1c102_touch.h"
#include"ls1c102_ptimer.h"
#include"ls1c102_i2c.h"
#include"Config.h"

// soc
#include "soc_gpio.h"
#include "soc_uart.h"
// soc

#define	BEBUG_IRQ()  printf("\r\n <  line: %d func:%s   >\r\n",__LINE__,__FUNCTION__)
void (* const exti_irq_handle[32])(void);

void exti_gpioa0_irq_handler(void);
void exti_gpioa1_irq_handler(void);
void exti_gpioa2_irq_handler(void);
void exti_gpioa3_irq_handler(void);
void exti_gpioa4_irq_handler(void);
void exti_gpioa5_irq_handler(void);
void exti_gpioa6_irq_handler(void);
void exti_gpioa7_irq_handler(void);

void exti_gpiob0_irq_handler(void);
void exti_gpiob1_irq_handler(void);
void exti_gpiob2_irq_handler(void);
void exti_gpiob3_irq_handler(void);
void exti_gpiob4_irq_handler(void);
void exti_gpiob5_irq_handler(void);
void exti_gpiob6_irq_handler(void);
void exti_gpiob7_irq_handler(void);

void exti_gpioc0_irq_handler(void);
void exti_gpioc1_irq_handler(void);
void exti_gpioc2_irq_handler(void);
void exti_gpioc3_irq_handler(void);
void exti_gpioc4_irq_handler(void);
void exti_gpioc5_irq_handler(void);
void exti_gpioc6_irq_handler(void);
void exti_gpioc7_irq_handler(void);

void exti_gpiod0_irq_handler(void);
void exti_gpiod1_irq_handler(void);
void exti_gpiod2_irq_handler(void);
void exti_gpiod3_irq_handler(void);
void exti_gpiod4_irq_handler(void);
void exti_gpiod5_irq_handler(void);
void exti_gpiod6_irq_handler(void);
void exti_gpiod7_irq_handler(void);

void (* const Ext_IrqHandle[32])(void);

void ext_handler(void);

void SOFT_INT(void);

void TIMER_8M_INT(void);

void TIMER_WAKE_INT(void);

#define KEY_CANCLE 8
void TOUCH(void);

void UART2_INT(void);

void BAT_FAIL(void);

volatile int state;

void intc_handler(void);

void UART1_HANDLER(void);

void TIMER_HANDLER(void);

#endif

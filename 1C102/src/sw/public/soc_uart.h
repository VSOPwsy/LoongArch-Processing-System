/*
 * soc_uart.h
 *
 * created: 2024/1/31
 *  author: 
 */

#ifndef _SOC_UART_H
#define _SOC_UART_H

#ifdef __cplusplus
extern "C" {
#endif

#define UART_FIFO *(volatile int*) 0xbfe80000
#define UART_FIFO_CTRL *(volatile int*) 0xbfe80004

void uart0_interrupt();

#ifdef __cplusplus
}
#endif

#endif // _SOC_UART_H

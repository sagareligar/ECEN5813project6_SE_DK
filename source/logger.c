/*
 * logger.c
 *
 *  Created on: Feb 20, 2020
 *      Author: Dhruva
 */

#ifndef LOGGING_C_
#define LOGGING_C_

#include "logger.h"

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "fsl_debug_console.h"
#include "global_defines.h"


log_status_t log_status;

// log level enum and accompanying strings
log_level_t log_level;
static const char* log_levels[] = {"Status:", "Debug:", "Test:", ""};

// function name enum and accompanying strings
func_names_t func_name;
static const char* func_names[] = {"main:", "POST:", "Log_enable:", "Log_level:", "LED_init:", "LED_off:",
							"LED_off:", "LED_flash:", "echofunc:", "application_mode:",
							"SysTick_init:", "Init_UART0:", "UART0_Transmit_Poll:", "UART0_Receive_Poll:", "Send_String_Poll:",
							"receive_check", "transmit_check", "UCUNIT_WriteString", "UCUNIT_WriteInt", "UCUNIT_Init",
							"UCUNIT_Shutdown","UART0_IRQHandler","Send_String","Receive_String","insert_item","remove_item",
							"destroy_buf","SysTick_enable","SysTick_disable","SysTick_Handler," ""};

static bool enabled = false;

extern uint8_t timestamp_counter_n;
extern uint8_t timestamp_counter_s;
extern uint8_t timestamp_counter_m;
extern uint8_t timestamp_counter_h;
char * timestamp;
char * log_str;

// function to format timestamp counter vars into timestamp string
// returns formatted timestamp string HH:MM:SS.n
char * Log_timestamp(void){
#if LOGGING
	uint32_t masking_state;
	masking_state = __get_PRIMASK();
	START_CRITICAL();
	snprintf(timestamp, 11, "%02d:%02d:%02d.%d", timestamp_counter_h, timestamp_counter_m, timestamp_counter_s, timestamp_counter_n);
	END_CRITICAL(masking_state);
#endif
	return timestamp;
}

// enable logging
void Log_enable(void){
#if LOGGING
	// begin printing log messages when called
	enabled = true;
	// malloc timestamp and log_str strings
	timestamp = malloc(sizeof(char) * 11);
	log_str = malloc(sizeof(char) * 128);
#endif
}

// disable logging
void Log_disable(void){
#if LOGGING
	// ignore any log messages until re-enabled
	enabled = false;
	free(timestamp);
	free(log_str);
#endif
}

// set logging level TEST > DEBUG > STATUS
void Log_level(log_level_t level){
#if LOGGING
	switch(level){
	case LOG_TEST:
		log_level = LOG_TEST;
		break;
	case LOG_DEBUG:
		log_level = LOG_DEBUG;
		break;
	case LOG_STATUS:
		log_level = LOG_STATUS;
		break;
	case LOG_EMPTY:
	default:
		// error
		break;
	}
#endif
}

// returns a flag to indicate whether the logger is enabled or disabled
bool Log_status(void){
	bool ret = false;
#if LOGGING
	if(enabled){
		ret = true;
	} else{
		ret = false;
	}
#endif
	return ret;
}

/* display in hexadecimal an address and contents of a memory location,
 * arguments are a pointer to a sequence of bytes and a specified length
 */
int Log_data(uint8_t * seq, uint8_t len, func_names_t func, log_level_t level){
	log_status = LOG_FAILED;
#if LOGGING
	if(enabled){
		if(log_level >= level){
			int ret = PRINTF("%s: %s: Memory allocated at 0x%08X	Data: ", log_levels[level], func_names[func], seq);
			for(int i = 0; i < len; ++i){
				ret = PRINTF("|%d| ", seq[i]);
			}
			ret = PRINTF("\r\n");
			if(ret >= 0){
				log_status = LOG_SUCCESS;
			}
		}
	}
#endif
	return log_status;
}

// display a string. uint8_t console determines if it's displayed on the semihost console (1) or in the UART serial console (0)
int Log_string(char * string, func_names_t func, log_level_t level, uint8_t console){
	log_status = LOG_FAILED;
#if LOGGING
	if(enabled){
		if(log_level >= level){
			if(console){	// if console is 1 then use console, otherwise use UART
				int ret = PRINTF("%s: %s %s %s", Log_timestamp(), log_levels[level], func_names[func], string);
				if(ret >= 0){
					log_status = LOG_SUCCESS;
				}
			}else{
#if USE_UART_INTERRUPTS
				sprintf(log_str, "%s: %s %s %s\r\n", Log_timestamp(), log_levels[level], func_names[func], string);
			//	Send_String((uint8_t *)log_str);
#else
				sprintf(log_str, "%s: %s %s %s\r\n", Log_timestamp(), log_levels[level], func_names[func], string);
				Send_String_Poll((uint8_t *)log_str);
#endif
			}
		}
	}
#endif
	return log_status;
}

// display an integer. uint8_t console determines if it's displayed on the semihost console (1) or in the UART serial console (0)
int Log_integer(int32_t integer, func_names_t func, log_level_t level, uint8_t console){
	log_status = LOG_FAILED;
#if LOGGING
	if(enabled){
		if(log_level >= level){
			if(console){	// if console is 1 then use console, otherwise use UART
				int ret = PRINTF("%s: %s %s %d\r\n", Log_timestamp(), log_levels[level], func_names[func], integer);
				if(ret >= 0){
					log_status = LOG_SUCCESS;
				}
			}else{
#if USE_UART_INTERRUPTS
				sprintf(log_str, "%s: %s %s %d\r\n", Log_timestamp(), log_levels[level], func_names[func], integer);
			//	Send_String((uint8_t *)log_str);
#else
				sprintf(log_str, "%s: %s %s %d\r\n", Log_timestamp(), log_levels[level], func_names[func], integer);
				Send_String_Poll((uint8_t *)log_str);
#endif
			}
		}
	}
#endif
	return log_status;
}


#endif /* LOGGING_C_ */

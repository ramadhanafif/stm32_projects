/*
 * buttonPollThread.cpp
 *
 *  Created on: Sep 16, 2023
 *      Author: ramad
 */
#include "main.h"
#include "cmsis_os.h"

extern osMessageQueueId_t BtnEventHandle;

void ButtonPoll(void *argument) {
	(void) argument;
	uint64_t button_trace = 0;
	const uint64_t edge_detector = 0xFFF000; // 8 loop
	const uint64_t edge_window = 0xFFFFFF;
	const int loop_period_ms = 1;

	while (1) {
		GPIO_PinState state = HAL_GPIO_ReadPin(KEY_GPIO_Port, KEY_Pin);
		button_trace = (button_trace << 1) + state;

		int edge_detect = (button_trace & edge_window) == edge_detector;
		if (edge_detect) {
			const uint8_t data = 1;
			osMessageQueuePut(BtnEventHandle, &data, 0, 0);
		}

		osDelayUntil(loop_period_ms);
	}
}

void BtnEventHandler_task(void *argument) {
	(void) argument;

	while(1){
		uint8_t data;
		osMessageQueueGet(BtnEventHandle, &data, 0, HAL_MAX_DELAY);

		if(data){
			printf("Button press triggered\n");
		}
	}

}

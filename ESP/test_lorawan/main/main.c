#include <string.h>
#include "board.h"
#include "gpio.h"
#include "delay.h"
#include "timer.h"
#include "radio.h"

#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"


void task_wrapper(void *p)
{
    Gpio_t g;
    GpioInit( &g, 2, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 1 );  
    int pin;
    while(1) 
    {
        GpioWrite(&g, 0);
        pin = (int) g.pin;
        printf("%d\n", pin);
        //printf("hi\n");
        vTaskDelay(100 / portTICK_PERIOD_MS);
    }
}

void app_main()
{
    
    // figure out stack depth and width necessary to run this stuff
    xTaskCreate(&task_wrapper, "task_wrapper", 10000, NULL, 4, NULL);
    //uint32_t pin = GpioRead(&g);
    //printf((int)pin);
}
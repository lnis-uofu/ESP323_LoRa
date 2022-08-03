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

#include "spi.h"
#include "driver/spi_master.h"
#include "board-config.h"
#include "sx1276-board.h"

void task_wrapper(void *p)
{
    Gpio_t g;
    GpioInit( &g, 20, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );  
    //int pin;
    while(1) 
    {
        GpioWrite(&g, 0);
        vTaskDelay(500 / portTICK_PERIOD_MS);
        GpioWrite(&g, 1);
        vTaskDelay(500 / portTICK_PERIOD_MS);
    }
    //pin = (int) g.pin;
    //printf("%d\n", pin);
    //printf("hi\n");
}

void draft()
{
    SpiInit(&SX1276.Spi, SPI_2, RADIO_MOSI, RADIO_MISO, RADIO_SCLK, 15);

    // was SPI_2

    printf("spi init complete \n");

    uint16_t outData = 258;//('A' << 8) | 'I'; // this should take 16 clocks (1 bit per cycle)

    //uint16_t ret; 
    while(1)
    {
        //printf("Start of Tranmission\n");
        SpiInOut(&SX1276.Spi, outData);
        //SpiInOut(&SX1276.Spi, (uint16_t)'!');
        //printf("End of Transmission \n");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    
    // figure out stack depth and width necessary to run this stuff
    //xTaskCreate(&task_wrapper, "task_wrapper", 10000, NULL, 4, NULL);
    //uint32_t pin = GpioRead(&g);
    //printf((int)pin);
}
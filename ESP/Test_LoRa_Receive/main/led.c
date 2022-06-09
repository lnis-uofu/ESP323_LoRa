#include <stdio.h>

#include "driver/gpio.h"
#include "sdkconfig.h"
#include "led_strip.h"
#include "led.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#define BLINK_GPIO CONFIG_BLINK_GPIO

static led_strip_t *pStrip_a;

static void blink_led(int s_led_state, int r, int g, int b)
{
    /* If the addressable LED is enabled */
    if (s_led_state) {
        /* Set the LED pixel using RGB from 0 (0%) to 255 (100%) for each color */
        pStrip_a->set_pixel(pStrip_a, 0, r, g, b);
        /* Refresh the strip to send data */
        pStrip_a->refresh(pStrip_a, 100);
    } else {
        /* Set all LED off to clear all pixels */
        pStrip_a->clear(pStrip_a, 50);
    }
}

static void led_on(int r, int g, int b)
{
    /* Set the LED pixel using RGB from 0 (0%) to 255 (100%) for each color */
    pStrip_a->set_pixel(pStrip_a, 0, r, g, b);
    /* Refresh the strip to send data */
    pStrip_a->refresh(pStrip_a, 100);
}

static void led_off(void)
{
    pStrip_a->clear(pStrip_a, 50);
}

static void configure_led(void)
{
    // LED strip initialization with the GPIO and pixels number
    pStrip_a = led_strip_init(CONFIG_BLINK_LED_RMT_CHANNEL, BLINK_GPIO, 1);
    // Set all LED off to clear all pixels 
    pStrip_a->clear(pStrip_a, 50);
}

void flash_green()
{
    led_on(0,1,0);
    vTaskDelay(500 / portTICK_PERIOD_MS);
    led_off();
}



/*
static void blink_led(void)
{
    // Set the GPIO level according to the state (LOW or HIGH)
    gpio_set_level(BLINK_GPIO, s_led_state);
}

static void configure_led(void)
{
    gpio_reset_pin(BLINK_GPIO);
    // Set the GPIO as a push/pull output 
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
}
*/

/*
Code to test and understand how to use LoRa with the ESP32. Library found here
https://github.com/Inteform/esp32-lora-library
*/

#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "lora.h"
#include "esp_log.h"

static const char *TAG = "MSG: ";

void task_tx(void *p)
{
   for(;;) {
      vTaskDelay(pdMS_TO_TICKS(5000));
      lora_send_packet((uint8_t*)"Hello", 5);
      ESP_LOGI(TAG, "packet sent...\n");
   }
}

void app_main()
{
   ESP_LOGI(TAG, "Init LoRa");
   lora_init();
   ESP_LOGI(TAG, "Set Freq");
   lora_set_frequency(915e6);
   lora_enable_crc();
   xTaskCreate(&task_tx, "task_tx", 2048, NULL, 5, NULL);
}
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
      vTaskDelay(pdMS_TO_TICKS(1000));
      ESP_LOGI(TAG, "Sending Packet...\n");
      lora_send_packet((uint8_t*)"Hello", 5);
      
   }
}

void app_main()
{
   printf("Check what the spi clock freq is set at\n");
   printf("Init LoRa\n");
   lora_init(); // clock was initially 9MHz
   printf("Set Freq\n");
   //lora_set_frequency(915e6);
   //lora_set_frequency(905300000);
   lora_set_frequency(927500000);
   //lora_set_frequency(923300000);
   lora_set_spreading_factor(7);
   lora_set_bandwidth(500000);
   lora_enable_crc();
   xTaskCreate(&task_tx, "task_tx", 2048, NULL, 5, NULL);
}

//hooked RST up to GPIO7 because 32 not exist on this board

// DIO1 up to 6
// DOP5 up to 5
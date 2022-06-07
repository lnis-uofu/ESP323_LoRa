#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "lora.h"
#include "esp_log.h"

uint8_t buf[32];

static const char *TAG = "MSG: ";
int count = 0;
void task_rx(void *p)
{
   int x;
   for(;;) {
      lora_receive();    // put into receive mode
      while(lora_received()) {
         x = lora_receive_packet(buf, sizeof(buf));
         printf("Num bytes received: %d\n", x);
         buf[x] = 0;
         count ++;
         printf("Receive msg num: %d, Msg: %s\n", count, buf);
         lora_receive();
      }
      vTaskDelay(1);
   }
}

void app_main()
{
   printf("Init LoRa\n");
   lora_init();
   printf("Set Freq\n");
   lora_set_frequency(915e6);
   lora_enable_crc();
   xTaskCreate(&task_rx, "task_rx", 2048, NULL, 5, NULL);
}
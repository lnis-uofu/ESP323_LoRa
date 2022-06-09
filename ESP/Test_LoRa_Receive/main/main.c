#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "lora.h"
#include "esp_log.h"
#include "led.c"
//#include "led_strip.h"

uint8_t buf[32];
int count = 0;
static int msg_receive = 0;

void flash_wrapper(void *p)
{
   for(;;){
      led_on(0,1,0);
      vTaskDelay(500 / portTICK_PERIOD_MS);
      led_off();
      vTaskDelay(500 / portTICK_PERIOD_MS);
   }
}
   



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
         //msg_receive = 1;
         lora_receive();
         //msg_receive = 0;
      }
      vTaskDelay(1);
   }
}

void app_main()
{
   lora_init();
   printf("lora init\n");
   configure_led();
   lora_set_frequency(915e6);
   printf("Setup complete\n");
   lora_enable_crc();
   xTaskCreate(&task_rx, "task_rx", 2048, NULL, 4, NULL);
   xTaskCreate(&flash_wrapper, "flash_green", 2048, NULL, 5, NULL);
   //vTaskStartScheduler();
	//for (;;){}
}
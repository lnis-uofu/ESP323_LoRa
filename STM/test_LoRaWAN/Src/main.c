#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "stm32f0xx_hal.h"
#include "led.h"
#include "board_init.h"

/**
 * @brief Stack size for LoRaWAN Class A task.
 */
#define LORAWAN_CLASSA_TASK_STACK_SIZE    ( 1024) // do not make this too big or there is not enough memory


/**
 * @brief Prirority for LoRaWAN Class A task.
 * Priority is set to lowest task priority which is above the idle task priority.
 */
#define LORAWAN_CLASSA_TASK_PRIORITY    ( tskIDLE_PRIORITY + 1 )


void SystemClock_Config(void);

void vflash(void *p)
{
  for(;;)
  {
    tog_LED('r');
    tog_LED('b');
    vTaskDelay(500 / portTICK_PERIOD_MS);
  }
  
}


/*******************************************************************************************
* Main
* *****************************************************************************************/
int main( int argc,
          char ** argv )
{
    /* Perform any hardware initialization that can or must be done before RTOS is running */
    //board_init();
    HAL_Init();
    SystemClock_Config();
    setup_LED();
    RTC_Init();

    /* Add user tasks */
    xTaskCreate(&vflash, "flash", LORAWAN_CLASSA_TASK_STACK_SIZE, NULL, LORAWAN_CLASSA_TASK_PRIORITY, NULL );
    //on_LED('r');
    vTaskStartScheduler();

    on_LED('g');
    return 0;
}


void _Error_Handler(char * file, int line)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

    /**Initializes the CPU, AHB and APB busses clocks
    */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Initializes the CPU, AHB and APB busses clocks
    */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

    /**Configure the Systick interrupt time
    */
  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

    /**Configure the Systick
    */
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}
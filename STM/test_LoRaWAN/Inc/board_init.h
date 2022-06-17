/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
#define __main_h__
#ifdef __cplusplus
    extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
/*
#include "stm32l4xx_hal.h"
#include "stm32l475e_iot01.h"
#include "stm32l475e_iot01_accelero.h"
#include "stm32l475e_iot01_psensor.h"
#include "stm32l475e_iot01_gyro.h"
#include "stm32l475e_iot01_hsensor.h"
#include "stm32l475e_iot01_tsensor.h"
#include "stm32l475e_iot01_magneto.h"
#include "vl53l0x_proximity.h"
*/
        
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
enum
{
    BP_NOT_PUSHED = 0, BP_SINGLE_PUSH, BP_MULTIPLE_PUSH
};

/* Exported functions --------------------------------------------------------*/
void Error_Handler( void );
uint8_t Button_WaitForPush( uint32_t timeout );
void Led_On( void );
void Led_Off( void );

//extern RTC_HandleTypeDef xHrtc;
//extern RNG_HandleTypeDef xHrng;

void board_init( void );

#ifdef __cplusplus
    }
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
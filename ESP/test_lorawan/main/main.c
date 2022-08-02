/*!
 * \file      main.c
 *
 * \brief     Ping-Pong implementation
 *
 * \copyright Revised BSD License, see section \ref LICENSE.
 *
 * \code
 *                ______                              _
 *               / _____)             _              | |
 *              ( (____  _____ ____ _| |_ _____  ____| |__
 *               \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 *               _____) ) ____| | | || |_| ____( (___| | | |
 *              (______/|_____)_|_|_| \__)_____)\____)_| |_|
 *              (C)2013-2017 Semtech
 *
 * \endcode
 *
 * \author    Miguel Luis ( Semtech )
 *
 * \author    Gregory Cristian ( Semtech )
 */
#include <string.h>
#include "board.h"
#include "gpio.h"
#include "delay.h"
#include "timer.h"
#include "radio.h"
#include "esp_log.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "sx1276.h"

int DIO0Irq;

#if defined( REGION_US915 )

#define RF_FREQUENCY                                915000000 // Hz

#else
    #error "Please define a frequency band in the compiler options."
#endif


#define TX_OUTPUT_POWER                             14        // dBm

#if defined( USE_MODEM_LORA )

#define LORA_BANDWIDTH                              0         // [0: 125 kHz,
                                                              //  1: 250 kHz,
                                                              //  2: 500 kHz,
                                                              //  3: Reserved]
#define LORA_SPREADING_FACTOR                       7         // [SF7..SF12]
#define LORA_CODINGRATE                             1         // [1: 4/5,
                                                              //  2: 4/6,
                                                              //  3: 4/7,
                                                              //  4: 4/8]
#define LORA_PREAMBLE_LENGTH                        8         // Same for Tx and Rx
#define LORA_SYMBOL_TIMEOUT                         5         // Symbols
#define LORA_FIX_LENGTH_PAYLOAD_ON                  false
#define LORA_IQ_INVERSION_ON                        false

#else
    #error "Please define a modem in the compiler options."
#endif

#define RX_TIMEOUT_VALUE                            1000
#define BUFFER_SIZE                                 64 // Define the payload size here





//States_t State = LOWPOWER;

int8_t RssiValue = 0;
int8_t SnrValue = 0;

/*!
 * Radio events function pointer
 */
static RadioEvents_t RadioEvents;

/*!
 * LED GPIO pins objects
 */
//extern Gpio_t Led3;
//extern Gpio_t Led4;

/*!
 * \brief Function to be executed on Radio Tx Done event
 */
void OnTxDone( void );

/*!
 * \brief Function to be executed on Radio Rx Done event
 */
void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr );

/*!
 * \brief Function executed on Radio Tx Timeout event
 */
void OnTxTimeout( void );

/*!
 * \brief Function executed on Radio Rx Timeout event
 */
void OnRxTimeout( void );

/*!
 * \brief Function executed on Radio Rx Error event
 */
void OnRxError( void );

/**
 * Main application entry point.
 */
//#include "/Users/michael/Documents/Senior_Project/ESP/test_lorawan/main/debug.c"
static const char *TAG = "MSG: ";

/*
void task_send(void *p)
{
    uint16_t BufferSize = 4;//BUFFER_SIZE;
    uint8_t Buffer[BufferSize];//[BUFFER_SIZE];
    // Send the next PING frame
    Buffer[0] = 'B';
    Buffer[1] = 'I';
    Buffer[2] = 'K';
    Buffer[3] = 'E';
   for(;;) {
        //DelayMs(1);
        //rtc_wdt_feed();
        Radio.Send( Buffer, BufferSize );
        
        //Radio.Send( word, 13 );
        //lora_send_packet((uint8_t*)"B", 1);
        //lora_write_reg(0x0d, 0);
        DelayMs(100);
        break;
        //BoardLowPowerHandler( );
   }
}
*/
#define BUFFER_SIZE 64
uint16_t BufferSize = BUFFER_SIZE;
uint8_t  Buffer[BUFFER_SIZE];//[BufferSize];//[BUFFER_SIZE];
/* CHECK WHAT THE SPI CLCK FREQ IS */
void app_main( void )
{
    DIO0Irq = 0;
    //bool isMaster = true;
    //uint8_t i;

    // Target board initialization
    BoardInitMcu( );
    // TODO: CHECK THE DIVIDER FOR THE TIMERS
    BoardInitPeriph( );

    // Radio initialization
    RadioEvents.TxDone = OnTxDone;
    RadioEvents.RxDone = OnRxDone;
    RadioEvents.TxTimeout = OnTxTimeout;
    RadioEvents.RxTimeout = OnRxTimeout;
    RadioEvents.RxError = OnRxError;

    

    // CHANGE THE FREQUENCY TO 915MHZ
    Radio.Init( &RadioEvents );
    ESP_LOGI(TAG, "After Init\n");
    Radio.SetChannel( RF_FREQUENCY );
    

#if defined( USE_MODEM_LORA )

    Radio.SetTxConfig( MODEM_LORA, TX_OUTPUT_POWER, 0, LORA_BANDWIDTH,
                                   LORA_SPREADING_FACTOR, LORA_CODINGRATE,
                                   LORA_PREAMBLE_LENGTH, LORA_FIX_LENGTH_PAYLOAD_ON,
                                   true, 0, 0, LORA_IQ_INVERSION_ON, 3000 );
    

    Radio.SetRxConfig( MODEM_LORA, LORA_BANDWIDTH, LORA_SPREADING_FACTOR,
                                   LORA_CODINGRATE, 0, LORA_PREAMBLE_LENGTH,
                                   LORA_SYMBOL_TIMEOUT, LORA_FIX_LENGTH_PAYLOAD_ON,
                                   0, true, 0, 0, LORA_IQ_INVERSION_ON, true );
    

    Radio.SetMaxPayloadLength( MODEM_LORA, BUFFER_SIZE );
    

#else
    #error "Please define a frequency band in the compiler options."
#endif

   
    
    //Radio.SetTxContinuousWave( 915000000, TX_OUTPUT_POWER,  3000);
    
    
    
    // Send the next PING frame
    /*
    Buffer[0] = 'B';
    Buffer[1] = 'I';
    Buffer[2] = 'K';
    Buffer[3] = 'E';
    */
    
    /*
    // We fill the buffer with numbers for the payload
    int i =0;
    for( i = 4; i < BufferSize; i++ )
    {
        Buffer[i] = i - 4;
    }
    */
    DelayMs( 1 );
    
    //uint8_t *word = (uint8_t *)"Great Success";
    
    
    //Radio.Rx( 0 );
    
    ESP_LOGI(TAG, "Before While Loop\n");
    
    while( 1 )
    {
        Radio.Rx( RX_TIMEOUT_VALUE );
        //Radio.Rx( 0 );
        //DelayMs(1);
        //Radio.Send( Buffer, BufferSize );
        if(DIO0Irq == 1)
        {
            ESP_LOGI(TAG, "irq == 1");
            DIO0Irq = 0;
            SX1276OnDio0Irq( NULL );
            ESP_LOGI(TAG, "After IRQ");

        }
        //Radio.Send( word, 13 );
        //lora_send_packet((uint8_t*)"B", 1);
        //lora_write_reg(0x0d, 0);
        DelayMs(1);
        
        //BoardLowPowerHandler( );

    }
    /*
    BaseType_t xReturned;
    xReturned = xTaskCreate(&task_send, "task_send", 2048, NULL, 5, NULL);
    if( xReturned == pdPASS )
    {
        //The task was created.  Use the task's handle to delete the task. 
        ESP_LOGI(TAG, "Task Successfully Created\n");
    }
    */

   /*
   ESP_LOGI(TAG, "Before While Loop\n");
   while(1)
   {
    Radio.Rx( RX_TIMEOUT_VALUE );
    DelayMs(1);
   }
   */
   
}


void OnTxDone( void )
{
    ESP_LOGI(TAG, "Tx Done\n");
    Radio.Sleep( );
    //Radio.Sleep( );
    //State = TX;
}

void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr )
{
    
    ESP_LOGI(TAG, "Rx Done\n");
    Radio.Sleep( );
    
    BufferSize = size;
    memcpy( Buffer, payload, size);
    printf("%s\n", Buffer);
    //RssiValue = rssi;
    //SnrValue = snr;
    //State = RX;
    
}

void OnTxTimeout( void )
{
    /*
    Radio.Sleep( );
    //State = TX_TIMEOUT;
    */
}

void OnRxTimeout( void )
{
    
    ESP_LOGI(TAG, "Rx Timeout\n");
    Radio.Sleep( );
    
    //State = RX_TIMEOUT;
    
}

void OnRxError( void )
{
    /*
    Radio.Sleep( );
    //State = RX_ERROR;
    */
}
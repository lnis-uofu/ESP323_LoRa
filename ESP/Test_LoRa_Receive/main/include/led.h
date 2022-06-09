//#ifndef _led_h
//#define _led_h

#define CONFIG_BLINK_GPIO 48
#define CONFIG_BLINK_LED_RMT 1
#define CONFIG_BLINK_LED_RMT_CHANNEL 0

static void configure_led(void);

static void blink_led(int s_led_state, int r, int g, int b);

//#endif
/*
This file contains functions for controlling the LEDs on the STM. Written for final project in U of U ECE 5780, Spring 2021.

Authors: Jacob Bills (u1012574) and Michael Keyser (u1081888)
*/

#include "led.h"
#include "main.h"
#include "stm32f0xx_hal.h"

/* Toggle an LED */
void tog_LED(char c)
{
  if(c == 'r') GPIOC->ODR ^= (1 << 6); // toggle red LED;
	else if(c == 'b') GPIOC->ODR ^= (1 << 7); // toggle blue LED;
	else if(c == 'o') GPIOC->ODR ^= (1 << 8); // toggle orange LED;
	else if(c == 'g') GPIOC->ODR ^= (1 << 9); // toggle green LED;
}

/* Turn an LED on */
void on_LED(char c)
{
  if(c == 'r') GPIOC->ODR |= (1 << 6); // on red LED;
	else if(c == 'b') GPIOC->ODR |= (1 << 7); // on blue LED;
	else if(c == 'o') GPIOC->ODR |= (1 << 8); // on orange LED;
	else if(c == 'g') GPIOC->ODR |= (1 << 9); // on green LED;
}

/* Turn an LED off */
void off_LED(char c)
{
  if(c == 'r') GPIOC->ODR &= ~(1 << 6); // off red LED;
	else if(c == 'b') GPIOC->ODR &= ~(1 << 7); // off blue LED;
	else if(c == 'o') GPIOC->ODR &= ~(1 << 8); // off orange LED;
	else if(c == 'g') GPIOC->ODR &= ~(1 << 9); // off green LED;
}

/* Setup GPIO pins to work with LEDs. Start LEDs off. */
void setup_LED()
{
	RCC->AHBENR |= RCC_AHBENR_GPIOCEN;//Enable clock to GPIOC

	//Setup Red LED-PC6
	GPIOC->MODER |= (1 << 12);//Set to general output mode
	//Already Push-Pull
	//Already Low-Speed
	//Already No Pull Up/Down

	//Setup Blue LED-PC7
	GPIOC->MODER |= (1 << 14);//Set to general output mode
	//Already Push-Pull
	//Already Low-Speed
	//Already No Pull Up/Down

	//Setup Orange LED-PC8
	GPIOC->MODER |= (1 << 16);//Set to general output mode
	//Already Push-Pull
	//Already Low-Speed
	//Already No Pull Up/Down

	//Setup Green LED-PC9
	GPIOC->MODER |= (1 << 18);//Set to general output mode
	//Already Push-Pull
	//Already Low-Speed
	//Already No Pull Up/Down


	off_LED('g');
  	off_LED('r');
  	off_LED('b');
  	off_LED('o');
}

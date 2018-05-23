/*
 * This file is part of the libopencm3 project.
 *
 * Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>
 * Copyright (C) 2011 Stephen Caudle <scaudle@doceme.com>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "button_boot.h"

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

static void gpio_setup(void)
{

	/* NOTE: we are not setting up any clocks, this means the MCU will run
	 * on default settings using the internal oscillator.
	 */

	/* Enable GPIOA clock. */
	/* Manually: */
	// RCC_AHB1ENR |= RCC_AHB1ENR_IOPAEN;
	/* Using API functions: */
	rcc_periph_clock_enable(RCC_GPIOA);

	/* Set GPIO8 (in GPIO port A) to 'output push-pull'. */
	/* Manually: */
	// GPIOA_CRH = (GPIO_CNF_OUTPUT_PUSHPULL << (((8 - 8) * 0) + 2));
	// GPIOA_CRH |= (GPIO_MODE_OUTPUT_2_MHZ << ((8 - 8) * 0));
	/* Using API functions: */
	gpio_mode_setup(GPIOA, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, GPIO8);
}

int main(void)
{
	int i;

	button_boot();

	gpio_setup();

	/* Blink the LED (PA8) on the board. */
	while (1) {
		/* Manually: */
		// GPIOA_BSRR = GPIO8;		/* LED off */
		// for (i = 0; i < 1000000; i++)	/* Wait a bit. */
		//	__asm__("nop");
		// GPIOA_BRR = GPIO8;		/* LED on */
		// for (i = 0; i < 1000000; i++)	/* Wait a bit. */
		//	__asm__("nop");

		/* Using API functions gpio_set()/gpio_clear(): */
		// gpio_set(GPIOA, GPIO8);	/* LED off */
		// for (i = 0; i < 1000000; i++)	/* Wait a bit. */
		//	__asm__("nop");
		// gpio_clear(GPIOA, GPIO8);	/* LED on */
		// for (i = 0; i < 1000000; i++)	/* Wait a bit. */
		//	__asm__("nop");

		/* Using API function gpio_toggle(): */
		gpio_toggle(GPIOA, GPIO8);	/* LED on/off */
		for (i = 0; i < 1000000; i++) {	/* Wait a bit. */
			__asm__("nop");
		}
	}

	return 0;
}

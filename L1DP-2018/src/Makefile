OUTPUT = l1dp-2018
OBJS = src/main.o

all: ${OUTPUT}

${OUTPUT}: ${OBJS}
	arm-none-eabi-gcc  -Werror -g -O3 -MD -Wall -Wundef -I../libopencm3//include -DSTM32F4 -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -o main.o -c main.c
##
## This file is part of the libopencm3 project.
##
## Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>
##
## This library is free software: you can redistribute it and/or modify
## it under the terms of the GNU Lesser General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this library.  If not, see <http://www.gnu.org/licenses/>.
##

BINARY = l1dp

OBJS = main.o button_boot.o

LDSCRIPT = ../1bitsy-stm32f415rgt-gfx.ld

V = 1
include ../libopencm3.target.mk



# You can enable size optimization for project deployment, but it can get
# in the way of debugging your code
cflags := $(filter_out -O%, $(CFLAGS)) -Werror -g
# In theory this -O should be valid for everything but video.o but somehow it
# affects everything? :(
OPT 	:= -O3
CFLAGS	 = $(cflags) $(OPT)


# OUTPUT = l1dp-2018
# OBJS = main.o

# all: ${OUTPUT}

# ${OUTPUT}: ${OBJS}
# 	arm-none-eabi-gcc  -Werror -g -O3 -MD -Wall -Wundef -I../libopencm3//include -DSTM32F4 -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -o main.o -c main.c

# %.o: %.c
# 	arm-none-eabi-gcc  -Werror -g -O3 -MD -Wall -Wundef -I../libopencm3//include -DSTM32F4 -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -o main.o -c main.c
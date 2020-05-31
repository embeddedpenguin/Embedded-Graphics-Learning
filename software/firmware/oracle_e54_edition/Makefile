##
# Project Title
#
# @file
# @version 0.1

NAME=oracle_e54_ed
TOOLCHAIN=arm-none-eabi-

CC=gcc
print-%  : ; @echo $* = $($*)

#DIR_INCLUDES = \
#-I"./" \
-I"./config" \
-I"./hal/include" \
-I"./hal/utils/include" \
-I"./hpl/cmcc" \
-I"./hpl/core" \
-I"./hpl/dmac" \
-I"./hpl/eic" \
-I"./hpl/gclk" \
-I"./hpl/mclk" \
-I"./hpl/osc32kctrl" \
-I"./hpl/oscctrl" \
-I"./hpl/pm" \
-I"./hpl/port" \
-I"./hpl/ramecc" \
-I"./hpl/sercom" \
-I"./hpl/tc" \
-I"./hri" \
-I"./CMSIS/Core/Include" \
-I"./include"


#INC=$(shell find . -type f -name '*.h' -printf "-I\"./%h\" \\\ \n" | sort -u)
#INC=$(shell find . -type f -name '*.h' -printf "-I\"./%h\"\0" | sort -zu | sed -z 's/$/\n/')
INC=$(shell find . -type f -name '*.h' -printf '-I./%h\0' | uniq -z | sort -zu | tr '\0' ' ')
OUTPUT_FILE_NAME=$(NAME)
OUTPUT_FILE_PATH+=$(OUTPUT_FILE_NAME).elf

SRC:=$(shell find ./ -type f -name '*.c')
OBJ:=$(patsubst %.c, %.o, $(SRC))
DEPS:=$(OBJ:%.o=%.d)

#all targets
all: $(OUTPUT_FILE_PATH)

#linker target
$(OUTPUT_FILE_PATH): $(OBJ)
	@echo Building target: $@
	@echo Invoking: ARM/GNU Linker
	"$(TOOLCHAIN)$(CC)" -o $(OUTPUT_FILE_NAME).elf $(OBJ)

# compiler targets
%.o: %.c
	@echo Building file: $<
	@echo ARM/GNU C Compiler
	$(QUOTE)arm-none-eabi-gcc$(QUOTE) -x c -mthumb -DDEBUG -Os -ffunction-sections -mlong-calls -g3 -Wall -c -std=gnu99 \
	-D__SAME54P20A__ -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 \
	$(INC) \
	-MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<"

	@echo Finished building: $<

%.o: %.s
	@echo Building file: $<
	@echo ARM/GNU Assembler
	$(QUOTE)arm-none-eabi-as$(QUOTE) -x c -mthumb -DDEBUG -Os -ffunction-sections -mlong-calls -g3 -Wall -c -std=gnu99 \
	-D__SAME54P20A__ -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 \
	$(INC) \
	-MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<"

	@echo Finished building: $<

%.o: %.S
	@echo Building file: $<
	@echo ARM/GNU Preprocessing Assembler
	$(QUOTE)arm-none-eabi-gcc$(QUOTE) -x c -mthumb -DDEBUG -Os -ffunction-sections -mlong-calls -g3 -Wall -c -std=gnu99 \
	-D__SAME54P20A__ -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 \
	$(INC) \
	-MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<"

	@echo Finished building: $<

# Detect changes in the dependent files and recompile the respective object files.

# end

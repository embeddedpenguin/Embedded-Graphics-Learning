##
# Project Title
#
# @file
# @version 0.1

PNAME=oracle_e54_ed
TOOLCHAIN=arm-none-eabi-

CC=gcc
print-%  : ; @echo $* = $($*)

# Output Targets
TARGET_HEX = $(PNAME).hex
TARGET_A = $(PNAME).a
TARGET_BIN = $(PNAME).bin
TARGET_LSS =$(PNAME).lss
TARGET_EEP =$(PNAME).eep
TARGET_MAP =$(PNAME).map
TARGET_SREC = $(PNAME).srec
TARGET_ELF = $(PNAME).elf

INC=$(shell find . -type f -name '*.h' -printf '-I./%h\0' | uniq -z | sort -zu | tr '\0' ' ')

OUTPUT_FILE_NAME=$(PNAME)
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
	#"$(TOOLCHAIN)$(CC)" -o $(OUTPUT_FILE_NAME).elf $(OBJ) -Wl,\
	#--start-group -lm -Wl,\
	#--end-group -mthumb Wl,\
	#--map="./gcc/$(OUTPUT_FILE_NAME).map" \
	#--specs=nano.specs -Wl, --gc-sections -mcpu=cortex-m4 \
	#-T"./gcc/gcc/same54p20a_flash.ld" \
	#-L"./gcc/gcc"
	#"arm-none-eabi-objcopy" -O binary "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).bin"
	#"arm-none-eabi-objcopy" -O ihex -R .eeprom -R .fuse -R .lock -R .signature  \
    #    "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).hex"
	#"arm-none-eabi-objcopy" -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma \
    #    .eeprom=0 --no-change-warnings -O binary "$(OUTPUT_FILE_NAME).elf" \
    #    "$(OUTPUT_FILE_NAME).eep" || exit 0
	#"arm-none-eabi-objdump" -h -S "$(OUTPUT_FILE_NAME).elf" > "$(OUTPUT_FILE_NAME).lss"
	#"arm-none-eabi-size" "$(OUTPUT_FILE_NAME).elf"
	"arm-none-eabi-gcc" -o $(OUTPUT_FILE_NAME).elf $(OBJS_AS_ARGS) -Wl,\
	--start-group -lm -Wl,--end-group -mthumb \
	-Wl,-Map="$(OUTPUT_FILE_NAME).map" --specs=nano.specs -Wl,\
	--gc-sections -mcpu=cortex-m4 \
	-T"./gcc/gcc/same54p20a_flash.ld" \
	-L"./gcc/gcc"

@echo Finished building target: $@

	"arm-none-eabi-objcopy" -O binary "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).bin"
	"arm-none-eabi-objcopy" -O ihex -R .eeprom -R .fuse -R .lock -R .signature  \
        "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).hex"
	"arm-none-eabi-objcopy" -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma \
        .eeprom=0 --no-change-warnings -O binary "$(OUTPUT_FILE_NAME).elf" \
        "$(OUTPUT_FILE_NAME).eep" || exit 0
	"arm-none-eabi-objdump" -h -S "$(OUTPUT_FILE_NAME).elf" > "$(OUTPUT_FILE_NAME).lss"
	"arm-none-eabi-size" "$(OUTPUT_FILE_NAME).elf"
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


clean:
	rm -f $(OBJ)
	rm -f $(OUTPUT_FILE_PATH)
	rm -f $(OUTPUT_FILE_NAME).a $(OUTPUT_FILE_NAME).hex $(OUTPUT_FILE_NAME).bin \
        $(OUTPUT_FILE_NAME).lss $(OUTPUT_FILE_NAME).eep $(OUTPUT_FILE_NAME).map \
        $(OUTPUT_FILE_NAME).srec
# end

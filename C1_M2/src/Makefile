#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# Simple make file for building system on two platforms :
#       1)the host environment 
#       2)the target embedded system MSP432
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <FILE>.o - Builds <FILE>.o object file
#      <FILE>.i - Builds a <FILE>.i preprocessed file
#      <FILE>.asm - Dumps <FILE>.asm assembly file
#      <FILE>.d - Builds <FILE>.d dependency file
#      compile-all - Compiles all source files in project, but does not link.
#      build - Builds and links all source files
#      all - Same as build
#      clean - removes all generated file
#
# Platform Overrides:
#      PLATFORM - Target platform (HOST, MSP432)
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST
STD = c99
TARGET = c1m2

# Architectures Specific Flags
LINKER_FILE = ../m2msp432p401r.lds
CPU = cortex-m4
INSTRUCTION_SET= thumb
ARCH = armv7e-m
SPECS =  nosys.specs
FPU = fpv4-sp-d16
FLOAT_ABI = hard
OBJDUMP = arm-none-eabi-objdump


# Check the platform
ifeq ($(PLATFORM),HOST)
	CC = gcc
	CCSIZE = size
	CCSIZEFLAGS = -Atd
	LD = ld
	OBJDUMP = objdump
	OBJDFLAGS = -S
	LDFLAGS = -Wl,-Map=$(TARGET).map
	CFLAGS = -std=$(STD) -Wall -Werror -g -O0
	CPPFLAGs = -E 
	PLATFORM = HOST
endif

ifeq ($(PLATFORM),MSP432)
	CC = arm-none-eabi-gcc
	CCSIZE = arm-none-eabi-size
	CCSIZEFLAGS = -Atd
	LD = arm-none-eabi-ld
	OBJDUMP = arm-none-eabi-objdump
	OBJDFLAGS = -S
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE) 
	CFLAGS = std=$(STD) -Wall -mcpu=$(CPU) -m$(INSTRUCTION_SET) -march=$(ARCH) --specs=$(SPECS) -mfpu=$(FPU)-mfloat-abi=$(FLOAT_ABI) 
	CPPFLAGS = -E
	PLATFORM = MSP432
endif

# Pattern Matching - Associate source files with:
OBJECTS = $(SOURCES:.c=.o) # Object files
ASSMS = $(SOURCES:.c=.asm) # Assembly files
PREPRSD = $(SOURCES:.c=.i) # Preprocessed files
DEPEN = $(SRCS:.c=.d)	   # Dependency files

%.o : %.c
	$(CC) -c $^ $(CFLAGS) -D$(PLATFORM) $(INCLUDES)  -o $@

%.i : %.c
	$(CC) -E -D$(PLATFORM) $< $(CFLAGS) $(INCLUDES) -o $@

%.asm : %.c
	$(CC) -S -D$(PLATFORM) $< $(CFLAGS) $(INCLUDES) $(LDFLAGS) -o $@
	$(OBJDUMP) -S -D$(PLATFORM) $< $(CFLAGS) $(INCLUDES) $(LDFLAGS) -o $@


.PHONY: compile-all
compile-all: $(OBJECTS)

.PHONY: build
build: all

.PHONY: all
all: $(TARGET).out
$(TARGET).out: $(OBJECTS)
	$(CC) $^ $(CFLAGS) $(LDFLAGS) -D$(PLATFORM) $(INCLUDES) -o $@ 

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(TARGET).out $(TARGET).map $(PREPRSD) $(ASSMS)

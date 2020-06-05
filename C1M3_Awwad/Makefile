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
# Simple make file for building system on the MSP432
#
# Use: make [TARGET] 
#
# Build Targets:
#	build - Compile all object files and link into a final executable
#	compile-all - Compile all object files, but DO NOT link.
#	clean - remove all compiled objects, preprocessed outputs, assembly outputs, executable files and build output files.
#	nm - print all defined symbols (variables and code) in the output executable
#	dump - dump assembly from the machine code  
#	readelf  print information about a ELF formatted file 
#
#------------------------------------------------------------------------------
include sources.mk

# Architectures Specific Flags
LINKER_FILE = msp432p401r.lds
CPU = cortex-m4
ARCH= thumb
M_ARCH = armv7e-m
SPECS =  nosys.specs
FPU = fpv4-sp-d16
FLOAT_ABI = hard
PLATFORM  = MSP432


# General Flags 
OBJDFLAGS = -S
CPPFLAGs = -E 
CCSIZEFLAGS = -Atd
STD = c99
TARGET = c1m3
GFLAGS = -std=$(STD) -Wall -Werror -g -O0


CC = arm-none-eabi-gcc
CCSIZE = arm-none-eabi-size
NM = arm-none-eabi-nm
LD = arm-none-eabi-ld
OBJDUMP = arm-none-eabi-objdump
READELF = arm-none-eabi-readelf
LDFLAGS =  -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
CFLAGS =  $(GFLAGS) -mcpu=$(CPU) -m$(ARCH) -march=$(M_ARCH) --specs=$(SPECS) -mfpu=$(FPU) -mfloat-abi=$(FLOAT_ABI) 



OBJECTS = $(SOURCES:.c=.o)
ASSMS = $(SOURCES:.c=.asm)
PREPRSD = $(SOURCES:.c=.i)
DEP = $(SOURCES:.c=.d)

# Generate the object file for all c-source files (but do not link) by 

# specifying the object file you want to compile

%.o : %.c
	$(CC) -c -MD $^ $(CFLAGS) -D$(PLATFORM)  -o $@

# Generate the preprocessed output of all c-program implementation files

%.i : %.c
	$(CC) -E -D$(PLATFORM) $< $(CFLAGS)  -o $@
# Generate assembly output of c-program implementation files and the final output executable

%.asm : %.c
	$(CC) -S -D$(PLATFORM) $< $(CFLAGS) $(LDFLAGS) -o $@
	$(OBJDUMP) -S -D$(PLATFORM) $< $(CFLAGS) $(LDFLAGS) -o $@


.PHONY: compile-all
compile-all: $(OBJECTS)

.PHONY: build
build: all

.PHONY: all
all: $(TARGET).out
$(TARGET).out: $(OBJECTS)
	$(CC) $^ $(CFLAGS) $(LDFLAGS) -D$(PLATFORM)  -o $@

.PHONY: nm
nm: all
	$(NM)  -S --defined --size-sort -s c1m3.out


.PHONY: dump
dump: all
	$(OBJDUMP) -S c1m3.out
	

.PHONY: readelf
readelf: all
	$(READELF)  c1m3.out --all  

.PHONY: clean
clean:
	rm -f $(OBJECTS) $(TARGET).out $(TARGET).map $(PREPRSD) $(ASSMS) $(TARGET).o $(DEP)


BUILD ?= $(CURDIR)/../build
OUTPUT_DIR := $(BUILD)/lib
INCLUDE_DIR := $(CURDIR)/../include
CC ?= gcc
CFLAGS ?= -m64 -ffreestanding -O2 -Wall -Wextra -fno-pie -I$(INCLUDE_DIR)

obj-y := string.o

OBJS := $(obj-y:%=$(OUTPUT_DIR)/%)

all: $(OBJS)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

$(OUTPUT_DIR)/%.o: %.c | $(OUTPUT_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OUTPUT_DIR)

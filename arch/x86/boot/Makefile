BUILD ?= $(CURDIR)/../../build
KERNEL_DIR := $(CURDIR)/../../kernel
INCLUDE_DIR := $(CURDIR)/../../include

CC=gcc
CFLAGS=-m64 -ffreestanding -O2 -Wall -Wextra -fno-pie -I$(INCLUDE_DIR)
LDFLAGS=-T linker.ld -nostdlib

OBJDIR := $(BUILD)/arch/x86/boot

all: $(BUILD)/kernel.elf

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)/boot.o: boot.S | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR)/main.o: $(KERNEL_DIR)/main.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR)/tty.o: $(KERNEL_DIR)/tty.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD)/kernel.elf: $(OBJDIR)/boot.o $(OBJDIR)/main.o $(OBJDIR)/tty.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -rf $(BUILD)/arch

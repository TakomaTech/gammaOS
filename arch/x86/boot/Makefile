BUILD ?= $(CURDIR)/../../../build
KERNEL_DIR := $(CURDIR)/../../../kernel
LIB_DIR := $(CURDIR)/../../../lib
DRIVERS_DIR := $(CURDIR)/../../../drivers
MM_DIR := $(CURDIR)/../../../mm
FS_DIR := $(CURDIR)/../../../fs
NET_DIR := $(CURDIR)/../../../net
INIT_DIR := $(CURDIR)/../../../init
IPC_DIR := $(CURDIR)/../../../ipc
INCLUDE_DIR := $(CURDIR)/../../../include

CC=gcc
CFLAGS=-m64 -ffreestanding -O2 -Wall -Wextra -fno-pie -I$(INCLUDE_DIR)
LDFLAGS=-T linker.ld -nostdlib -no-pie

OBJDIR := $(BUILD)/arch/x86/boot
KERNEL_OBJS := $(BUILD)/kernel/main.o $(BUILD)/kernel/tty.o
LIB_OBJS := $(BUILD)/lib/string.o
DRIVERS_OBJS := $(BUILD)/drivers/console.o
MM_OBJS := $(BUILD)/mm/allocator.o
FS_OBJS := $(BUILD)/fs/vfs.o
NET_OBJS := $(BUILD)/net/stack.o
INIT_OBJS := $(BUILD)/init/init.o
IPC_OBJS := $(BUILD)/ipc/message.o

all: $(BUILD)/kernel.elf

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(BUILD)/kernel/main.o $(BUILD)/kernel/tty.o:
	$(MAKE) -C $(KERNEL_DIR) BUILD=$(BUILD)

$(BUILD)/lib/string.o:
	$(MAKE) -C $(LIB_DIR) BUILD=$(BUILD)

$(BUILD)/drivers/console.o:
	$(MAKE) -C $(DRIVERS_DIR) BUILD=$(BUILD)

$(BUILD)/mm/allocator.o:
	$(MAKE) -C $(MM_DIR) BUILD=$(BUILD)

$(BUILD)/fs/vfs.o:
	$(MAKE) -C $(FS_DIR) BUILD=$(BUILD)

$(BUILD)/net/stack.o:
	$(MAKE) -C $(NET_DIR) BUILD=$(BUILD)

$(BUILD)/init/init.o:
	$(MAKE) -C $(INIT_DIR) BUILD=$(BUILD)

$(BUILD)/ipc/message.o:
	$(MAKE) -C $(IPC_DIR) BUILD=$(BUILD)

$(OBJDIR)/boot.o: boot.S | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD)/kernel.elf: $(OBJDIR)/boot.o $(KERNEL_OBJS) $(LIB_OBJS) $(DRIVERS_OBJS) $(MM_OBJS) $(FS_OBJS) $(NET_OBJS) $(INIT_OBJS) $(IPC_OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -rf $(BUILD)

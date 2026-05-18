BUILD=build
ISO=iso
KERNEL=$(BUILD)/kernel.elf
ISO_IMAGE=$(BUILD)/gamma.iso
GRUB_CFG=$(ISO)/boot/grub/grub.cfg

CC=gcc
LD=ld
CFLAGS=-m64 -ffreestanding -O2 -Wall -Wextra -fno-pie
LDFLAGS=-T src/linker.ld -nostdlib

.PHONY: all clean run iso
all: $(ISO_IMAGE)

$(BUILD):
	mkdir -p $(BUILD)

$(ISO):
	mkdir -p $(ISO)/boot/grub

$(KERNEL): | $(BUILD)
	$(CC) $(CFLAGS) -c src/boot.S -o $(BUILD)/boot.o
	$(CC) $(CFLAGS) -c src/kernel.c -o $(BUILD)/kernel.o
	$(LD) $(LDFLAGS) -o $(KERNEL) $(BUILD)/boot.o $(BUILD)/kernel.o

$(GRUB_CFG): | $(ISO)
	cat > $(GRUB_CFG) <<'EOF'
set timeout=0
set default=0
menuentry "Gamma Kernel" {
    multiboot2 /boot/kernel.elf
    boot
}
EOF

$(ISO_IMAGE): $(KERNEL) $(GRUB_CFG)
	cp $(KERNEL) $(ISO)/boot/kernel.elf
	grub-mkrescue -o $(ISO_IMAGE) $(ISO) 2>/dev/null || true

run: $(ISO_IMAGE)
	qemu-system-x86_64 -cdrom $(ISO_IMAGE) -m 512M -serial stdio

clean:
	rm -rf $(BUILD) $(ISO)

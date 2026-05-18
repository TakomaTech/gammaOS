# Booting Gamma

This document describes how Gamma boots on x86_64.

## Multiboot2

Gamma uses a simple Multiboot2 header in `arch/x86/boot/boot.S`.
The bootloader (GRUB) loads the kernel image and jumps to `start`.

## Early startup

The entry point clears segment registers, sets up a stack, and calls `kmain`.

## Kernel entry

`kmain` is defined in `kernel/main.c` and initializes the VGA console before entering the main idle loop.

## Build flow

- `make run` builds the kernel using `arch/x86/boot/Makefile`
- `build/kernel.elf` is packaged into a GRUB ISO
- QEMU is launched with the ISO using `qemu-system-x86_64`

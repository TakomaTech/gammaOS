# Gamma Kernel Roadmap

Gamma is intended to become a free, open source Unix-like kernel that forms the base of the Gamma Operating System.

## Vision

- Minimal, modular kernel core written in C and assembly
- GPLv3-licensed from day one
- Bootable on x86_64 hardware via GRUB
- A strong foundation for later Unix-like features: process management, memory management, drivers, and a shell

## Phase 1: Bootstrap

- Boot using Multiboot2
- Provide a freestanding kernel entry point
- Print a simple status message to VGA text mode
- Build with GNU toolchain and GRUB
- Run with QEMU for rapid iteration

## Phase 2: Kernel foundations

- Add basic memory management and heap
- Create a simple interrupt descriptor table (IDT)
- Add timer and keyboard support
- Implement a basic scheduler and process model

## Phase 3: Unix-like base

- Implement syscall interface
- Add process and thread abstractions
- Support POSIX-like file and device semantics
- Build an init process and simple shell

## Contribution

Contributions are welcome. Please keep changes small and make sure they are compatible with the GPLv3 license.

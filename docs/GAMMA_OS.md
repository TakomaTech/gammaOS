# Using this repository for Gamma OS

This repository is the kernel foundation for Gamma OS. It provides a bootable x86_64 kernel scaffold plus a Linux-style source layout.

## Purpose

Use this repo as the base kernel tree for Gamma OS:

- `arch/x86/boot/` contains the Multiboot2 entry and boot startup
- `kernel/` contains the core kernel runtime and console support
- `include/linux/` contains shared kernel headers
- `lib/`, `drivers/`, `init/`, `mm/`, `fs/`, `net/`, `ipc/` are ready for subsystem expansion
- `Kconfig` / `Kbuild` provide a configurable build structure

## How to use it

1. Clone or fork this repository into your Gamma OS project.
2. Build the kernel:
   - `make run`
   - or `./scripts/build.sh`
3. Launch the OS in QEMU:
   - `./tools/run-qemu.sh`

## Recommended Gamma OS development flow

- Keep the current boot and kernel entry path intact while adding features in the subsystem folders.
- Add new headers under `include/linux/` and implementation files in the appropriate directory.
- Use `Kconfig` fragments to expose new features and subsystem options.
- Use `Kbuild` or `Makefile` rules to compile new kernel objects into the final image.

## Gamma OS roadmap

### Phase 1: Foundation

- Keep the existing boot path and console working
- Add interrupt descriptor table (IDT) support
- Build a basic memory allocator and page-table support
- Add a timer interrupt and keyboard input

### Phase 2: Kernel core

- Implement a scheduler and process/task framework
- Add a syscall interface for user-mode services
- Create a basic VFS and filesystem driver model
- Implement simple device drivers for console, storage, and input

### Phase 3: Unix-like OS

- Add an init process and startup sequence
- Build a minimal shell or command interpreter
- Add POSIX-like process and file semantics
- Add networking and IPC primitives

### Phase 4: Userland and polish

- Add a userspace program loader and application framework
- Improve driver support for more hardware
- Add documentation and developer tooling
- Keep the kernel GPLv3 and build the community around Gamma OS

## Notes

This repository is not a full OS yet. It is a kernel scaffold and a starting point. The next steps are to implement real subsystems and to evolve the build system into a complete Gamma OS kernel tree.

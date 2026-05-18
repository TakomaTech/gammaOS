# gamma
Gamma Kernel repository, for everyone to fork

A free, open source Unix-like kernel scaffold for the Gamma Operating System.

## Getting started

Requirements:
- GNU `gcc`, `ld`
- GNU `make`
- `grub-mkrescue`
- `qemu-system-x86_64`

Build and run:

```sh
make run
```

This will build `build/kernel.elf`, create a GRUB ISO, and launch QEMU.

## Project structure

- `arch/` — Architecture-specific code (x86 boot support)
- `block/` — Block device subsystem
- `crypto/` — Cryptographic helpers and algorithms
- `drivers/` — Device driver infrastructure
- `fs/` — Filesystem and VFS abstractions
- `include/linux/` — Kernel-facing headers and API definitions
- `init/` — Early initialization and init process support
- `ipc/` — Inter-process communication primitives
- `kernel/` — Core kernel subsystems and runtime
- `lib/` — Reusable kernel library code
- `mm/` — Memory management
- `net/` — Networking stack
- `scripts/` — Build and development scripts
- `tools/` — Kernel tooling and utilities
- `Documentation/` — Project documentation
- `MAINTAINERS` — Maintainers metadata
- `CREDITS` — Project credits and acknowledgements
- `Kconfig` — Kernel configuration entrypoint
- `docs/ROADMAP.md` — Kernel roadmap and goals

## License

This project is licensed under GPLv3.

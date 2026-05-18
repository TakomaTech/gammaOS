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

Or use the provided helper scripts:

```sh
./scripts/build.sh
./tools/run-qemu.sh
```

This will build `build/kernel.elf`, create a GRUB ISO, and launch QEMU.

## Project structure

- `arch/x86/boot/` — Multiboot2 boot code and architecture-specific startup
- `block/` — Block device subsystem (storage drivers)
- `crypto/` — Cryptographic primitives and security helpers
- `drivers/` — Device driver infrastructure
- `fs/` — Filesystem and VFS abstractions
- `include/linux/` — Kernel-facing headers and public APIs
- `init/` — Early initialization and init process support
- `ipc/` — Inter-process communication primitives
- `kernel/` — Core kernel subsystems and runtime code
- `lib/` — Reusable kernel library helpers
- `mm/` — Memory management
- `net/` — Networking stack
- `scripts/` — Build and development scripts
- `tools/` — Kernel tooling and utilities
- `Documentation/` — Project documentation
- `MAINTAINERS` — Maintainers metadata
- `CREDITS` — Project credits and acknowledgements
- `Kconfig` — Kernel configuration entrypoint
- `docs/ROADMAP.md` — Kernel roadmap and goals

## Note

The primary kernel implementation currently lives in `arch/x86/boot/` and `kernel/`.

## License

This project is licensed under GPLv3.

# Contributing to Gamma

Thank you for helping build Gamma OS.

## How to contribute

1. Fork this repository and create a feature branch.
2. Keep PRs small and focused.
3. Prefer adding code under the subsystem directory that matches the feature:
   - `arch/` for architecture and boot code
   - `kernel/` for core kernel runtime and scheduler
   - `mm/` for memory management
   - `drivers/` for device drivers
   - `fs/` for filesystem and VFS support
   - `net/` for networking
   - `init/` for boot/init process logic
   - `ipc/` for inter-process communication
   - `include/linux/` for shared kernel headers
4. Add or update `Kconfig` and `Kbuild` files when introducing new buildable modules.
5. Document subsystem behavior in `docs/` or the directory README when behavior is new.

## Build and test

- Build with `make run` or `./scripts/build.sh`
- Run in QEMU with `./tools/run-qemu.sh`

## Coding style

- Use plain C and minimal assembly.
- Prefer clear modular boundaries and small helper functions.
- Avoid pulling in external libraries; keep code freestanding.

## License

All contributions must be compatible with GPLv3.

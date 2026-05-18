#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
if [ ! -f build/gamma.iso ]; then
  echo "ISO image not found. Run 'make' first." >&2
  exit 1
fi
exec qemu-system-x86_64 -cdrom build/gamma.iso -m 512M -serial stdio

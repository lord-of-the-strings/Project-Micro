# Contributing to Project Micro-OS

Thank you for looking into contributing to this minimal kernel optimization project! 

## Issue Reporting Guidelines

### Host Environment & Hypervisor Disclaimers
This project provides a pre-compiled, optimized kernel binary (`vmlinuz-custom`) and a launch orchestration script (`run.sh`). Because rolling-release and fixed-release host distributions change library symbols frequently, **reproduction errors tied to host hypervisor binaries are downstream issues.**

Before opening a bug report regarding startup failures, verify that your host environment is not suffering from a dynamic linking version mismatch:
* **Common Symptom:** `LIBFDT ERROR` or missing symbol references (`fdt_setprop@@LIBFDT_1.2`).
* **Root Cause:** Your host system's QEMU binary was compiled against an older Application Binary Interface (ABI) version than the active runtime library (`libfdt.so`) present on your machine.
* **Resolution:** Re-sync your host package databases (`sudo pacman -Syu` on Arch, or equivalent) and force a clean re-installation of your core emulator suites (`qemu-base`, `dtc`) to force the binary targets to align.

### Valid Bug Reports
We actively welcome issue tickets and Pull Requests for the following structural improvements:
1. **Kernel Optimization:** Configuration recipes or patches that reduce the size of `vmlinuz-custom` below 943 KB while maintaining stable execution.
2. **Userland Enhancements:** Optimizations to the custom scripts, `/init` initialization sequencing, or lightweight additions to the directory footprint.
3. **Toolchain Refinement:** Cleaner compilation parameters or build adjustments for source utilities sitting inside `suckless_build/`.

## Pull Request Process

1. Fork the repository and create your feature branch from `main`.
2. Ensure that any modifications to userland binaries do not inadvertently pull heavy dynamic host dependencies into the compiled runtime environment.
3. Keep the directory workspace clean: do not stage temporary build objects, local log output files, compressed tarballs, or raw un-tracked upstream repository history.
4. Open your PR with a clear log description highlighting the optimization metrics or reduction in footprint achieved.

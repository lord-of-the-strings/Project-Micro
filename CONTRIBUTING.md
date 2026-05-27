# Contributing to Project Micro-OS

Thank you for looking into contributing to this minimal kernel optimization project! 

## Issue Reporting Guidelines

### Host Environment & Hypervisor Disclaimers
This project provides a pre-compiled, optimized kernel binary (`vmlinuz-custom`) and a launch orchestration script (`run.sh`). Because rolling-release and fixed-release host distributions change library symbols frequently, **reproduction errors tied to host hypervisor binaries are downstream issues.**

### Valid Bug Reports
We actively welcome issue tickets and Pull Requests for the following structural improvements:
1. **Kernel Optimization:** Configuration recipes or patches that reduce the size of `vmlinuz-custom` below 943 KB while maintaining stable execution.
2. **Userland Enhancements:** Optimizations to the custom scripts, `/init` initialization sequencing, or lightweight additions to the directory footprint.
3. **Toolchain Refinement:** Cleaner compilation parameters or build adjustments for source utilities.
4. **Fixing run.sh for Rolling Release Hosts**
   Clean execution of the guest os on rolling release hosts like Archlinux dealing with version mismatch issues with qemu
## Pull Request Process

1. Fork the repository and create your feature branch from `main`.
2. Ensure that any modifications to userland binaries do not inadvertently pull heavy dynamic host dependencies into the compiled runtime environment.
3. Keep the directory workspace clean: do not stage temporary build objects, local log output files, compressed tarballs, or raw un-tracked upstream repository history.
4. Open your PR with a clear log description highlighting the optimization metrics or reduction in footprint achieved.

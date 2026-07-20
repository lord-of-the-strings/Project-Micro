# Project Micro-OS

A hyper-minimalist, custom-configured x86_64 Linux environment featuring an optimized **943 KB monolithic kernel** and an independent, isolated initramfs userland.

## Overview
This project demonstrates extreme kernel stripping and custom userland construction. By removing legacy drivers, unused filesystems, and complex network subsystems, the kernel binary footprint has been optimized down to sub-megabyte execution space.

### Core Features
* **Sub-Megabyte Footprint:** Monolithic kernel binary highly optimized to ~943 KB.
* **Networkless Isolation:** Explicitly compiled with zero network device overhead (`-net none`) for a deterministic, attack-surface-reduced sandbox.
* **Direct Serial Telemetry:** Standard video buffers are bypassed in favor of raw terminal injection via virtual serial pipelines.

## Project Structure
The repository is curated to include only custom configuration recipes and direct output binaries, intentionally omitting heavy upstream source trees:
* `vmlinuz-custom` - The compiled 943 KB optimized kernel target.
* `initramfs.cpio.gz` - The compressed custom userland archive.
* `kernel.config` - The specific configuration recipe containing the build flags.
* `rootfs/` - The base structural workspace directory layout.

## Quick Start

Execute the automated launch harness to boot the environment directly inside your active terminal pane:

```bash
./run.sh
```
## Note
All userland binaries code except vi and dash were pulled from Suckless repos https://git.suckless.org/. They were not changed beyond binary stripping. Related information will be provided if needed and any help in further optimisation of the userland will be highly appreciated.

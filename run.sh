#!/bin/sh
# Automated launcher for project_micro

# Check for required core artifacts
if [ ! -f vmlinuz-custom ] || [ ! -f initramfs.cpio.gz ]; then
    echo "Error: Missing core artifacts (vmlinuz-custom or initramfs.cpio.gz)"
    echo "Ensure you have compiled the kernel and packed the userland filesystem."
    exit 1
fi

echo "========================================================"
echo " Launching Custom 943 KB Micro-OS via QEMU Hypervisor  "
echo "========================================================"
echo "-> System isolation active (Network stack disabled)"
echo "-> Serial console mapping initialized"
echo ""
echo "CRITICAL ESCAPE SEQUENCE:"
echo "To exit the environment, press: Ctrl + A, let go, then press X"
echo "========================================================"
echo ""

qemu-system-x86_64 \
  -kernel vmlinuz-custom \
  -initrd initramfs.cpio.gz \
  -nographic \
  -append "console=ttyS0 earlyprintk=serial,ttyS0,115200 root=/dev/ram0 rdinit=/init quiet" \
  -net none \
  -m 256M

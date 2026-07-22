# Project-Micro

A hyper-minimalist, custom-configured x86_64 Linux environment designed to be as tiny as possible.

This project demonstrates extreme kernel stripping and custom userland construction, by removing legacy drivers, unused filesystems, and complex network subsystems.

This project has been revamped to a new plan. This plan executes in stages. The first stage consists of following the original FLOPPILINUX tutorial by @w84death to try out the concept without initial hiccups. Meanwhile, the author @lord-of-the-strings is also studying other such implementations especially the famous talk by @iczelia. Note that many changes have been made so this is strictly not a FLOPPILINUX clone.

Subsequent information will be provided shortly. Please consider contributing from this stage itself to strengthen the codebase!

# ANNOUNCEMENT:

Due to lack of proper docs at this stage, I am doing it this way. The first stage has been passed. The system ran perfectly in QEMU on i486 CPU and 10MiB hard drive. Optimization work is in progress and so is adding critical system scripts like shutdown. To test it, run it in qemu with the aforesaid specs. Details will be shared soon.

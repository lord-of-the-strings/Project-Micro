# Experimentation logs

20/7/2026 16:29 Cloned Linux kernel headless 6.14.11 aiming for i486 for now  
20/7/2026 16:32 tinyconfig created  
20/7/2026 16:46 original FLOPPILINUX inspired menuconfig done to guarantee initialization of project  
20/7/2026 16:49 First bzImage is ready; committing...  
20/7/2026 16:57 BusyBox initialization process started  
20/7/2026 16:58 Applied a Archlinux-specific (GCC 14+) fix to BusyBox check-lxdialog.sh  
20/7/2026 17:11 BusyBox menuconfig done  
21/7/2026 12:54 Created welcome message  
21/7/2026 13:02 Finished init.d
21/7/2026 13:11 Finished syslinux.cfg
21/7/2026 13:25 First test failed with generic boot error  
21/7/2026 13:44 Cause of kernel panic detected as typo in init.d/rc  
21/7/2026 13:47 Second test failed; bzImage could not be found  
21/7/2026 13:49 Kernel panic on third test; initramfs bit signature corrupted  

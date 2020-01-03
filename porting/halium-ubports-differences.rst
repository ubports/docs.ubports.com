Halium differences
==================
Ubuntu touch uses halium, but we cant use clean halium due to some reasons like apparmor, upstart etc. **so porting process is not 
same.**
Main differences: 
a. Ubuntu touch is using halium-boot.img, not hybris-boot.img like plasma mobile and halium rootfs. And it have prebuilt rd
so **you dont need fixup-mountpoints**. 
b. Ubuntu touch uses apparmor. So defconfig is another, **and we dont need to use mer but use one in halium tree halium/halium-boot/check-kernel-config.
use it instead of mer.**

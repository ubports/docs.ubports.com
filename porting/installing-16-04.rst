Installing Ubuntu Touch 16.04 images on Halium
==============================================

Install ubports-boot
--------------------


Install system.img and a rootfs
-------------------------------


Add udev rules
--------------


    cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-potter.rules
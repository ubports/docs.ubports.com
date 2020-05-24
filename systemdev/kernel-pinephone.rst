Pine Phone Kernel
=================

This document describes how to build and install the PinePhone kernel. Before getting to the actual compilation, we describe some references and the PinePhone recovery.

References
----------

 * `Pine64 wiki <https://wiki.pine64.org/index.php/PinePhone>`_ for general HW and OS info
 * `Main UBports repository <https://gitlab.com/ubports/community-ports/pinephone>`_ check the instructions here for how to install UT images on the PinePhone
 * `UBPorts issue tracker <https://gitlab.com/ubports/community-ports/pinephone/-/issues>`_

Recovery
--------

The Ubports image contains a recovery boot mode based on `jumpdrive <https://github.com/dreemurrs-embedded/Jumpdrive>`_. To get into the recovery press and hold the power and the volume up buttons until the led turns on.

The recovery presents the PinePhone as a network device and runs a telnet server.
When you connect the PinePhone to your desktop via USB, you will see the rndis device show up in your desktops ``dmesg``::

  usb 1-7.2: Product: PinePhone
  usb 1-7.2: Manufacturer: Pine64
  usb 1-7.2: SerialNumber: Jumpdrive
  rndis_host 1-7.2:1.0 usb0: register 'rndis_host' at usb-0000:00:14.0-7.2, RNDIS device

You can login to the recovery system with ``telnet 172.16.42.1``.

The recovery also exposes the eMMC and the microSD card over USB. In your desktops ``dmesg`` you will see::

  usb-storage 1-7.2:1.2: USB Mass Storage device detected
  scsi host3: usb-storage 1-7.2:1.2
  scsi 2:0:0:0: Direct-Access     JumpDriv e eMMC                PQ: 0 ANSI: 2
  scsi 2:0:0:1: Direct-Access     JumpDriv e microSD             PQ: 0 ANSI: 2
  sd 2:0:0:0: Attached scsi generic sg1 type 0
  scsi 2:0:0:1: Attached scsi generic sg2 type 0
  sd 2:0:0:0: [sdb] 30785536 512-byte logical blocks: (15.8 GB/14.7 GiB)
  sd 2:0:0:1: [sdc] 124735488 512-byte logical blocks: (63.9 GB/59.5 GiB)
    sdb: sdb1 sdb2
  sd 2:0:0:0: [sdb] Attached SCSI removable disk
    sdc: sdc1 sdc2 sdc3 sdc4 sdc5 sdc6 sdc7 sdc8 sdc9 sdc10

The eMMC has two partitions: pmOS_boot and pmOS_root. The microSD card has 10 partitions: loader, scr, persist, boot_a, boot_b, recovery_a, recovery_b, cache, system and userdata. To update the kernel you want to mount boot_a. Check which device is the SDcard in your OS. In the example above it is ``sdc``, so you can mount it like this: ``mkdir mnt_boot_a ; sudo mount /dev/sdc4 mnt_boot_a``. Inside you'll see the kernel vmlinuz and related files: ``config-5.6.0-pine64`` ``dtb`` ``initrd.img`` ``modules/`` ``System.map-5.6.0-pine64`` ``vmlinuz``.

Building the kernel
-------------------

To install dependencies, get the source code, configure and build it run the following::

  sudo apt install flex bison gcc-aarch64-linux-gnu libssl-dev
  git clone -b pine64-kernel-ubports git@gitlab.com:pine64-org/linux.git
  cd linux
  ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KBUILD_VERSION=arm64 LOCALVERSION=-pine64 make pine64_defconfig
  ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KBUILD_VERSION=arm64 LOCALVERSION=-pine64 make -j18 bindeb-pkg

Install the kernel
------------------

Boot into recovery and mount ``boot_a`` as shown above. Make a backup if needed. Then copy over your newly built kernel and if needed modules, etc::

  cp -v linux/debian/linux-image/boot/vmlinuz-5.6.0-pine64 mnt_boot_a/vmlinuz
  cp -v linux/debian/linux-image/boot/config-5.6.0-pine64 mnt_boot_a/
  cp -v linux/debian/linux-image/boot/System.map-5.6.0-pine64  mnt_boot_a/
  sudo rm -rf mnt_boot_a/modules
  sudo cp -rv linux/debian/linux-image/lib/modules  mnt_boot_a/

Afterwards be sure to unmount the partition so it is cleanly written `sudo umount mnt_boot_a`. Now you can reboot the PinePhone. Once booted, verify with `uname -a` that the kernel has successfully been updated by checking the build date.


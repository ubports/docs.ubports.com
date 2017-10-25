Nexus 5X Developer Information
==============================

Overview
--------

The Nexus 5X (bullhead), released in October of 2015, shipped with Android 6.0 Marshmallow. Because of this, it is difficult to port Ubuntu Touch to at the moment. That won't stop us.

This page will contain the information needed to get up to date on the development of Bullhead. This includes instructions to get the source tree, patches, and changes to make after building.

If you would like to be added to the development repositories for Bullhead, please ask @UniversalSuperBox. They have not yet been merged into the Ubports organization.

Please remember to make a complete backup of your phone before doing any flashing operations, assuming you have anything that you want to keep on it. Then, copy the backup to your computer. Your phone may be wiped during this procedure.

Development Status
------------------

Bullhead is currently in a booting state, but not graphically. After following these directions, you will be able to use telnet to get into a shell session on the device so that you can debug libhybris and whatever else tickles your fancy.

Dalton is currently trying to build an updated version of libhybris with Marshmallow support. Until this is done, Ubuntu Touch will not work on this phone.

Current Goals
-------------

Get ADB running
~~~~~~~~~~~~~~~

Figure out why ``test_hwconfig`` crashes all the time.

Install Prerequisites
~~~~~~~~~~~~~~~~~~~~~

Install the packages to create the adequate environment:

::

$ sudo apt-get install git gnupg flex bison gperf build-essential zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386  libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool g++-4.8-multilib gcc-aarch64-linux-gnu
.

Set up the Tree
~~~~~~~~~~~~~~~

Getting the tree set up is simple, as usual.

Start with

::

$ repo init -u https://github.com/usb-bullhead-ubuntu-touch/android.git -b current-devel --depth=1
. 

Then, run ``repo sync -j8 -c`` to sync your sources.

Patch things that I can't
~~~~~~~~~~~~~~~~~~~~~~~~~

There's a generic initramfs that you'll need to download and place at

``~/phablet/ubuntu/ubuntu_prebuilt_initrd/initrd.img-touch``.

in order to get a debugging ``Telnet`` connection.

You can find it `here <https://drive.google.com/file/d/0B9Ee5skiHSnncUJBZERSS3IyWlE/view>`_

Build the Kernel
~~~~~~~~~~~~~~~~
The AOSP build tree is set up to use a prebuilt kernel unlike Cyanogenmod, which builds it during the larger build process. Luckily, I can patch the msm kernel. So I did.

Building the kernel should be as easy as:

::

$ export ARCH=arm64
$ export CROSS_COMPILE=aarch64-linux-gnu-
$ cd kernel/msm
$ make bullhead_defconfig
$ make -j[n]
.

Where ``n`` is the number of cores in your machine, or less if you prefer to leave a core or two so you can use your machine while it builds.

You'll know the build was successful when make exits, leaving ``Image.gz-dtb`` in ``arch/arm64/boot/``. It may not actually give you the green text that signalled that it worked.
Make the directory ``~/phablet/device/lge/bullhead-kernel/``
, then copy the ``Image.gz-dtb`` file to it.

Build the Whole Package
~~~~~~~~~~~~~~~~~~~~~~~

Now that you have your kernel built, you can build the image files that you need to (kinda) run Ubuntu Touch.
::

$ cd ~/phablet
$ . build/envsetup.sh

launch   (you'll want to pick Bullhead)

::

$ make -j[n]
.

Again, ``n`` is the number of CPU cores you have.

If that completes, congrats! You've built the Android system for Ubuntu Touch. Let's get it running.

Flash n' burn
~~~~~~~~~~~~~
Reboot your phone into Fastboot (Power + Volume Down when powering on) and run the following commands. Please have a backup of your phone that is copied to somewhere other than your phone before doing this.

::

$ cd ~/phablet/out/target/product/bullhead/ 
$ sudo fastboot flash boot boot.img
$ sudo fastboot flash recovery recovery.img.

Now, whichever path you took, reboot into recovery.

We'll be using a script for this process called rootstock-touch-install. You can learn about getting and using it at Installing Your Build With Rootstock However, be sure to use Yakkety rather than Vivid. Unless you want to figure out why Vivid isn't working right.
Get to a shell

Alright. Luckily for you, the device repository has a fix that makes the boot.img stop, enable telnet, and allow you to debug before continuing. This will let you run a script to enable telnet in the running system. Let's get to it. Boot your device now. It will stay at the Google bootloader screen indefinitely. Wait about 10 seconds, then run the following command to connect to the device.

Note: If your current network is on the ``192.168.2.0/24`` subnet, I'm sorry. You may need to disconnect from that network in order to use this correctly.

::

$ telnet 192.168.2.15 23.

You should be brought to a shell prompt. Paste the following into the prompt:
::

	$ cat <<EOF > start.sh
	#!/bin/sh
	echo "continue" > /init-ctl/stdin
	sleep 15
	mkdir -p /sys
	mount sys -t sysfs /sys
	echo 0 > /sys/class/android_usb/android0/enable
	sleep 1

	echo 18D1 > /sys/class/android_usb/android0/idVendor
	echo D001 > /sys/class/android_usb/android0/idProduct
	echo rndis > /sys/class/android_usb/android0/functions
	echo 1 > /sys/class/android_usb/android0/enable
	sleep 1

	ifconfig rndis0 192.168.2.15
	ifconfig rndis0 up
	EOF

and then:

::

$ chmod +x start.sh
$ ./start.sh &
.

Then press ``Enter``
, then exit the console. Wait for 20-25 seconds, then run the ``telnet`` command above again to reconnect. The phone has now booted. Run chroot root to enter the Ubuntu Touch system.

Fixing broken Ubuntu Touch stuff
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

One of the biggest problems of this phone is that it has a /vendor partition rather than the binary blobs being in /system/vendor. This causes pain that will need to be alleviated in the future. For now, though, let's fix everything so that the Android container works.

::

$ mount / -o remount,rw
$ cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/etc/udev/rules.d/70-bullhead.rules
$ rm /vendor
$ ln -s /android/vendor /vendor
.

Edit ``/var/lib/lxc/android/pre-start.sh``.

Find the line containing ``$LXC_ROOTFS_PATH/vendor``.


Change it so that it reads

::

$ ln -s /android/vendor $LXC_ROOTFS_PATH/vendor


::

$ chmod +x /etc/init/lxc-android-config.conf /etc/init/lxc-android-config.conf
.

Of course this will all need to be automatic in the future.

Getting Internet on the device.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wi-Fi doesn't work yet, so you'll have to use the Internet over the debugging rndis connection information.
That is it.

Have fun! Look back at the Current Goals heading at the top of the article to see what you can work on. Be sure to let us know if you find any fixes over at #ubports on Freenode. If there are any fixes that involve the repositories on GitHub, please feel free to submit a pull request.

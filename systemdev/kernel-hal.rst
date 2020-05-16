Kernel and hardware abstraction
===============================

This page documents the resources and process to build the kernel and hardware abstraction. This document is useful if you would like to work on:

* A hardware related issue (camera, sensors, radios)
* A Linux kernel related issue
* An issue related to the system-image upgrade process

This document is not useful if you would like to modify :doc:`../contribute/preinstalled-apps` or :doc:`System software <../systemdev/index>`. See the respective documentation for each.



We distinguish a few different groups of Ubuntu Touch devices with respect to how the kernel and hardware abstraction is implemented:

  * Android 5.1 based ports
  * Halium based ports
  * Linux kernel

Android 5.1 based ports
-----------------------

Android 5.1 based ports of Ubuntu Touch consist of the Linux kernel for this device plus a minimal Android system that is used to enable all the hardware. Every device has it's own fork of the Linux kernel. They are all heavily modified for the specific hardware used in that device. These forks are also based of quite old Linux kernel versions.

For some devices continuous integration (CI) has been set up to build both the Kernel as well as the Android system. Other devices have to be built manually from their repositories. For a third group of devices, we do unfortunately, not have the source code available. The manufacturers of these devices provided the binaries builds instead.

  * With CI:
    * Nexus 5 (hammerhead)
    * OnePlus One (bacon)
    * Fairphone 2 (FP2)
  * Manual builds:
    * Nexus 4 (mako)
    * Nexus 7 2013 Wifi (flo)
  * Prebuilt binaries:
    * Bq Aquaris E4.5 (krillin)
    * Bq Aquaris E5 (vegetahd)
    * Bq Aquaris M10 HD (cooler)
    * Bq Aquaris M10 FHD (frieza)
    * Meizu MX4 (arale)
    * Meizu Pro 5 (turbo)
    * Nexus 7 2013 GSM (deb) - Note: The deb build was not done by the manufacturer but by a community member. Unfortunately those repositories have disappeared, so only the prebuilt binaries remain available.

Further details can be found under  :doc:`Legacy porting <ubp-5.1>` and in the https://gitlab.com/ubports/community-ports

Halium based ports
------------------

Newer ports to Android devices are based on Halium. In some aspects Halium is similar to the 5.1 based ports:

    It also uses the device specific fork of the Linux kernel provided by the manufacturer.
    It also uses a minimal Android system to enable some hardware.

However, Halium permits a more generic way of porting to Android devices. This allows the work to be shared between multiple projects that bring different flavours of Linux systems to Android devices. Halium ports are also based on newer Android version 7.1 and above.

Some examples of Halium ports are the Sony Xperia X, the Oneplus 3, etc. Basically all devices that are listed on devices.ubuntu-touch.io, expect those explicitly mentioned above as 5.1, or below as Linux based ports.

Further details can be found under :doc:`Halium porting <../porting/introduction>`

Linux based ports
-----------------

Linux based ports refers to devices where a recent upstream Linux kernel is used without any Android parts. The following devices are in this group:

  * Pinephone
  * Pinebook
  * Pinetab
  * Librem 5

Further details can be found in the Pinephone repository: https://gitlab.com/ubports/community-ports/pinephone

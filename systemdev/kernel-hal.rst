Kernel and hardware abstraction
===============================

This page documents the resources and processes to build the kernel and hardware abstraction for UT devices. This document is useful if you would like to work on:

* A hardware related issue (camera, sensors, radios)
* A Linux kernel related issue
* An issue related to the system-image upgrade process

This document is not useful if you would like to modify :doc:`../contribute/preinstalled-apps` or :doc:`System software <../systemdev/index>`. See the respective documentation for each.



There are a few different groups of Ubuntu Touch devices with respect to how the kernel and hardware abstraction is implemented:

* Android 5.1 based ports
* Halium based ports
* Linux kernel

Android 5.1 based ports
-----------------------

Android 5.1 based ports of Ubuntu Touch consist of the Linux kernel for this device plus a minimal Android system that is used to enable all the hardware. Every device has it's own fork of the Linux kernel. They are all heavily modified for the specific hardware used in that device. These forks are also based off quite old Linux kernel versions.

For some devices continuous integration (CI) has been set up to build both the Kernel as well as the Android system. Other devices have to be built manually from their repositories. For a third group of devices, we do not unfortunately, have the full source code available. The Bq and Meizu devices have kernel sources, but the "Android device tree" is not publicly available. The manufacturers of these devices provided binary builds instead.

* With CI
   * Nexus 5 (hammerhead)
   * OnePlus One (bacon)
   * Fairphone 2 (FP2)
* Manual builds
   * Nexus 4 (mako)
   * Nexus 7 2013 Wifi (flo)
* (Partial) Binary builds
   * Bq Aquaris E4.5 (`krillin <https://github.com/ubports/kernel_krillin>`_)
   * Bq Aquaris E5 (`vegetahd <https://github.com/ubports/kernel_vegetahd>`_)
   * Bq Aquaris M10 HD (`cooler <https://github.com/ubports/kernel_bq_m10>`_)
   * Bq Aquaris M10 FHD (frieza)
   * Meizu MX4 (`arale <https://github.com/ubports/kernel_arale>`_)
   * Meizu Pro 5 (`turbo <https://github.com/ubports/kernel_turbo>`_)
   * Nexus 7 2013 GSM (deb)

Detailed steps for the three CI enabled devices can be found under  :doc:`HAL for Nexus 5, OnePlus One, and Fairphone 2 <ubp-5.1>`.

For the Nexus 7 2013 Wifi (flo) head  over to the `Community Ports repository for flo <https://gitlab.com/ubports/community-ports/flo>`_.

The port for the Nexus 7 2013 GSM (deb) was created by a community member. Unfortunately those repositories have disappeared over time. So this build also falls into the group of prebuilt binaries.

.. todo::
   Document the process for Nexus 4 (mako)

.. binaries are here: https://gitlab.com/ubports/community-ports/mako


Halium based ports
------------------

Newer ports to Android devices are based on `Halium <https://docs.halium.org>`_. In some aspects Halium is similar to the 5.1 based ports:

* It also uses the device specific fork of the Linux kernel provided by the manufacturer.
* It also uses a minimal Android system to enable some hardware.

However, Halium permits a more generic way of porting to Android devices. This allows the work to be shared between multiple projects that bring different flavours of Linux systems to Android devices. Halium ports are also based on newer Android versions 7.1 and above.

Some examples of Halium ports are those for Sony Xperia X and Oneplus 3. Basically all devices that are listed on `devices.ubuntu-touch.io <https://devices.ubuntu-touch.io>`_, expect those explicitly mentioned above as 5.1, or below as Linux based ports.

All new ports of UT to Android devices should follow the Halium process. Further details can be found under :doc:`Halium porting <../porting/introduction>`

Linux based ports
-----------------

Linux based port refers to devices where a Linux kernel is used without any Android parts. The following devices are in this group:

* `Desktop PC (x86) <https://devices.ubuntu-touch.io/device/x86/>`_
* Librem 5 (librem5)
* Pinebook (pinebook)
* `Pinephone (pinephone) <https://gitlab.com/ubports/community-ports/pinephone>`_
* `Pinetab (pinetab) <https://gitlab.com/ubports/community-ports/pinephone>`_
* `Raspberry Pi (rpi) <https://gitlab.com/ubports/community-ports/raspberrypi>`_ (see also this `blog post <https://ubports.com/blog/ubports-blog-1/post/raspberry-pi-266>`_)


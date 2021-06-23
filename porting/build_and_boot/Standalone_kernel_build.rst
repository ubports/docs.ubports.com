Standalone kernel building
==========================

For some devices, Halium-9.0 (and later) ports can be built based on just the kernel source code combined with other readily available parts by following the steps outlined below.

This method involves building the Android Linux kernel for your specific device and SoC (system on chip). The kernel can subsequently be pieced together with other components to form a full boot image. This can then be flashed to the device, and combined with other necessary parts that together constitute a complete build of Ubuntu Touch.

Setting up and building the kernel
----------------------------------

When setting up for a kernel-only build, it is wise to obtain the unmodified source code from the manufacturer of your device. It may also be possible to use kernel repos from *e.g.* Lineageos, but be prepared to have to deal with build errors resulting from modifications in the source code.

When using the manufacturer's own source code, also check to see whether any specific building instructions are included and if so, follow these as closely as possible. Lacking this information you may base your work on a good Android kernel building guide, *e.g.* `this one from the XDA developers' page <https://forum.xda-developers.com/t/reference-how-to-compile-an-android-kernel.3627297/>`_.

Given the level of detail of the aforementioned guide, as well as the availability of other sources on how to build Android/Linux kernels, no further instructions will be given here. 

However, the porter needs to note that Ubuntu Touch will not function with the standard, unmodified Android/Linux kernel for the target device. Therefore, once a successful build has been obtained, this needs to be modified in order to make Ubuntu Touch work.

Adapt kernel to Ubuntu Touch
----------------------------

* Add instructions here *

Builds based on Gitlab CI scripts
---------------------------------

Finally, it is worth noting that some porters have had success choosing a slightly different path, starting with a Gitlab CI repo containing scripts from a successful port to a different device. By editing a configuration file, one can instruct the scripts to download the kernel source and build for the porter's target device instead. This is a shortcut of sorts by which one may be able to quickly achieve boot and system images that can be used for testing and further development. Porters wishing to try this method should clone `this repo, taking care to follow the steps described therein. <https://gitlab.com/ubports/community-ports/android9/xiaomi-redmi-note-7-pro/xiaomi-violet>`_


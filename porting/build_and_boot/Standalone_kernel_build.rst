Setting up and building a standalone kernel
===========================================

This method involves building just the Android Linux kernel for your specific device and SoC (system on chip). This can subsequently be rebuilt and integrated into a full boot image to be flashed together with the necessary components that constitute a complete build of Ubuntu Touch.

When setting up for a kernel-only build, it is wise to obtain the unmodified source code from the manufacturer of your device. It may also be possible to use kernel repos from *e.g.* Lineageos, but be prepared to have to deal with build errors resulting from modifications in the source code.

When using the manufacturer's own source code, also check to see whether any specific building instructions are included and if so, follow these as closely as possible. Lacking this information you may base your work on a good Android kernel building guide, *e.g.* `this one from the XDA developers' page <https://forum.xda-developers.com/t/reference-how-to-compile-an-android-kernel.3627297/>`_.
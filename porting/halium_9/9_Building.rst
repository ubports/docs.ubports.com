Building the halium-boot image
==============================

A Halium 9.0 - GSI port consists of the following parts:
    
    * The boot image: halium-boot.img
    * The GSI (see :ref:`What_is_a_GSI`)
    * The UBports - Ubuntu Touch - root file system (hereafter referred to as the *rootfs*)

The boot image contains the Linux kernel, the heart of the operating system, which needs to be built from source code for each specific device. 

The GSI is device-independent and can therefore be downloaded in a precompiled state. Similarly, the rootfs is available in the form of a downloadable tarball. As of writing, both the GSI and the rootfs are still undergoing development to ensure the stable function of all important device features.

The first step is to set up the build environment and build halium-boot.img.

`The Halium porting guide <http://docs.halium.org/en/latest/porting/first-steps.html#set-up-your-build-device>`_ details the necessary steps to set up a Halium build environment and build halium-boot. Follow the steps described there remembering that you are building Halium 9.0.

Once the boot image has been successfully built (without errors), you can return here and proceed to the next section.
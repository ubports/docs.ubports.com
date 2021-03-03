
.. _Overview-of-the-porting-process:

Halium 7.1 porting - an overview
================================

    * Preparations
        In this first stage you will choose a target device which is compatible with Halium 7.1, gather information about it and choose a suitable workstation (PC or laptop) on which to do your work.
    * Set up your Halium build environment and complete a test build
        This stage involves downloading all the relevant source code and securing the vendor blobs. You will then build the Halium boot image and system image according to the Halium guide to ensure that all your sources are set up correctly and work in unison.
    * Build halium-boot.img and system.img for Ubuntu Touch
        Now you need to modify your source tree, after which you will proceed to build the halium-boot.img and system.img to be used in your port.
    * Install and debug the boot process
        The goal of this stage is to successfully boot into Ubuntu Touch. You will be working from the command line.
    * Bring up the Ubuntu Touch graphical user interface 'Unity 8'
        This stage involves adjusting some configuration and further debugging of your build.
    * Complete device configuration
        Now you need to further debug the build and adjust configuration until all broken functionality is fixed. When you complete this stage you will have a fully functional port, but it will not yet be capable of accepting OTA (Over The Air) updates.
    * Build Ubuntu Touch recovery.img
        The Ubuntu Touch recovery image is a slightly modified recovery image that is tailored to work with the UBports installer
    * Set up the UBports installer for your device
        When you have completed this stage you will have made it possible for anyone owning the device in question to install and run Ubuntu Touch on it, including the ability to receive OTA updates as they are made available.


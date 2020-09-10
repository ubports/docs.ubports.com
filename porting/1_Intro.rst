1   Introduction to the Ubuntu Touch porting process
----------------------------------------------------

This section will introduce you to the specifics of porting Ubuntu Touch to an Android device.

Ubuntu Touch is not a complete standalone replacement for Android. This is so because source code is not available for all parts of the system, and some components therefore have to be reused. To be specific, device vendors tend to keep the code that speaks directly to the device hardware (the low level device drivers) proprietary. These components are commonly called the 'vendor blobs'. The vendor blobs need to be incorporated into an Ubuntu Touch port. Note that these components are specific not only to each device, but also to each Android version. It is therefore necessary to secure the correct version of these components when building a port.

The next component of Ubuntu Touch is a pre-compiled root filesystem which needs to be installed on the device. This component is not capable of communicating directly with the device hardware through the above-mentioned device drivers. Instead, this communication is mediated by a Hardware Abstraction Layer (HAL) which needs to be built for each specific device, because each device has its specific hardware architecture. This component is called Halium and is available in different versions (5.1, 7.1, 9 as of writing) corresponding to different Android versions.

Halium is an indispensible part of an Ubuntu Touch port and it is open source software. Developing a new version of Halium is a very considerable task which is the why only a few versions of Halium are available. Each port of Ubuntu Touch has to be based on one of the available Halium versions and vendor blobs from the corresponding Android version. See the first two columns of Table 1 (below) for details.

Thus an Ubuntu Touch port is composed of the these components:
    * The Ubuntu Touch root filesystem
    * Halium (contained in the boot and system images)
    * The vendor blobs

You, the porter, need to build Halium (i.e. halium-boot.img and system.img) and install all the mentioned components together in order to create a functioning Ubuntu Touch port. 

Halium is built using source code for a modified version of the Android operative system called LineageOS, which sprung out from its predecessor, CyanogenMod. The required source code is available online and needs to be downloaded and configured to build the correct Halium version for each individual device port. Table 1 shows which versions are required for the different Halium versions.

Table 1

===============  ==============  ================  =============
Android version  Halium version  Lineage OS (LOS)  CyanogenMod
===============  ==============  ================  =============
5.1              5.1             Not available     12.1
7.1              7.1             14.1              Not available
9.0              9.0             16.0              Not available
===============  ==============  ================  =============

1.1 Overview of the entire porting process
------------------------------------------

    * Preparations
        In this first stage you will choose a target device, determine the device specifications and secure the relevant guides for your device. At this stage you should also start documenting your build process.
    * Test your Halium build setup
        This stage involves downloading all the relevant source code and securing the vendor blobs. You will then build the Halium boot image and system image according to the Halium guide to ensure that all your sources are set up correctly and work in unison. You will *not* be installing this build! You can view it as a "trial run".
    * Build halium-boot.img and system.img for Ubuntu Touch
        Your source tree first needs to be modified, after which you will proceed to build the halium-boot.img and system.img for your port.
    * Install and debug the boot process
        This goal of this stage is to successfully boot into Ubuntu Touch and bring up the Ubuntu Touch graphical user interface 'Unity 8'
    * Complete device configuration
        When you have reached this stage some things will work, while others don't. You must now debug each broken functionality and apply the necessary fixes. When you complete this phase you will have a fully functional port, but it will not yet be capable of accepting Over The Air (OTA) updates.
    * Build Ubuntu Touch recovery.img
        The Ubuntu Touch recovery image is a slightly modified recovery image that is tailored to working with the UBports installer
    * Set up the UBports installer for your device
        When you have completed this stage you will have made it possible for anyone owning the device in question to install and run Ubuntu Touch on it, including the ability to receive OTA updates as they are made available.

1.2 The challenges of the porting process
-----------------------------------------

Getting the above components to work properly together always involves an amount of time-consuming configuring and testing. However, it usually also involves a certain amount of modification to parts of the source code, and sometimes quite a bit, depending on your target device.

Luckily, there is a community of porters out there who are eager to see Ubuntu Touch ported to new devices. When you run into trouble, you should search the sources below (Getting help) to see if others have before you have solved the issue. There are also online Telegram chat groups you can join to ask for help, but please bear in mind that those participating are doing so of their own free will, and in their spare time.

1.3 Prior knowledge and skills
------------------------------

Porters come in all sizes and shapes, so to speak. Therefore, this guide does not presuppose extensive knowledge or skills in any particular field. You should, however, as a bare minimum be familiar with some common shell commands and be comfortable working from the terminal on you host pc. Furthermore, the guide is based on a host PC running Linux. If you have some knowledge of programming, this will come in handy at some point, especially if you are familiar with C / C++. Also, you should familiarize yourself with git, setup a github account and start documenting your steps as described in this guide and the Halium porting guide from the very beginning.

We have attempted to give a certain amount of explanations along the way, but this guide is in not an in-depth reference into architecture and inner workings of Ubuntu Touch, and gaining a deeper understanding will consequently require an amount of research on your part.

1.4 Getting community help
--------------------------

When you run into trouble, and you will, refer to one or more of the sources below:

* IRC: #halium on Freenode 
* Matrix: #halium:matrix.org 
* Telegram: @halium

Make sure to check the `UBports Forum <https://forums.ubports.com/category/33/porting>`_ as well.

1.5 General advice
------------------

The more rigorous you are at making notes and documenting your steps, the less time you will spend backtracking your steps and guessing your way along. When dealing with issues that arise along the way, it is wise to work on them one at a time. If you try to correct several things at once, you risk ending up trying to guess which changes solved a given issue, which easily leads to breaking the issue in question once more.

If you are not discouraged after reading this, we wish you the best of luck!
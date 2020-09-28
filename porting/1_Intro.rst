1   Introduction to the Ubuntu Touch porting process
====================================================

This first section will introduce you to the specifics of porting Ubuntu Touch to an Android device. Note that it is written with the general public in mind, not primarily the experienced porting developer. In subsequent sections we have made an effort to differentiate by keeping the main text more consise in order to meet the needs of the more experienced reader, while providing links to supplementary reading for the less experienced.

.. _1.1:

1.1 What is Ubuntu Touch?
-------------------------

Ubuntu Touch is a complete standalone opertative system for mobile devices as demonstrated by the `PinePhone and PineTab <https://store.pine64.org/>`_, which hit the market in 2020. 

Alas, the majority of available mobile devices on the market are dependent to some degree on proprietary software. To be specific, device vendors tend to keep the code that speaks directly to the device hardware (the low level device drivers) proprietary. These components are commonly called the 'vendor blobs'. The vendor blobs need to be incorporated into an Ubuntu Touch port. Note that these components are specific not only to each device, but also to each Android version. It is therefore necessary to secure the correct version of these components when building a port.

This is why Ubuntu Touch cannot be built as a complete standalone OS for most commercial devices. Instead, porting the system to these commercially available devices involves integrating these low level components into the rest of the system which can be built from source.

The next component of Ubuntu Touch is a pre-compiled root filesystem which needs to be installed on the device. This component is not capable of communicating directly with the device hardware through the above-mentioned device drivers. Instead, this communication is mediated by a Hardware Abstraction Layer (HAL) which needs to be built for each specific device, because each device has its specific hardware architecture. This component is called Halium and is available in different versions (5.1 which is largely obsolete, 7.1, and 9 as of writing) corresponding to different Android versions.

Halium is an indispensible part of an Ubuntu Touch port and is available in the form of open source software. Developing a new version of Halium is a very considerable task which is the why only a few versions of Halium are available. Each port of Ubuntu Touch has to be based on one of the available Halium versions and vendor blobs from the corresponding Android version. See the first two columns of Table 1 (below) for details.

Thus an Ubuntu Touch port is composed of the these components:
    * The Ubuntu Touch (UT) root filesystem (rootfs)
    * `Halium <https://halium.org/>`_ (contained in the boot and system images)
    * The vendor blobs

You, the porter, need to build Halium (i.e. halium-boot.img and system.img) and install these together with the UBports Ubuntu Touch rootfs in order to create a functioning Ubuntu Touch port. 

Halium is built using source code for a modified version of the Android operative system called LineageOS. The required source code is available online and needs to be downloaded and configured to build the correct Halium version for each individual device port. Table 1 shows which versions are required for the different Halium versions.

Table 1
"""""""

===============  ==============  ================
Android version  Halium version  Lineage OS (LOS)
===============  ==============  ================
7.1              7.1             14.1            
9.0              9.0             16.0            
===============  ==============  ================

.. _1.2:

1.2 Overview of the porting process
-----------------------------------

    * Preparations
        In this first stage you will choose a target device, gather information about it and choose a suitable workstation (PC or laptop) on which to do your work.
    * Set up your Halium build environment and complete a test build
        This stage involves downloading all the relevant source code and securing the vendor blobs. You will then build the Halium boot image and system image according to the Halium guide to ensure that all your sources are set up correctly and work in unison. You will *not* be installing this build! You can view it as a "trial run".
    * Build halium-boot.img and system.img for Ubuntu Touch
        Now you need to modify your source tree, after which you will proceed to build the halium-boot.img and system.img to be used in your port.
    * Install and debug the boot process
        The goal of this stage is to successfully boot into Ubuntu Touch. You will be working from the command line.
    * Bring up the Ubuntu Touch graphical user interface 'Unity 8'
        This stage involves adjusting some configuration and further debugging of your build.
    * Complete device configuration
        Now you need to further debug the build and adjust configuration until all broken functionality is fixed. When you complete this stage you will have a fully functional port, but it will not yet be capable of accepting Over The Air (OTA) updates.
    * Build Ubuntu Touch recovery.img
        The Ubuntu Touch recovery image is a slightly modified recovery image that is tailored to working with the UBports installer
    * Set up the UBports installer for your device
        When you have completed this stage you will have made it possible for anyone owning the device in question to install and run Ubuntu Touch on it, including the ability to receive OTA updates as they are made available.

.. _1.3:

1.3 The challenges of the porting process
-----------------------------------------

Getting the above components to work properly together always involves an amount of time-consuming configuring and testing. However, it usually also involves a certain amount of modification to parts of the source code, and sometimes quite a bit, depending on your target device.

Luckily, there is a community of porters out there who are eager to see Ubuntu Touch ported to new devices. When you run into trouble, you should search the sources below (Getting help) to see if others have before you have solved the issue. There are also online Telegram chat groups you can join to ask for help, but please bear in mind that those participating are doing so of their own free will, and in their spare time.

.. _1.4:

1.4 Prior knowledge and skills
------------------------------

Porters come in all sizes and shapes, so to speak. Therefore, this guide does not presuppose extensive knowledge or skills in any particular field. You should, however, as a bare minimum be familiar with some common shell commands and be comfortable working from the terminal on you host pc. Furthermore, the guide is based on a host PC running Linux. If you have some knowledge of programming, this will come in handy at some point, especially if you are familiar with C / C++. Also, you should familiarize yourself with git, setup a github account and start documenting your steps as described in this guide and the Halium porting guide from the very beginning.

We have attempted to give a certain amount of explanations along the way, but this guide is in not an in-depth reference into architecture and inner workings of Ubuntu Touch, and gaining a deeper understanding will consequently require an amount of research on your part.

.. _1.5:

1.5 Getting community help
--------------------------

When you run into trouble, and you will, refer to one or more of the sources below:

* IRC: #halium on Freenode 
* Matrix: #halium:matrix.org 
* Telegram: @halium

Make sure to check the `UBports Forum <https://forums.ubports.com/category/33/porting>`_ as well.

.. _1.6:

1.6 General advice
------------------

The more rigorous you are at making notes and documenting your steps, the less time you will spend backtracking your steps and guessing your way along. When dealing with issues that arise along the way, it is wise to work on them one at a time. If you try to correct several things at once, you risk ending up trying to guess which changes solved a given issue, which easily leads to breaking the issue in question once more.

If you are not discouraged after reading this, we wish you the best of luck!
Introduction to porting
=======================

This first section will introduce you to the specifics of porting Ubuntu Touch to an Android device. Note that it is written with the general public in mind, not primarily the experienced porting developer. In subsequent sections we have made an effort to differentiate by keeping the main text more concise in order to meet the needs of the more experienced reader, while providing links to supplementary reading for the less experienced.

The guide as a whole is written as a sequence of steps describing how an ideal port might proceed. However, porting is unpredictable and messy. Every device is different and in reality you will likely iterate and revisit some steps, skip over other steps and uncover new and undocumented challenges.

.. _What-is-Ubuntu-Touch:

What is Ubuntu Touch?
---------------------

Ubuntu Touch is an open source operating system for mobile devices. It can be ported to devices that originally shipped with Android OS. Alas, the majority of these devices are dependent to some degree on proprietary software. 

.. _Vendor_blobs:

To be specific, device vendors tend to keep the code that speaks directly to the device hardware (the low level device drivers) proprietary. These components are commonly called the `vendor 'blobs' (Binary Large OBjects) <https://en.wikipedia.org/wiki/Proprietary_device_driver>`_. The vendor blobs need to be incorporated into an Ubuntu Touch port. Note that these components are specific not only to each device, but also to each Android version. It is therefore necessary to secure the correct version of these components when building a port.

This is why Ubuntu Touch cannot be built completely from source code for most commercial devices. Instead, porting the system to these devices involves integrating the previously mentioned vendor blobs into the rest of the system, which can be built from source.

The next component of Ubuntu Touch is a pre-compiled root filesystem which needs to be installed on the device. This component does not communicate directly with the device hardware. Instead, this communication is mediated by a Hardware Abstraction Layer (HAL) which needs to be built for each specific device, because each device has its specific hardware architecture. This component is called Halium  and is available in different versions (5.1 which is largely obsolete, 7.1, 9 and 10 as of writing) corresponding to different Android versions.

The `Halium project <https://halium.org/>`_ enables Linux systems to run on Android hardware. It is a joint effort by multiple mobile operating systems, notably Lune OS and UBports. 

UBports porting builds on top of Halium porting. Consequently, you will be using both the Halium porting guide and the UBports porting guide. At times it may also be helpful to test with one of the other operating systems to debug a problem from different angles.

Halium is an indispensible part of an Ubuntu Touch port and is available in the form of open source software. Developing a new version of Halium is a very considerable task which is why only a few versions of Halium are available. Each port of Ubuntu Touch has to be based on one of the available Halium versions and vendor blobs from the corresponding Android version. See the first two columns of the table below for details.

Thus an Ubuntu Touch port is composed of the these components:
    * The Ubuntu Touch (UT) root filesystem (rootfs)
    * `Halium <https://halium.org/>`_ (contained in the boot and system images)
    * The vendor blobs

You, the porter, need to build Halium (in part or in whole, depending on :ref:`porting method <Porting-methods>`) and install this together with the Ubuntu Touch rootfs in order to create a functioning Ubuntu Touch port. 

.. _Android-and-Halium-versions:

Android and Halium versions
---------------------------

Halium is built using source code for a modified version of the Android operating system called LineageOS (see `the LineagesOS website <https://lineageos.org/>`_ and `wiki <https://wiki.lineageos.org/>`_). The required source code is available online and needs to be downloaded and configured to build the correct Halium version for each individual device port. The table below shows which versions are required for the different Halium versions.

===============  ==============  ================
Android version  Halium version  Lineage OS (LOS)
===============  ==============  ================
7.1              7.1             14.1            
9.0              9.0             16.0            
10.0             10.0            17.0
===============  ==============  ================

.. _What-is-a-GSI:

What is a GSI?
--------------

With Android 9.0 there came a significant change of architecture. The device-specific vendor blobs now reside on a separate partition instead of sharing a partition with the rest of the system image. This separation of device-specific code from generic code made possible what is known as the **Generic System Image (GSI)**.

A GSI  is a system image that is built to be able to function with a wide range of devices. Android devices, as of version 9.0, use a GSI. For more information, see the `Android Developer pages <https://developer.android.com/topic/generic-system-image/>`_

The development of the Android GSI architecture also cleared the way for the now available generic Halium 9.0 arm64 system image (hereafter referred to as *the Halium GSI*, or simply *the GSI*) which is used for Ubuntu Touch. This, however, is somewhat different from the Android GSI. For a more detailed explanation of the Halium GSI, please refer to `the wiki page on Gitlab CI builds of the generic Halium system image <https://github.com/ubports/porting-notes/wiki/GitLab-CI-builds-for-devices-based-on-halium_arm64-(Halium-9)>`_.

How does this change the porting process?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Since the GSI is a prebuilt, device-independent component, it effectively simplifies the task of building a viable port by removing much of the meticulous and time consuming task of getting the hardware-specific vendor blobs compiled into the system image and configured to function properly.

.. _Porting-methods:

Porting methods
---------------

When porting based on Halium-7.1 there is only one available method to follow. However, the change in architecture introduced with Android 9 (Halium-9.0) entailed changes in porting method, clearing the way for different courses of action. This guide describes the Halium-7.1 method of porting, as well as two main methods for porting based on Halium-9.0 or later.

Porting based on Halium-7.1
^^^^^^^^^^^^^^^^^^^^^^^^^^^

This version of Halium requires building both the boot image (halium-boot.img) and the full device specific system image (system.img) from source and installing these together with the UBports root file system (rootfs).

Porting based on Halium-9.0 (and later)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Owing to the changes in architecture following the introduction of Android 9 / Halium-9.0, porters now have the option to choose between two main courses of action:

* **The Halium-boot method:** Build halium-boot.img and install this together with the Halium GSI and the UBports rootfs.
* **The standalone kernel method:** Build only the kernel and install this together with the Halium ramdisk, the Halium GSI and the UBports rootfs.

The methods outlined above share some common steps, even between Halium versions. However, there are also significant differences that must not be missed. Therefore, the methods will be treated separately in the subsequent sections of this guide whenever the differences, and the concern for understandability, justify it.

The remainder of this section gives some words of advice to new porters. If you already have porting experience or ROM building experience, you can likely skip straight to :ref:`Preparations <Preparations>`.

.. _The-challenges-of-the-porting-process:

The challenges of the porting process
-------------------------------------

Building the necessary components and getting them to work together properly always involves an amount of code modifications, configuring and testing, but considerably moreso when doing full system image builds, compared to builds using the GSI (see :ref:`porting methods <Porting-methods>`).

Luckily, there is a community of porters out there who are eager to see Ubuntu Touch ported to new devices. When you run into trouble, you should search the sources below (:ref:`Getting-community-help`) to see if others before you have solved the issue. There are online Telegram chat groups you can join to ask for help, but please bear in mind that those participating are doing so in their spare time.

.. _Prior-knowledge-and-skills:

Prior knowledge and skills
--------------------------

Porters come in all sizes and shapes, so to speak. Therefore, this guide does not presuppose extensive knowledge or skills in any particular field. You should, however, as a bare minimum be familiar with some common shell commands and be comfortable working from the terminal on you host PC. Furthermore, the guide is based on a host PC running Linux. If you have some knowledge of programming, this will come in handy at some point, especially if you are familiar with C / C++. Also, you should familiarize yourself with git and set up a Github or Gitlab account to keep track of your code changes. It is wise to start documenting your steps from the very beginning.

We have attempted to give a certain amount of explanation along the way. However, this guide is not an in-depth reference into the architecture and inner workings of Ubuntu Touch, and gaining a deeper understanding will consequently require an amount of research on your part.

.. _Getting-community-help:

Getting community help
----------------------

When you run into trouble, and you will, refer to one or more of the sources below:

* `Telegram: @halium <https://t.me/halium>`_
* `Telegram: @ubports_porting <https://t.me/ubports_porting>`_
* `The UBports Forum <https://forums.ubports.com/category/33/porting>`_
* Matrix: #halium:matrix.org 

.. _General-advice:

General advice
--------------

The more rigorous you are at making notes and documenting your steps, the less time you will spend backtracking your steps and guessing your way along. When dealing with issues that arise along the way, it is wise to work on them one at a time. If you try to correct several things at once, you risk ending up trying to guess which changes solved a given issue, which easily leads to breaking the functionality in question once more at some later stage.

If you are not discouraged after reading this, we welcome your efforts and wish you the best of luck!

The next section presents a key to the rest of this guide.

Introduction to porting
=======================

This specifies porting Ubuntu Touch to an Android device for the general public.
Subsequent sections are differentiated by keeping the main text more concise for more experienced reader,
providing supplementary reading links for the less experienced.

As sequence of steps this guide details how an ideal port might proceed.
Porting is however unpredictable and messy.
Every device and reader is different, so iterate, revisit, skip over other steps, document,
uncover and solve new and undocumented challenges.

.. _What-is-Ubuntu-Touch:

What is Ubuntu Touch?
---------------------

Ubuntu Touch is a libre software operating system for mobile devices.
It can be ported to devices originally shipped with Android.
The majority of these devices are dependent to some degree on proprietary software.

.. _Vendor_blobs:

Device vendors tend to keep the (the low-level device driver) code
that speaks directly to the device hardware proprietary.
These components are commonly called the `vendor 'blobs' (Binary Large OBjects)<https://en.wikipedia.org/wiki/Proprietary\_device\_driver>`_.
You must find vendor blobs specific to your device model
for the correct version of Android and incorporated them into your Ubuntu Touch port.

This is why Ubuntu Touch cannot be built completely from source code for most commercial devices.
Instead, porting the system to these devices involves integrating the
previously mentioned vendor blobs into the rest of the system,
which can be built from source.

The next component of Ubuntu Touch is a pre-compiled
root filesystem which needs to be installed on the device.
Instead of communicating directly with the device hardware,
it uses Halium, a Hardware Abstraction Layer (HAL)
which needs to be built for each specific device,
as each device has its specific hardware architecture.
It is available in different versions
(5.1 which is largely obsolete, 7.1, 9, 10 and 11 as of writing this)
corresponding to different Android versions.

The `Halium project <https://halium.org/>`_ lets Linux run on Android hardware.
It is a joint effort by multiple mobile operating systems, notably Lune OS and UBports.

UBports porting is made possible on top of Halium porting.
Consequently, you will be using both the Halium-, and UBports porting guide.
It may also be helpful to test one of the other operating systems
to debug a problem from more angles.

Halium is an indispensible part of an Ubuntu Touch port.
Developing a new version of the Halium is a very considerable libre software task,
which is why only a few versions of Halium are available.
Each port of Ubuntu Touch has to be based on one of the available Halium versions
and vendor blobs from the corresponding Android version.
(Detailed in the first two columns of the table below.)

The three components of an Ubuntu Touch port:
    * The Ubuntu Touch (UT) root filesystem (rootfs)
    * `Halium <https://halium.org/>`_ (contained in the boot and system images)
    * The vendor blobs

You, the porter, must build Halium (in part or in whole,
depending on :ref:`porting method <Porting-methods>`)
and install this together with the Ubuntu Touch rootfs
to create a functioning port of Ubuntu Touch for your device.

.. _Android-and-Halium-versions:

Android and Halium versions
---------------------------

Halium is built using source code for a modified version
of the Android operating system called LineageOS
(more in `the LineageOS website <https://lineageos.org/>`_ and `wiki <https://wiki.lineageos.org/>`_).
Download and configure the required source code to build
the correct Halium version for each individual device port.
The table below shows which versions are required for the different Halium versions.

===============  ==============  ================
Android version  Halium version  Lineage OS (LOS)
===============  ==============  ================
7.1              7.1             14.1
9.0              9.0             16.0
10.0             10.0            17.1
11.0             11.0            18.1
===============  ==============  ================

.. _What-is-a-GSI:

Generic System Image
--------------------

Android version 9.0 marked a architecture change.
The device-specific vendor blobs now reside on a separate partition
instead of sharing a partition with the rest of the system image.
This separation of device-specific code from other code
made what is known as a **Generic System Image (GSI)** possible.

A GSI is a system image built to function with a wide range of devices.
(More info in `Android Developer pages <https://developer.android.com/topic/generic-system-image/>`_)

Android GSI architecture also cleared the way for the now available
generic Halium 9.0 ARM 64 system image (hereafter referred to as *the Halium GSI*, or simply *the GSI*)
which is used for Ubuntu Touch.
It is somewhat different from the Android GSI.
`The wiki page on Gitlab CI builds of the generic Halium system image <https://github.com/ubports/porting-notes/wiki/GitLab-CI-builds-for-devices-based-on-halium_arm64-(Halium-9)>`_
has a more detailed explanation of the Halium GSI.

What does this mean for the porting process?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Since the GSI is a prebuilt, device-independent component,
it effectively simplifies the task of building a viable port
by removing much of the meticulous and time consuming task
of getting the hardware-specific vendor blobs compiled into
the system image and configured to function properly.

.. _Porting-methods:

Porting methods
---------------

This guide documents three different porting methods:
the **Full system-image method**, the **Halium-boot method**, and
the **Standalone-kernel method**.
For Halium 7.1 the "Full system-image method" is the only available method to follow when porting.
For Halium 9.0 all three methods are possible.

Full system image method
^^^^^^^^^^^^^^^^^^^^^^^^

This porting method requires building both
the boot image (halium-boot.img) and
the full device specific system image (system.img) from source and
installing these together with the UBports root file system (rootfs).
For Halium 7.1 ports this is the only possible method.
(Consequently, you may find this method sometimes referred to as *the Halium 7.1 method*).
For Halium 9.0 it is also possible to use this method,
however for Halium 9.0 the other two methods below are probably easier.

Halium-boot method
^^^^^^^^^^^^^^^^^^

For this porting method it is sufficent to build the halium-boot.img and
install it together with the Halium GSI and the UBports rootfs.
For Halium 9.0 ports this method can be used.

Standalone-kernel method
^^^^^^^^^^^^^^^^^^^^^^^^

This porting method only requires building the kernel and
installing it together with the Halium ramdisk,
the Halium GSI and the UBports rootfs.
For Halium 9.0 ports this method can be used.

All methods share some common steps.
However, there are also significant differences that must not be missed.
Therefore, the methods will be treated separately in subsequent sections where needed.

The remainder of this section brings words of advice to new porters.
If you already have porting experience or ROM building experience,
you can likely skip straight to :ref:`Preparations <Preparations>`.

.. _The-challenges-of-the-porting-process:

The challenges of the porting process
-------------------------------------

Building the necessary component so that they work together
always involves an amount of code modifications,
configuring and testing, but considerably moreso when doing full system image builds,
compared to builds using the GSI (see :ref:`porting methods <Porting-methods>`).

Our community of porters are eager to port Ubuntu Touch to new devices.
Consult the sources below (:ref:`Getting-community-help`) to find out
if others before you have solved issues you face.
There are online Telegram chat-groups you can join to ask for help,
but please bear in mind that those participating are doing so in their spare time.

.. _Prior-knowledge-and-skills:

Prior knowledge and skills
--------------------------

This guide does not presuppose extensive knowledge or skills
in any particular field to account for porters coming in all sizes and shapes.
At the very least be familiar with some common shell commands and
be comfortable working from the terminal on you host PC.
Furthermore, the guide is based on a host PC running Linux.
If you have some knowledge of programming, this will come in handy
at some point, especially if you are familiar with C / C++.
Also, you should familiarize yourself with Git and set up a
GitLab or GitHub account to keep track of your code changes.
It is wise to start documenting your steps from the very beginning.

Explanation is attempted along the way.
However, this guide is not an in-depth reference
into the architecture and inner workings of Ubuntu Touch.
Gaining a deeper understanding is possible with some research on your part.

.. _Getting-community-help:

Getting community help
----------------------

When you run into trouble, and you will, consult one or more of the sources below:

* `Telegram: @halium <https://t.me/halium>`_
* `Telegram: @ubports_porting <https://t.me/ubports_porting>`_
* `The UBports Forum <https://forums.ubports.com/category/33/porting>`_
* Matrix: #halium:matrix.org

.. _General-advice:

General advice
--------------

The more rigorous you are at making notes and documenting your steps,
the less time you spend backtracking them and guessing your way along.
When dealing with issues that arise along the way,
it is wise to work on them one at a time.
Trying to correct several things at once,
often means trying to guess which changes solved or caused a given issue,
which easily leads to breaking the functionality
in question once more, or only at some later stage.
Not only does this not help you, it doesn't help others when
they want to replicate just what works.
It isn't fun to troubleshoot a bigger problem than it needs to be,
and trying to help is harder still.

We welcome your efforts and wish you the best of (not relying on) luck.

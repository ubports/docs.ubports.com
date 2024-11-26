.. _halium-overview:

Halium Overview
===============

Halium serves as the middleware that enables GNU/Linux distributions like Ubuntu Touch to run on Android devices. It provides a standardized interface between the Android Hardware Abstraction Layer (HAL) and the Linux userspace.

Purpose and Role
----------------

Halium solves a fundamental challenge: allowing Linux distributions to utilize Android's hardware drivers and capabilities while running their own GNU/Linux userspace environment. It achieves this by:

* Providing a minimal Android system container
* Managing hardware access through libhybris
* Standardizing the boot process
* Offering consistent hardware support across different Linux distributions

Core Components
---------------

1. **Android Container**

   * Minimal Android system running in LXC
   * Contains essential Android daemons
   * Manages hardware-specific services
   * Handles radio, sensors, and other device-specific features

2. **libhybris Bridge**

   * Translates between Android's Bionic and GNU libc
   * Enables direct use of Android drivers from Linux
   * Provides hardware acceleration support
   * Manages binary compatibility

3. **Init System**

   * Specialized init process
   * Handles early boot requirements
   * Mounts necessary filesystems
   * Starts the Android container

Version Support
---------------

.. list-table::
   :header-rows: 1
   :widths: 15 20 35 30

   * - Halium Version
     - Android Base
     - Key Features
     - Best For
   * - Halium 9
     - Android 9
     - GSI support, Project Treble
     - Older devices, initial GSI ports
   * - Halium 10
     - Android 10
     - Enhanced Treble, early GKI
     - Mid-range devices, transitional ports
   * - Halium 11
     - Android 11
     - Full GKI support, Dynamic partitions
     - Devices launched with Android 11
   * - Halium 12
     - Android 12/12.1
     - Enhanced security, AIDL HAL
     - Modern mid-range devices
   * - Halium 13
     - Android 13
     - Latest HAL support, Upstream alignment
     - Recent flagship devices

Version Requirements
--------------------

Common Elements
^^^^^^^^^^^^^^^
All versions require:

* Valid device tree
* Kernel source availability
* Unlocked bootloader
* Vendor blob access

Version-Specific Requirements
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Halium 9
""""""""
* Project Treble compliance
* VNDK version 28
* Linux kernel 4.4+
* Basic vendor partition
* Files needed: boot.img, system.img, vendor.img

Halium 10
"""""""""
* Enhanced Treble support
* VNDK version 29
* Linux kernel 4.14+
* Optional GKI support
* Early dynamic partition support

Halium 11
"""""""""
* GKI-compatible kernel 5.4+
* Dynamic partition support
* A/B partition scheme support
* VNDK version 30
* Files needed: vendor_boot.img, boot.img, vbmeta.img

Halium 12
"""""""""
* Linux kernel 5.10+
* AIDL HAL support
* Enhanced SELinux policies
* VNDK version 31/32
* Generic Kernel Image (GKI)

Halium 13
"""""""""
* Linux kernel 5.15+
* Latest HIDL/AIDL HALs
* Modern security features
* VNDK version 33
* Modular kernel support

Architecture Evolution
----------------------

.. mermaid::

   graph TB
      A[Device Drivers] --> B[Android HAL]
      B --> C[Halium/libhybris]
      C --> D[Linux Userspace]
      C --> E[Android Container]
      E --> B

Key Transitions
^^^^^^^^^^^^^^^
1. **HAL Architecture**

   * H9-10: HIDL focused
   * H11-12: Mixed HIDL/AIDL
   * H13: AIDL preferred

2. **Partition Schemes**

   * H9: Traditional layout
   * H10: Optional dynamic
   * H11+: Mandatory dynamic

3. **Security Evolution**

   * Enhanced verified boot
   * Stricter SELinux policies
   * Modern encryption requirements

Build Methods
-------------

1. **Full System Build**

   * Complete system image creation
   * Device-specific adaptations
   * Custom configuration options

2. **GSI-Based Build**

   * Using generic system images
   * Minimal device-specific changes
   * Faster development cycle

3. **Standalone Kernel**

   * Modern approach for recent devices
   * Utilizes upstream kernels
   * Simplified porting process

Future Development
------------------

Halium continues to evolve with:

* Support for newer Android versions
* Enhanced GSI compatibility
* Improved hardware support
* Simplified porting procedures
* Standardized build processes

See Also
--------
* :ref:`android-architecture` - Understanding Android system structure
* :ref:`hardware-abstraction` - Details on HAL implementation
* :ref:`build-systems` - Build system specifics
* :ref:`ubuntu-touch-architecture` - Complete system integration

.. note::
    Halium is a collaborative project. Its development benefits multiple Linux-on-Android projects beyond Ubuntu Touch, including LuneOS and others.
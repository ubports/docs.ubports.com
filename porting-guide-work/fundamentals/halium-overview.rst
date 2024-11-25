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

Version Specifics
-----------------

.. list-table::
   :header-rows: 1
   :widths: 20 20 30 30

   * - Halium Version
     - Android Base
     - Key Features
     - Primary Use Case
   * - 7.1
     - Android 7.1
     - Legacy device support, well-tested
     - Older devices, established ports
   * - 9.0
     - Android 9.0
     - Project Treble support, GSI compatibility
     - Modern devices, new ports
   * - 10.0/11.0
     - Android 10/11
     - Generic Kernel Image support
     - Recent devices, GSI-based ports

Build System Integration
------------------------

Halium provides build scripts and configurations that:

* Generate device-specific system images
* Create appropriate boot images
* Package necessary Android components
* Integrate with distribution-specific tools

.. mermaid::

   graph TB
      A[Device Drivers] --> B[Android HAL]
      B --> C[Halium/libhybris]
      C --> D[Linux Userspace]
      C --> E[Android Container]
      E --> B

Common Use Cases
----------------

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

See Also
--------
* :ref:`android-architecture` - Understanding Android system structure
* :ref:`hardware-abstraction` - Details on HAL implementation
* :ref:`build-systems` - Build system specifics
* :ref:`ubuntu-touch-architecture` - Complete system integration

.. note::
    Halium is a collaborative project. Its development benefits multiple Linux-on-Android projects beyond Ubuntu Touch, including LuneOS and others.
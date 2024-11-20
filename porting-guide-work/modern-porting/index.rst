Modern Porting Methods
======================

This section covers the current standard methods for porting Ubuntu Touch to new devices.

Quick Reference
---------------

For experienced developers:
- :doc:`standalone-kernel/index`
- Special cases: :doc:`special-cases/gki-devices`

Basic Porting Process
---------------------

1. Initial Setup
   - Device assessment
   - Build environment preparation
   - Source code acquisition

2. Kernel Build and Testing 
   - Device configuration
   - Initial kernel build
   - Resolving build issues

3. System Integration
   - Full system build
   - First boot
   - Basic functionality verification

4. Hardware Enablement
   - Display configuration
   - AppArmor implementation
   - Hardware feature enablement

Supported Methods
-----------------

.. toctree::
   :maxdepth: 2

   standalone-kernel/index
   halium-versions/index
   special-cases/index

Device Categories
-----------------

Standard Devices
^^^^^^^^^^^^^^^^
Most Android 9.0+ devices follow the standard porting process using the standalone kernel method.

Special Cases
^^^^^^^^^^^^^
Some devices require additional handling:
- GKI devices
- Dynamic partition devices
- A/B partition scheme devices

Prerequisites
-------------

Before starting:
- Read :doc:`../fundamentals/android-architecture`
- Review :doc:`../preparation/device-selection/index`
- Set up build environment per :doc:`../preparation/environment/index`
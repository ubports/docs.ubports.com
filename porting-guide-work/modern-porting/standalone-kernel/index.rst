Standalone Kernel Method
========================

The standalone kernel method is the primary approach for modern Ubuntu Touch ports. This method focuses on building just the device kernel, while using pre-built system images and rootfs from UBports.

Quick Reference
---------------

For experienced developers:
1. Configure deviceinfo 
2. Build kernel only (-k flag)
3. Full build after kernel success
4. First boot verification

Detailed Steps
--------------

.. toctree::
   :maxdepth: 2

   device-config
   kernel-build
   first-boot

Prerequisites
-------------

- Device kernel source code
- Build environment (Python 3.6+, build tools)
- Unlocked bootloader
- ARM64 architecture (preferred)
Device Selection
================

This guide helps you evaluate and select a suitable device for porting Halium. Proper device selection is crucial for a successful port.

Quick Reference
---------------

* Check kernel source availability
* Verify bootloader can be unlocked
* Confirm device has >= 2GB RAM, 16GB storage
* Check for existing LineageOS support
* Verify vendor blob availability

Detailed Requirements
---------------------

Hardware Requirements
^^^^^^^^^^^^^^^^^^^^^
* **RAM**: Minimum 2GB, 3GB+ recommended
* **Storage**: Minimum 16GB internal storage
* **CPU**: ARM64 (aarch64) or ARM (armhf) architecture
* **Bootloader**: Must be unlockable
* **Hardware Features**: Working basic functions (display, touch, storage)

Software/Source Availability
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Essential requirements:

* **Kernel Source**: Must be available, preferably through:

    - Device manufacturer's repository
    - LineageOS repositories
    - Independent developer releases
* **Vendor Blobs**: Required for hardware functionality
* **Device Tree**: Android device configuration
* **Proprietary Files**: Hardware-specific binary blobs

Recommended sources:

* Official LineageOS support
* Active XDA-Developers forum presence
* Manufacturer kernel release compliance

Compatibility Assessment
^^^^^^^^^^^^^^^^^^^^^^^^
Check device compatibility with:

1. **Android Version**

   * Android 9.0+ recommended for new ports
   * Legacy support for 7.1 available but not recommended

2. **Project Treble Support**

   * Treble compliance simplifies porting
   * GSI compatibility indicates good hardware abstraction
   * Check for vendor partition presence

3. **Hardware Abstraction**

   * HIDL interface support
   * Vendor HAL versions
   * Binderized HAL availability

Selection Criteria
------------------

Development Considerations
^^^^^^^^^^^^^^^^^^^^^^^^^^
Evaluate these factors:

1. **Community Support**

   * Active development community
   * Available documentation
   * Existing ports (LineageOS, postmarketOS, etc.)

2. **Development Difficulty**

   * Manufacturer cooperation level
   * Hardware complexity
   * Known issues and workarounds

3. **Testing Requirements**

   * Physical device access
   * Debug capabilities
   * Recovery options

Risk Assessment
^^^^^^^^^^^^^^^
Consider these risks:

1. **Hardware Risks**

   * Bootloader unlocking warranty impact
   * Brick recovery options
   * Hardware replacement availability

2. **Development Risks**

   * Source code quality
   * Blob compatibility
   * Maintenance requirements

.. note::
    Device selection impacts the entire porting process. Taking time to properly evaluate device suitability can save significant effort later.

See Also
--------
* :ref:`Quick Start Guide <quick-start>` - For experienced porters
* :ref:`Hardware Abstraction <hardware-abstraction>` - Understanding hardware requirements
* :ref:`Build Systems <build-systems>` - Build system compatibility
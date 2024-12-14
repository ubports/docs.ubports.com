HAL Version Matrix
==================

Version Compatibility
---------------------

.. list-table::
   :header-rows: 1
   :widths: 20 20 30 30

   * - Android Version
     - HAL Version
     - Features
     - Requirements
   * - Android 7.1
     - HAL1
     - Base hardware support
     - Legacy compatibility
   * - Android 9
     - HAL2/Treble
     - Project Treble, HIDL
     - Vendor partition
   * - Android 10+
     - HAL3/AIDL
     - Modern interfaces
     - GKI support

Interface Requirements
----------------------

1. **Graphics Stack**

   * HWC version requirements
   * Gralloc interface
   * EGL/OpenGL support
   * Vulkan compatibility

2. **Audio System**

   * Audio HAL version
   * Policy configuration
   * ALSA requirements
   * UCM support

3. **Camera System**

   * Camera HAL version
   * Buffer management
   * Format support
   * Feature levels

4. **Sensor Hub**

   * Sensor HAL version
   * Input device support
   * Event handling
   * Calibration

Implementation Guidelines
-------------------------

Version Selection
^^^^^^^^^^^^^^^^^
Choose HAL version based on:

* Device Android version
* Available vendor blobs
* Hardware capabilities
* System requirements

Compatibility Notes
^^^^^^^^^^^^^^^^^^^
Critical considerations:

* Binary compatibility
* ABI requirements
* SELinux policies
* Init requirements

See Also
--------
* :doc:`implementation` - Implementation details
* :ref:`vendor-specific` - Vendor requirements
* :ref:`debugging-hal` - HAL debugging
Modern Porting Methods
======================

Choose the appropriate porting method based on your device characteristics and requirements.

Method Selection
----------------

.. mermaid::

    flowchart TD
        A[Start Method Selection] -->B{Android Version?}
        B -->|Android 9+| C{Project Treble?}
        B -->|Pre-Android 9| D[Full System Method]
        C -->|Yes| E{GKI Device?}
        C -->|No| D
        E -->|Yes| F[Standalone Kernel + GSI]
        E -->|No| G{Hardware Compatible?}
        G -->|Works with GSI| F
        G -->|Needs Customization| D
        
        style F fill:#90EE90
        style D fill:#FFB6C1

Method Comparison
-----------------

.. list-table::
   :header-rows: 1
   :widths: 20 40 40

   * - Method
     - Best For
     - Requirements
   * - Standalone Kernel
     - Modern devices (Android 9+)
     - | - GKI compatibility
       | - Treble support
       | - Available kernel source
   * - Full System
     - Legacy or complex devices
     - | - Complete device tree
       | - Vendor blobs
       | - Build environment
   * - GSI-Based
     - Treble-compliant devices
     - | - Treble support
       | - Vendor partition
       | - Basic kernel build

Standalone Kernel Method
------------------------
The primary method for most modern devices, using Halium Generic System Image (GSI):

* Suited for Android 9+ devices
* Simplified build process focusing on kernel and device configuration
* Uses pre-built system components
* Reduced complexity and build time
* Well-tested with recent devices
* Recommended for initial porting attempts

Full System Build Method
------------------------
Complete system build from source, providing additional control:

* Necessary when GSI method encounters compatibility issues
* Allows deeper system customization
* Useful for devices requiring specific Android system modifications
* More complex setup and longer build times
* Higher resource requirements
* Better suited for experienced Android builders

Selection Guide
---------------
Start with the standalone kernel method unless:

* Device shows GSI incompatibility
* Specific Android-level modifications needed
* Vendor blobs require system-level integration
* Standard HAL interfaces unavailable

.. toctree::
   :maxdepth: 2
   :name: modern-porting

   standalone-kernel/index
   full-system/index
   special-cases/index

Prerequisites
-------------
Before starting:

* Read :doc:`../fundamentals/android-architecture`
* Review :doc:`../preparation/device-selection/index`
* Set up build environment per :doc:`../preparation/environment/index`

Additional Information
----------------------
For deeper understanding of specific topics, see :doc:`../resources/index`.
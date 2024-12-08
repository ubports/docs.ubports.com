Modern Porting Methods
======================

This section covers the available methods for porting Ubuntu Touch to modern devices. The choice of method depends on your device's characteristics and hardware support.

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

Available Methods
-----------------

Standalone Kernel Method
^^^^^^^^^^^^^^^^^^^^^^^^
Best suited for:

* Android 9+ devices
* Treble-compliant hardware
* GKI compatibility
* Available kernel source

This method:

* Uses pre-built system components
* Focuses on kernel and configuration
* Reduces build complexity
* Provides faster iteration

Full System Build Method
^^^^^^^^^^^^^^^^^^^^^^^^
Required for:

* Pre-Android 9 devices
* Non-Treble hardware
* Custom Android modifications
* Specific hardware requirements

This method:

* Builds complete system image
* Provides maximum customization
* Requires more resources
* Takes longer to implement

GSI-Based Method
^^^^^^^^^^^^^^^^
Suitable for:

* Treble-compliant devices
* Standard HAL implementations
* Modern hardware support
* Project Treble compatibility

This method:

* Uses generic system image
* Simplifies system integration
* Reduces maintenance
* Enables faster updates

Method Comparison
-----------------

.. list-table::
   :header-rows: 1
   :widths: 20 40 40

   * - Method
     - Advantages
     - Requirements
   * - Standalone Kernel
     - | - Simpler process
       | - Faster builds
       | - Easier updates
     - | - Android 9+
       | - Kernel source
       | - Treble support
   * - Full System
     - | - Maximum control
       | - Custom modifications
       | - Legacy support
     - | - Complete device tree
       | - All source code
       | - Build environment
   * - GSI-Based
     - | - Standard base
       | - Quick deployment
       | - Easy maintenance
     - | - Treble compliance
       | - Vendor partition
       | - HAL compatibility

Selection Criteria
------------------

1. **Device Assessment**

   * Android version
   * Hardware architecture
   * Available source code
   * Vendor support

2. **Technical Requirements**

   * Build environment needs
   * Development time
   * Maintenance considerations
   * Update requirements

3. **Hardware Support**

   * HAL compatibility
   * Driver availability
   * Vendor blob support
   * Hardware features

Implementation Paths
--------------------

.. toctree::
   :maxdepth: 2
   :name: modern-porting

   standalone-kernel/index
   full-system/index
   special-cases/index
   system-updates/index 

Prerequisites
-------------
Before starting:

* Complete environment setup
* Gather device information
* Check hardware compatibility
* Verify source availability

Next Steps
----------
Choose your implementation path based on your device's characteristics and proceed to the corresponding section.

See Also
--------
* :doc:`../resources/deviceinfo-reference`
* :doc:`../debugging/index`
* :doc:`../vendor-specific/index`
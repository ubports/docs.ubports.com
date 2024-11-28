Modern Porting Methods
======================

Ubuntu Touch can be ported to modern devices using two distinct approaches.

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
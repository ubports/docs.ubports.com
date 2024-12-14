# fundamentals/system-architecture/index.rst

System Architecture
===================

Quick Reference
---------------
Essential components:

* Ubuntu Touch userspace with systemd
* Halium hardware adaptation layer
* Android container for drivers
* libhybris hardware bridging

Understanding the Architecture
------------------------------

Ubuntu Touch combines a full GNU/Linux system with Android hardware support to create a complete mobile operating system. Think of it as having three main layers:

1. **User Space**

   * Ubuntu Touch interface and apps
   * System services
   * User data management

2. **Hardware Adaptation**

   * Halium integration layer
   * Hardware abstraction
   * Android compatibility

3. **Hardware Support**  

   * Android kernel and drivers
   * Hardware initialization
   * Power management

These layers work together to provide a seamless mobile Linux experience while maintaining compatibility with Android hardware.

Detailed Coverage
-----------------

.. toctree::
   :maxdepth: 2
   :name: architecture-toc

   ubuntu-touch
   android-integration
   hardware-abstraction/index
   implementation-guide

See Also
--------
* :ref:`build-systems` - Building system components
* :ref:`debugging` - Architecture debugging
* :ref:`vendor-specific` - Vendor implementations
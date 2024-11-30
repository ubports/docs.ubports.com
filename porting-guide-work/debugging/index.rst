.. _debugging:

Configuration and Debugging
===========================

After achieving first boot, your device will need configuration and debugging to enable full functionality.

Quick Reference
---------------

Critical fixes:
- Display configuration 
- Network enablement
- AppArmor implementation
- Audio enablement

Core Methods
------------

1. **Overlay Method**
   Configuration changes stored separately and applied during boot.

2. **Debugging Strategies** 
   Systematic approaches to identifying and fixing issues.

3. **Standard Workflows**
   Common debugging paths for specific problems.

.. toctree::
   :maxdepth: 2
   :name: debugging-toc

   overlay-method
   
   configuration/display
   configuration/audio
   configuration/networking
   configuration/sensors


   hardware-fixes/apparmor
   hardware-fixes/bluetooth
   hardware-fixes/camera
   
   troubleshooting/index

   strategies/index
   workflows/index   
   hardware-debug/index
   system-debug/index
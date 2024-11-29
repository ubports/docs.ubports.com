.. _debugging:

Debugging and Configuration
===========================

After achieving first boot, your device will need configuration and debugging to enable full functionality.

Quick Reference
---------------

Critical fixes:

- Display configuration
- Network enablement
- AppArmor implementation
- Audio enablement

Overlay Method
--------------

Most device features require specific configuration to function properly. These configurations must persist across system updates without modifying the root filesystem directly.

The overlay method provides a clean, maintainable way to add or modify system files. Configuration changes are stored separately and applied during boot.

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
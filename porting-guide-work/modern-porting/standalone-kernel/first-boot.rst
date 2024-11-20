First Boot Process
==================

Installation
------------

Flash Images
^^^^^^^^^^^^

Standard devices:

.. code-block:: bash

    fastboot flash boot boot.img
    fastboot flash system system.img

Dynamic partition devices:

.. code-block:: bash

    fastboot reboot fastboot
    fastboot flash boot boot.img
    fastboot flash system system.img

Initial Boot Verification
-------------------------

1. System Boot
^^^^^^^^^^^^^^
- Watch boot process
- Monitor kernel logs (dmesg)
- Check for Ubuntu Touch recovery

2. Basic Functionality
^^^^^^^^^^^^^^^^^^^^^^
- Display initialization
- ADB/SSH connectivity
- System services status

Next Steps
----------

After successful boot, proceed to:
- :doc:`../../debugging/configuration/display`
- :doc:`../../debugging/configuration/audio`
- :doc:`../../debugging/hardware-fixes/apparmor`
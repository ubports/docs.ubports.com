Installing Full System Build
============================

Prerequisites
-------------
* Working recovery (TWRP recommended)
* Unlocked bootloader
* ADB access
* Required images built

Installation Steps
------------------

1. **Download Rootfs**

   * Get appropriate rootfs version
   * Match architecture (arm64/armhf)
   * Verify checksum

2. **Flash Images**
   
Standard Method::

    fastboot flash boot halium-boot.img
    fastboot flash system system.img

Dynamic Partitions::

    fastboot reboot fastboot
    fastboot flash boot boot.img
    fastboot flash system system.img

3. **Install Rootfs**::

    # Get halium-install
    git clone https://gitlab.com/JBBgameich/halium-install.git
    
    # Install Ubuntu Touch
    sudo ./halium-install -p ut [rootfs.tar.gz] [system.img]

First Boot
----------
* Device may appear unresponsive
* Check for network interface
* Try SSH access
* See :doc:`../standalone-kernel/first-boot`

Next Steps
----------
* :doc:`../../debugging/configuration/display`
* :doc:`../../debugging/hardware-fixes/apparmor`
* :doc:`../../debugging/configuration/audio`
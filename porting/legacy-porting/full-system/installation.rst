Installation Guide
==================

This guide walks you through installing Ubuntu Touch on your legacy device. The process involves installing a boot image, system image, and the Ubuntu Touch rootfs.

Quick Reference
---------------
Steps in brief::

    # Get installer
    git clone https://gitlab.com/JBBgameich/halium-install.git
    
    # Install system
    sudo ./halium-install -p ut rootfs.tar.gz system.img
    
    # Flash boot
    fastboot flash boot halium-boot.img

Understanding the Components
----------------------------
Before installing, let's understand what we're working with:

1. **Boot Image (halium-boot.img)**

   - Boots your device
   - Contains the kernel
   - Initializes hardware
   
2. **System Image (system.img)**

   - Contains Android HAL
   - Provides hardware support
   - Includes vendor files

3. **Ubuntu Touch Rootfs**

   - Main Ubuntu Touch system
   - User interface
   - Applications
   - System services

Think of these as layers: boot image starts the device, system image provides hardware support, and rootfs gives you the actual Ubuntu Touch experience.

Prerequisites
-------------
Before starting, ensure you have:

1. **Working Recovery**

   - TWRP recommended
   - Must support ext4
   - Must have adb enabled

2. **Required Tools**

   - ADB and Fastboot
   - Root access on your PC
   - Sufficient storage space

3. **Device Access**

   - Unlocked bootloader
   - USB debugging enabled
   - Working USB connection

Detailed Installation Steps
---------------------------

1. Download Ubuntu Touch Rootfs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Choose the correct rootfs for your device architecture::

    # For 32-bit devices (armhf)
    wget https://ci.ubports.com/job/xenial-rootfs-armhf/lastSuccessfulBuild/artifact/out/ubuntu-touch-xenial-armhf-rootfs.tar.gz
    
    # For 64-bit devices (arm64)
    wget https://ci.ubports.com/job/xenial-rootfs-arm64/lastSuccessfulBuild/artifact/out/ubuntu-touch-xenial-arm64-rootfs.tar.gz

2. Prepare Installation Tools
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Get the installation script::

    git clone https://gitlab.com/JBBgameich/halium-install.git
    cd halium-install

3. Install System Image and Rootfs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Install Ubuntu Touch::

    sudo ./halium-install -p ut path/to/rootfs.tar.gz path/to/system.img

This command:

- Unpacks the rootfs
- Installs system image
- Sets up configuration
- Creates user account

4. Flash Boot Image
^^^^^^^^^^^^^^^^^^^
Boot to fastboot mode and flash::

    fastboot flash boot path/to/halium-boot.img

First Boot Process
------------------

1. **Initial Boot**

   - Device may appear unresponsive
   - This is normal - wait a few minutes
   - Watch for USB network interface

2. **Gaining Access**
   When device boots::

    # Setup USB networking
    sudo ip address add 10.15.19.100/24 dev <interface>
    sudo ip link set <interface> up
    
    # Connect via SSH
    ssh phablet@10.15.19.82

3. **Verify Installation**
   Check system status::

    # System status
    systemctl status
    
    # Android container
    lxc-info -n android
    
    # Hardware status
    dmesg | grep -i hardware

Common Issues
-------------

1. **Installation Fails**

   - Check storage space
   - Verify file permissions
   - Review error messages

2. **Boot Problems**

   - Check boot image compatibility
   - Verify partition layout
   - Review kernel logs

3. **No USB Network**

   - Check USB configuration
   - Review kernel config
   - Verify network setup

Recovery Options
----------------

1. **Failed Installation**::

    # Clean up
    fastboot erase system
    fastboot erase userdata
    
    # Start over
    fastboot reboot recovery

2. **Boot Problems**::

    # Boot to recovery
    adb pull /proc/last_kmsg
    adb pull /cache/recovery/last_kmsg

Next Steps
----------
After successful installation:

- :doc:`../../debugging/workflows/first-boot` - First boot debugging
- :doc:`../../debugging/index` - Basic configuration
- :doc:`../../debugging/hardware-debug/index` - Hardware enablement

See Also
--------
* :ref:`debugging-strategies` - Debugging approach
* :ref:`overlay-method` - System configuration
* :doc:`../../debugging/troubleshooting/boot-issues` - Boot problems
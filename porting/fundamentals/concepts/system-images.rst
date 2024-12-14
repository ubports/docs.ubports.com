System Images
=============

Ubuntu Touch uses a unique system image structure that combines GNU/Linux and Android components. Understanding this structure is essential for successful porting and debugging.

Quick Reference
---------------
Key components:

* Boot images (boot.img, recovery.img)
* System image (system.img)
* Ubuntu rootfs
* Android container image

Image Structure
---------------

Basic Layout
^^^^^^^^^^^^
System image components:

1. **Boot Images**
   
   Essential files::

    boot.img           # Kernel and init
    recovery.img       # Recovery system
    vendor_boot.img    # Vendor init (A12+)

   Contains:

   * Linux kernel
   * Device tree
   * Initial ramdisk
   * Boot configuration

2. **System Image**
   
   Main components::

    system.img/
    ├── bin/           # System binaries
    ├── etc/          # Configuration
    ├── lib/          # Libraries
    ├── usr/          # User space
    └── var/          # Variable data

3. **Ubuntu Root**
   
   Core system::

    /
    ├── boot/         # Boot files
    ├── etc/          # System config
    ├── usr/          # Programs
    ├── var/          # Data
    └── opt/          # Add-ons

4. **Android Container**
   
   Hardware support::

    android/
    ├── system/       # Android system
    ├── vendor/       # Vendor files
    └── data/         # Runtime data

Partition Layout
----------------

Standard Configuration
^^^^^^^^^^^^^^^^^^^^^^
Common partition scheme::

    /dev/
    ├── mmcblk0p1    # Boot
    ├── mmcblk0p2    # Recovery
    ├── mmcblk0p3    # System
    ├── mmcblk0p4    # Vendor
    └── mmcblk0p5    # Data

Dynamic Partitions
^^^^^^^^^^^^^^^^^^
Modern devices::

    /dev/mapper/
    ├── system       # System partition
    ├── vendor       # Vendor files
    └── userdata     # User data

Image Creation
--------------

1. **Boot Image**
   
   Build process::

    # Create boot image
    mkbootimg \
      --kernel $KERNEL \
      --ramdisk $RAMDISK \
      --cmdline "$CMDLINE" \
      --base $BASE \
      -o boot.img

2. **System Image**
   
   Assembly steps::

    # Create empty image
    truncate -s 2G system.img
    
    # Format image
    mkfs.ext4 system.img
    
    # Mount and populate
    mount system.img /mnt
    cp -a rootfs/* /mnt/

3. **Recovery Image**
   
   Building recovery::

    # Create recovery
    mkbootimg \
      --kernel $KERNEL \
      --ramdisk $RECOVERY \
      --cmdline "$CMDLINE" \
      -o recovery.img

Update System
-------------

Image Updates
^^^^^^^^^^^^^
Update process:

1. **Delta Updates**

   * Download changes
   * Verify signatures
   * Apply updates
   * Update bootloader

2. **Full Updates**

   * Download image
   * Verify checksums
   * Flash system
   * Preserve data

Common Issues
-------------

1. **Space Problems**
   
   Check:

   * Partition sizes
   * Available space
   * Image sizes
   * File systems

2. **Boot Issues**
   
   Verify:

   * Boot parameters
   * Initial ramdisk
   * Kernel config
   * Device tree

3. **Update Failures**
   
   Review:
   
   * Signatures
   * Space usage
   * File permissions
   * System state

Best Practices
--------------

1. **Image Management**
   
   * Regular backups
   * Version control
   * Documentation
   * Testing process

2. **Partition Layout**
   
   * Proper sizing
   * Alignment
   * Backup space
   * Update room

3. **Recovery Options**
   
   * Working recovery
   * Backup methods
   * Restore process
   * Emergency tools

Next Steps
----------

* :doc:`hardware-support` - Hardware integration
* :ref:`debugging` - Problem solving
* :ref:`implementation-guide` - Implementation

See Also
--------
* :ref:`build-systems` - Building images
* :ref:`android-integration` - Android system
* :doc:`containers` - Container system
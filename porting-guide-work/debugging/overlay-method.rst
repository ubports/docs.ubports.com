The Overlay Method
==================

Overview
--------
The overlay method allows configuration files to be added or modified without changing the root filesystem. Files are stored in a separate location and mounted over the original system files during boot.

Types of Overlays
-----------------

1. **Direct File Overlay**

   * Individual files mounted over system files
   * Original files remain untouched
   * Updates can modify base files safely

2. **Directory Overlay**

   * Entire directories overlaid using overlayfs
   * Combines overlay content with original directory
   * Created using empty .halium-overlay-dir file
   * Original files visible unless overridden

3. **Directory Replacement**

   * Complete directory replacement
   * Original directory hidden
   * Created using empty .halium-override-dir file
   * Original files not accessible

Implementation
--------------

Directory Structures
^^^^^^^^^^^^^^^^^^^^
For Halium 9 and newer, overlay files can be placed in any of these locations:

1. **Primary Location**::

    overlay/
    └── system/
        └── halium/
            └── path/to/config

2. **Alternative Structure**::

    ramdisk-overlay/
    └── path/to/config

3. **System Directory**::

    system/
    └── opt/
        └── halium-overlay/
            └── path/to/config

For Legacy Ports::

    # In device tree
    ubuntu/
    └── path/to/config

Creating Overlay Markers
------------------------

Directory markers are empty files that tell the system how to handle overlays.

1. **Create Overlay Directory**::

    # For combining overlay with original
    mkdir -p overlay/system/halium/etc/some-dir
    touch overlay/system/halium/etc/some-dir/.halium-overlay-dir

    # For complete directory replacement
    mkdir -p overlay/system/halium/usr/lib/replaced-dir
    touch overlay/system/halium/usr/lib/replaced-dir/.halium-override-dir

2. **Add Configuration Files**::

    # Add files to overlay directory
    cp my-config.conf overlay/system/halium/etc/some-dir/

3. **Verify Structure**::

    # Check overlay structure
    find overlay -type f
    
    # Expected output example:
    # overlay/system/halium/etc/some-dir/.halium-overlay-dir
    # overlay/system/halium/etc/some-dir/my-config.conf

Applying Overlays
-----------------

For standalone kernel builds, overlays are handled in your device repository structure.

1. **Place Files in Overlay Directory**::

    # Add configuration files in one of:
    overlay/system/halium/etc/example.conf
    ramdisk-overlay/etc/example.conf
    system/opt/halium-overlay/etc/example.conf

2. **Build and Install**::

    # Build normally
    ./build.sh -b workdir
    
    # Create system image
    ./build/prepare-fake-ota.sh out/device_${DEVICE}.tar.xz ota
    ./build/system-image-from-ota.sh ota/ubuntu_command images

.. note::
    When using deviceinfo_use_overlaystore="true", files under overlay/system/ are automatically installed to /opt/halium-overlay/ in the system image.

Example Configurations
----------------------

1. **Display Configuration**::

    # Combining with existing configs
    overlay/system/halium/etc/ubuntu-touch-session.d/
    ├── .halium-overlay-dir
    └── device.conf

2. **Audio Rules**::

    # Replacing entire directory
    overlay/system/halium/etc/pulse/
    ├── .halium-override-dir
    └── arm_droid_card_custom.pa

Common Issues
-------------
* Missing parent directories
* Incorrect path mapping
* Wrong ownership/permissions
* Conflicting overlays
* Missing overlay markers
* Markers in wrong location

Debugging Overlays
------------------
To verify overlay mounting::

    # Check mount points
    mount | grep overlay
    
    # Inspect directory content
    ls -la /path/to/overlaid/directory
    
    # View effective permissions
    stat /path/to/overlaid/file

See Also
--------
* :ref:`build-systems` - Build process integration
* :ref:`display` - Example configuration
* :ref:`debugging` - Troubleshooting steps
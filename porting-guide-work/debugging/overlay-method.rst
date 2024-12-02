.. _overlay-method:

The Overlay Method
==================

Quick Start
-----------
For experienced developers, place configuration files in one of these locations:

1. Primary overlay location::

    overlay/
    └── system/
        └── halium/
            └── path/to/config

2. Alternative structure::

    system/
    └── opt/
        └── halium-overlay/
            └── path/to/config

Add deviceinfo_use_overlaystore="true" to your deviceinfo file to enable overlay mounting.

Understanding Overlays
----------------------
Think of overlays like transparent sheets placed over a document - they let you modify what's visible without changing the original. In Ubuntu Touch, overlays allow you to:

* Add or modify system files without changing the base system
* Preserve changes across system updates
* Keep device-specific configurations separate
* Test changes safely before making them permanent

This approach is similar to how you might use transparent sheets for overhead projectors - each sheet adds or modifies content while the base content remains unchanged.

Types of Overlays
-----------------

1. File Overlays
^^^^^^^^^^^^^^^^
Individual files mounted directly over system files, like placing a new page over an old one.

Example - Changing display configuration::

    overlay/
    └── system/
        └── halium/
            └── etc/
                └── ubuntu-touch-session.d/
                    └── device.conf

2. Directory Overlays
^^^^^^^^^^^^^^^^^^^^^
Combines overlay content with original directory, like merging two sets of files.

Create a marker file named .halium-overlay-dir::

    overlay/
    └── system/
        └── halium/
            └── etc/
                └── some-dir/
                    ├── .halium-overlay-dir
                    └── custom.conf

3. Directory Replacement
^^^^^^^^^^^^^^^^^^^^^^^^
Completely replaces original directory content, like swapping out an entire folder.

Create a marker file named .halium-override-dir::

    overlay/
    └── system/
        └── halium/
            └── etc/
                └── replaced-dir/
                    ├── .halium-override-dir
                    └── new.conf

Implementation
--------------

Basic Setup
^^^^^^^^^^^
1. Create overlay directory::

    mkdir -p overlay/system/halium

2. Mirror target path structure::

    # For file at /etc/example.conf
    mkdir -p overlay/system/halium/etc
    
    # Add configuration file
    cp example.conf overlay/system/halium/etc/

This structure tells the system exactly where to apply your changes.

Directory Operations
^^^^^^^^^^^^^^^^^^^^

To merge with existing directory::

    # Create overlay directory
    mkdir -p overlay/system/halium/etc/some-dir
    
    # Mark for overlay
    touch overlay/system/halium/etc/some-dir/.halium-overlay-dir
    
    # Add files
    cp custom.conf overlay/system/halium/etc/some-dir/

The .halium-overlay-dir marker tells the system to merge contents.

To replace entire directory::

    # Create replacement directory
    mkdir -p overlay/system/halium/etc/replaced-dir
    
    # Mark for replacement
    touch overlay/system/halium/etc/replaced-dir/.halium-override-dir
    
    # Add new files
    cp new.conf overlay/system/halium/etc/replaced-dir/

The .halium-override-dir marker signals complete directory replacement.

Common Configurations
---------------------

1. Display Settings::

    overlay/system/halium/etc/ubuntu-touch-session.d/
    ├── .halium-overlay-dir
    └── device.conf

2. Audio Configuration::

    overlay/system/halium/etc/pulse/
    ├── .halium-override-dir
    └── arm_droid_card_custom.pa

3. System Services::

    overlay/system/halium/etc/systemd/system/
    ├── .halium-overlay-dir
    └── custom.service

Verification
------------

1. Check Overlay Mounting
^^^^^^^^^^^^^^^^^^^^^^^^^
After boot, verify overlays::

    # Check mount points
    mount | grep overlay
    
    # Verify file content
    cat /etc/example.conf
    
    # Check permissions
    ls -l /path/to/overlaid/file

2. Common Issues
^^^^^^^^^^^^^^^^
* Missing parent directories
* Incorrect permissions
* Wrong overlay markers
* Path mapping errors

Troubleshooting
---------------

If overlays aren't working:

1. Verify directory structure matches exactly
2. Check overlay marker files exist
3. Confirm file permissions
4. Review mount points
5. Check system logs::

    journalctl -b | grep overlay

Advanced Usage
--------------

1. Multi-level Overlays::

    overlay/
    └── system/
        └── halium/
            └── etc/
                ├── dir1/
                │   ├── .halium-overlay-dir
                │   └── file1.conf
                └── dir2/
                    ├── .halium-override-dir
                    └── file2.conf

2. Conditional Overlays::

    # Based on device model
    overlay/system/halium/etc/model-specific/
    └── $(getprop ro.product.device)/
        └── config.conf

Next Steps
----------

**Ready to configure hardware?**
    → :doc:`configuration/display`

**Need to debug overlay issues?**
    → :doc:`troubleshooting/system-issues`

See Also
--------
* :ref:`device-config` - Device configuration
* :doc:`configuration/display` - Display setup example
* :doc:`troubleshooting/system-issues` - Overlay debugging
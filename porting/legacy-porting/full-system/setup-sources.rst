Setting Up Sources
==================

This guide helps you prepare the necessary source code for your legacy device port. Legacy devices (pre-Android 9) require building a complete system from source, which means we need to gather several components.

Quick Reference
---------------
Steps in brief::

    mkdir halium && cd halium
    repo init -u https://github.com/Halium/android -b halium-7.1 --depth=1
    repo sync -c -j$(nproc)

Understanding the Components
----------------------------
Before we begin, let's understand what we need:

1. **Halium Sources**

   - Base Android system modified for Ubuntu Touch
   - Hardware support layer
   - Build system

2. **Device-Specific Sources**

   - Device tree: Hardware configurations
   - Kernel source: Core device code
   - Vendor blobs: Proprietary hardware drivers
   - Common platform files: Shared device family code

Think of these components as building blocks - each one is necessary for your device to function properly.

Detailed Steps
--------------

1. Create Build Environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^
First, create a directory for your build::

    mkdir halium
    cd halium

This will be your main working directory, often called BUILDDIR in documentation.

2. Initialize Repository
^^^^^^^^^^^^^^^^^^^^^^^^
The 'repo' tool helps manage multiple Git repositories::

    repo init -u https://github.com/Halium/android -b halium-7.1 --depth=1

What this does:

- Initializes repo tool
- Points to Halium's Android fork
- Selects halium-7.1 branch
- --depth=1 saves space by getting only recent history

3. Download Source Code
^^^^^^^^^^^^^^^^^^^^^^^
Sync all repositories::

    repo sync -c -j$(nproc)

This will take time and needs good internet. The -j flag uses multiple threads to speed up the download.

4. Adding Device Sources
^^^^^^^^^^^^^^^^^^^^^^^^
Now comes the crucial part - adding your device-specific code.

Create Device Manifest
""""""""""""""""""""""
Create a file: ``halium/devices/manifests/[vendor]_[device].xml``

Example for "Samsung Galaxy S3" (i9300)::

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <!-- Device configuration -->
        <project path="device/samsung/i9300"
                 name="LineageOS/android_device_samsung_i9300"
                 remote="github"
                 revision="cm-14.1" />
        
        <!-- Device kernel -->
        <project path="kernel/samsung/smdk4412"
                 name="LineageOS/android_kernel_samsung_smdk4412"
                 remote="github"
                 revision="cm-14.1" />
                 
        <!-- Vendor blobs -->
        <project path="vendor/samsung"
                 name="TheMuppets/proprietary_vendor_samsung"
                 remote="github"
                 revision="cm-14.1" />
    </manifest>

Understanding the manifest:

- path: Where files will be placed in your build tree
- name: Repository to download
- remote: Where to download from
- revision: Which branch to use

Finding Repositories
""""""""""""""""""""
1. Check LineageOS's GitHub organization
2. Search for your device's codename
3. Look for repositories matching:

   - android_device_[vendor]_[codename]
   - android_kernel_[vendor]_[platform]
   - proprietary_vendor_[vendor]

5. Setup Device
^^^^^^^^^^^^^^^
Initialize your device-specific code::

    ./halium/devices/setup [device]

Replace [device] with your device's codename (like i9300).

6. Apply Patches
^^^^^^^^^^^^^^^^
Apply Halium-specific patches::

    hybris-patches/apply-patches.sh --mb

These patches modify Android code to work with Ubuntu Touch.

Common Issues
-------------
- **repo sync fails**: Check internet connection, free space
- **Repository not found**: Verify repository names and availability
- **Wrong branches**: Make sure branches match Android version
- **Missing repositories**: Check device dependencies

Next Steps
----------
After setting up sources:

- :doc:`build-system` - Building system images
- :doc:`device-configs` - Configure your device
- :doc:`../../debugging/index` - Basic Configuration

See Also
--------
* :ref:`build-systems` - Understanding build systems
* :ref:`android-integration` - Android system structure
* :ref:`hardware-abstraction` - Hardware support layer
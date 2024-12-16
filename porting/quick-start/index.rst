.. _quick-start:

Quick Start Guide
=================

This section provides a condensed overview of the Ubuntu Touch porting process, following the standalone kernel method, and focusing on essential commands and key configuration steps.

Essential Steps
---------------

1. Environment Setup
^^^^^^^^^^^^^^^^^^^^
Basic tools and configuration:

.. code-block:: bash

    sudo apt install git gcc adb fastboot repo python3 python-is-python3 \
        android-tools-adb android-tools-fastboot

    # Configure git and repo
    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
    mkdir ~/bin 
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo

2. Device Configuration
^^^^^^^^^^^^^^^^^^^^^^^
Create deviceinfo file with essential settings:

.. code-block:: bash

    deviceinfo_name="Device Name"
    deviceinfo_manufacturer="Brand"
    deviceinfo_codename="codename"
    deviceinfo_arch="aarch64"
    deviceinfo_kernel_source="<kernel source repo>"
    deviceinfo_kernel_source_branch="<branch>"
    deviceinfo_kernel_defconfig="<device>_defconfig"

3. Build Process
^^^^^^^^^^^^^^^^
Basic build commands:

.. code-block:: bash

    # Build kernel
    ./build.sh -k -b workdir

    # Full build with system image
    ./build.sh -b workdir
    ./build/prepare-fake-ota.sh out/device_$DEVICE.tar.xz ota
    ./build/system-image-from-ota.sh ota/ubuntu_command images

4. Installation
^^^^^^^^^^^^^^^
Flash images to device:

.. code-block:: bash

    # Standard method
    fastboot flash boot boot.img
    fastboot flash system system.img

    # Dynamic partition devices
    fastboot reboot fastboot
    fastboot flash boot boot.img
    fastboot flash system system.img

Key Verification Points
-----------------------

1. **Build Verification**

   * Check image creation
   * Verify file sizes
   * Validate configurations

2. **Boot Process**

   * Watch for USB network interface
   * Monitor kernel messages
   * Check service initialization

3. **Hardware Detection**

   * Verify basic functionality
   * Check hardware interfaces
   * Monitor system logs

Common Issues
-------------

1. **Build Problems**

   * Missing dependencies
   * Wrong configuration
   * Space limitations

2. **Boot Issues**

   * Kernel panic
   * Init failures
   * Service problems

3. **Hardware Support**

   * Driver initialization
   * HAL compatibility
   * Vendor blob issues

Next Steps
----------

For detailed information on specific topics:

* :doc:`../debugging/index` - Troubleshooting guide
* :doc:`../debugging/hardware-debug/index` - Hardware enablement
* :doc:`../vendor-specific/index` - Vendor-specific details

See Also
--------
* :ref:`build-systems` - Complete build system documentation
* :ref:`hardware-abstraction` - Hardware support details
* :doc:`../resources/deviceinfo-reference` - Configuration reference
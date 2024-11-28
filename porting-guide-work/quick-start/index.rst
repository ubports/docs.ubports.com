.. _quick-start:

Quick Start Guide
=================

This section provides quick setup instructions for experienced developers familiar with Android ROM building and Linux systems. Those new to porting should first read :ref:`Fundamentals of Ubuntu Touch Porting <fundamentals>` before proceeding to :ref:`Preparation <preparation>`.

Requirements Overview
---------------------
- Ubuntu 22.04 LTS or similar
- 16GB+ RAM
- 100GB+ storage
- Basic tools: git, repo, adb, fastboot
- Device with unlocked bootloader

Quick Setup
-----------
1. Install essential packages::

    sudo apt install git gcc adb fastboot repo python3 python-is-python3 android-tools-adb android-tools-fastboot

2. Configure git and repo::

    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
    mkdir ~/bin && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

3. Create device config (deviceinfo)::

    # See example in modern-porting/standalone-kernel/device-config
    deviceinfo_kernel_source="<kernel source repo>"
    deviceinfo_kernel_source_branch="<branch>"
    deviceinfo_kernel_defconfig="<device>_defconfig"

4. Build::

    ./build.sh -b workdir            # Build kernel
    ./build/prepare-fake-ota.sh out/device_$DEVICE.tar.xz ota  # Prepare system
    ./build/system-image-from-ota.sh ota/ubuntu_command images  # Create images

Key Documentation Sections
--------------------------
- :ref:`device-config` - Device configuration details
- :ref:`halium-overview` - Version-specific information 
- :ref:`build-systems` - Build process details
- :ref:`debugging` - Troubleshooting guide
- :ref:`additional-resources` - Additional documentation and further reading

Common Issues
-------------
- Missing kernel config options: See xxx
- Boot loop: Check xxx
- Display issues: Review :ref:`display`

.. note::
    First-time porters should follow the complete guide starting with :ref:`preparation`. This quick start omits important details needed for understanding the porting process.
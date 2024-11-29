.. _quick-start:

Quick Start Guide
=================

This accelerated guide is for developers familiar with Android ROM building and Linux systems.

Essential Steps
---------------

1. Verify Requirements

   * Unlocked bootloader
   * Available kernel source
   * Build environment ready

2. Configure Build

   * Create deviceinfo file
   * Set up build directory
   * Prepare kernel configuration

3. Build and Test

   * Build kernel
   * Create system images
   * Initial boot testing

Detailed Instructions
---------------------

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

Next Steps
----------

Choose your next destination based on your needs:

**Need to debug issues?**
    → :doc:`../debugging/troubleshooting/index`

**Want to enable specific hardware?**
    → :doc:`../debugging/index`

**Have vendor-specific challenges?**
    → :doc:`../vendor-specific/index`

**Ready to finalize your port?**
    → :doc:`../finalize/index`

Looking for complete documentation? Return to :doc:`../index` and follow the comprehensive guide.

.. note::
    First-time porters should follow the complete guide starting with :ref:`preparation`. This quick start omits important details needed for understanding the porting process.
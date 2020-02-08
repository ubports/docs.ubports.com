Legacy porting
==============

This page documents the resources and process to build an Android compatibility image for the LG Nexus 5, OnePlus One, or Fairphone 2. This information should not be used to bring up any new devices, only to update these older images. All new ports should be created using Halium following the documentation starting at :doc:`introduction`.

This document is useful if you would like to:

* Fix an Android compatibility-related hardware issue (camera, sensors, radios)
* Experiment with the Linux kernel
* Experiment with the system-image upgrade process

This document is not useful if you would like to modify :doc:`../contribute/preinstalled-apps` or :doc:`System software <../systemdev/index>`. See the respective documentation for each.

.. This paragraph is copied in ./introduction.rst. Please update it in both places.

This process does not build Ubuntu Touch! An Android compatibility image is installed along with a prebuilt Ubuntu Touch filesystem to create a running Ubuntu Touch system.

This document assumes you already have knowledge of building Android or Halium. It also assumes that your device has Ubuntu Touch installed.

Getting set up
--------------

``ubp-5.1`` ports must be built using Ubuntu 16.04. A container or virtual machine based on 16.04 is recommended for this purpose.

Let's get started by installing some build dependencies::

    sudo dpkg --add-architecture i386 && sudo apt update
    sudo apt install schedtool gcc g++ g++-multilib zlib1g-dev:i386 \
         zip libxml2-utils bc python-launchpadlib phablet-tools

Create a directory for your ``ubp-5.1`` source::

    mkdir ~/ubp-5.1
    cd ~/ubp-5.1

Next, we'll initialize the repository::

    repo init -u https://github.com/ubports/android -b ubp-5.1-allthefixings --depth=1

.. note::

    The ``allthefixings`` branch is provided for convenience. It adds all of the current UT device ports to the tree at the expense of a bit more downloaded data. If you are download-sensitive, initialize using ``-b ubp-5.1`` and use the manifest in `build-scripts <https://github.com/ubports/build-scripts>`__ to pick the repos you like.

Finally, we'll download the source::

    repo sync -j10 -c

Set up and build
----------------

With the sources downloaded, we need to set up our environment and build the images. Make sure you're in your ``ubp-5.1`` directory to continue through these steps.

First, bring in the default Android build environment::

    source build/envsetup.sh

Run ``lunch`` and pick the appropriate combo for your device. The name of the combination should start with ``cm_``, followed by the device name and ending with ``-userdebug``::

    lunch

With that done, the build can be started::

    mka

Install the new image
---------------------

Now that the build is complete, we can flash it to the device. Note that all of these commands should be run from a terminal which has been set up with ``source build/envsetup.sh`` and ``lunch`` to ensure the needed tools are in your PATH.

We'll begin with the boot and recovery images. Boot your device into fastboot mode and run the following commands::

    cout
    fastboot flash boot boot.img
    fastboot flash recovery recovery.img

Now boot your device to ensure your kernel build is sane. You may also want to boot into recovery to ensure it is working as well.

To install your new build of the system image, use the `replace-android-system script <https://github.com/janimo/phablet-porting-scripts/blob/68734ca07998b8e784397df77d9aca4b968b3815/build/replace-android-system>`_. It can be run as follows with your device attached::

    ./replace-android-system system.img

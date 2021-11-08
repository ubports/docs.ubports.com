
.. _Gitlab-CI:

Halium-9.0 - Standalone kernel method
=====================================

For some devices, Halium-9.0 (and later) ports can be built based on just the kernel source code.

This method makes use of scripts that download and prepare the kernel source, build the boot image and combine this together with other necessary components, thus creating the files needed which can subsequently be flashed to the device.

Setting up the build environment
--------------------------------

Assuming you have already installed the tools specified in the section on :ref:`Setting-up`, there are just a few more to add before your build environment is complete. Run this commmand to add them::

    sudo apt install android-tools-mkbootimg bc bison build-essential \
    ca-certificates cpio curl flex git kmod libssl-dev libtinfo5 python2 \
    sudo unzip wget xz-utils img2simg jq

Obtaining kernel source
-----------------------

Locate the kernel source code for your device. Fork this repo to your own Github account so that you can easily make any necessary adjustments as your work progresses. Make a note of the link to your repo. It needs to be specified in a configuration script for the build (see :ref:`Configure`).

Clone a Gitlab CI repo to base your build on
--------------------------------------------

Ideally you should base your build on a previous build for a device with similar platform/SoC. However, if unsure, use `the repo for Xiaomi-violet <https://gitlab.com/ubports/community-ports/android9/xiaomi-redmi-note-7-pro/xiaomi-violet/-/tree/master/>`_

.. _Configure:

Configure, build and install
----------------------------

Go through the file ``deviceinfo`` and make all necessary adjustments so that it conforms to your device. The first lines should be self-explanatory.

To complete the ``deviceinfo_flash_offset_`` lines, you will need to obtain and examine an existing ``boot.img`` for your particular device, e.g. from a LineageOS ROM. Lineage provides `a Python script for reading the information in question. <https://raw.githubusercontent.com/LineageOS/android_system_core/lineage-17.1/mkbootimg/unpack_bootimg.py>`_ Download this script and run it on the boot image you have obtained::

    <path-to-unpack_bootimg.py> --boot_img <path-to-boot.img>

This tool will not supply the base offset, only the others, and it gives the absolute value. In other words, the value returned by the script for the kernel offset is in fact the (base offset + kernel offset). In the same manner, the other values are also the sum of the base offset and the offset value in question. Note that offset values for devices that share the same SoC will be the same.

Using this information, you can calculate the correct values for the offsets to be specified in the file ``deviceinfo``. If in doubt, :ref:`seek help <Getting-community-help>`.

When you have finished editing ``deviceinfo``, carefully read and follow the instructions `on this page <https://gitlab.com/ubports/community-ports/android9/xiaomi-redmi-note-7-pro/xiaomi-violet/-/blob/master/README.md>`_ to build and install, remembering to replace 'violet' with your device's codename.


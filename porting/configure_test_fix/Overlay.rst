.. _Overlay:

Overlay file method
===================

The UBports rootfs comes with a set of standard configuration files for a number of features such as display scaling, sound, bluetooth and more. These files are probably not tailored to your specific device and need to be replaced in order for the feature in question to function as it should. This is done with overlay files, i.e. files that the original files get overwritten with. In other words, you need to rewrite the files in question, making the necessary adjustments for your device, and then see to it that these are incorporated into the build so that they will replace the originals. 

Configuring features with overlay files
---------------------------------------

The method described below applies if the file you need to edit can be found in the /etc directory (or a subdirectory of this) on your device. You should not attempt to overwrite files located elsewhere using the method described here.

Overlay method for full system.img builds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In your device directory, create a subdirectory named 'ubuntu'. Collect the files you wish to inject into your build in this directory. 

Relevant files are for example (but this list is incomplete):
    * 70-android.rules
    * android.conf (for display scaling, see below)
    * touch.pa (for pulseaudio sound configuration/initialization, see below)

These files are then injected by adding a code block to the file ``device.mk`` in your device directory. For the three files above add the following code::

    ### Ubuntu Touch ###
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
        $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
        $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa 
    ### End Ubuntu Touch ###

The first of these three files, 70-android.rules, is the one you created when bringing up Lomiri. You can extract this file from the device using ``adb pull`` or ``scp`` and copy it to the 'ubuntu' directory of your device source tree, making sure to add the corresponding line to your ``device.mk`` file, as described above.

Explanation:

The string before the colon '$(LOCAL_PATH)/ubuntu/70-android.rules' specifies the path to the source file to be injected. The string after the colon 'system/halium/lib/udev/rules.d/70-android.rules' specifies the target location on your device.

.. _Overlay-steps:

The general steps to follow are thus:
    1. Copy the file you wish to modify to the 'ubuntu' directory you have created in your device source tree.
    2. Edit the file as needed.
    3. Add a line to the PRODUCT_COPY_FILES section of your device.mk file as shown above.
    4. Rebuild your system.img and reflash together with the ubports rootfs.

.. Note::

    The target paths for the files mentioned above are *not* randomly chosen. You must use the specified paths. 

.. Note::

    When you specify target path 'system/halium/etc/myfilename' your file 'myfilename' will end up in the '/etc' directory of your device (i.e. without the leading 'system/halium')

.. _Rebuild-system.img:

Rebuild system.img
""""""""""""""""""

For Halium-7.1 ports and Halium-9.0 ports using a device specific system.img in place of the GSI, the system.img now needs to be rebuilt.

When you have made the adjustments you need and prepared your source as described above, rebuild the system image: ``mka systemimage``. 

When rebuilding the system image after small changes like these, you need not ``mka clean`` first. However, changes to PRODUCT_PROPERTY_OVERRIDES might not get detected by the build system. To ensure this, go to the directory ``BUILDDIR/out/target/product/CODENAME/system`` and delete the file ``build.prop`` before rebuilding.

Overlay method for GSI-based builds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Work in progress *
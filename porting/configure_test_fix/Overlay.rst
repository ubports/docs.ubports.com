.. _Overlay:

Overlay file method
===================

The UBports rootfs comes with a set of standard configuration files for a number of features such as display scaling, sound, bluetooth and more. These files may not tailored to the needs of your specific device and must therefore to be replaced in order for the feature in question to function as it should. This is done with overlay files, i.e. files that the original files get overwritten with. In other words, you need to rewrite the files in question, making the necessary adjustments for your device, and then see to it that these are incorporated into the build so that they will replace the originals.

If your build is based on the downloaded GSI and rootfs, installed using the halium-install script, then further adjustment of the build will not be possible. This is because the halium-script does not include any method for injecting overlay files. If, on the other hand, your build is based on Gitlab CI scripts, there is a way to further tweak your port with overlay files. This method is described at the end of this section.

.. _Overlay-steps:

Configuring features with overlay files
---------------------------------------

For full ``system.img``-based builds, irrespective of Halium version, the method described below applies if the file you need to edit can be found in the /etc directory (or a subdirectory of this) on your device. In other words, the file or files you wish to overlay must actually exist and be located where specified above. You should not attempt to overwrite files located elsewhere using the method described here.

If your port is based on Gitlab CI scripts, it is actually possible to not only overlay existing files, but also introduce files that were not originally present. The method for Gitlab CI script based builds is detailed at the end of this section. If this is the method you will be using, you should still read both sections to gain a better understanding of how this method actually works.

Overlay method for full system.img builds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In your device directory, create a subdirectory named 'ubuntu'. Collect the files you wish to inject into your build in this directory.

Relevant files are for example (but this list is incomplete):
    * ``/lib/udev/rules.d/70-android.rules``
    * ``/etc/ubuntu-touch-session.d/android.conf`` (for display scaling, see below)

These files are then injected by adding a code block to the file ``device.mk`` in your device directory. For the three files above add the following code::

    ### Ubuntu Touch ###
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
        $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf
    ### End Ubuntu Touch ###

The first of these three files, 70-android.rules, is the one you created when bringing up Lomiri (see :ref:`Lomiri`). Copy it to the 'ubuntu' directory of your device source tree, making sure to add the corresponding line to your ``device.mk`` file, as described above.

Explanation:

The string before the colon '$(LOCAL_PATH)/ubuntu/70-android.rules' specifies the path to the source file to be injected. The string after the colon 'system/halium/lib/udev/rules.d/70-android.rules' specifies the target location on your device.

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

Overlay method for Gitlab CI script-based builds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Builds in this category can also be adapted to a particular device using overlay files, and when building by this method (see :ref:`Gitlab-CI`) it is possible not only to replace existing files, but also to introduce new ones.

When you have prepared the files to replace or introduce, and determined the exact locations where they need to go on your device, these locations need to be replicated under the directory ``overlay/system/`` before running the Gitlab CI scripts according to `the instructions included. <https://gitlab.com/ubports/community-ports/android9/xiaomi-redmi-note-7-pro/xiaomi-violet/-/blob/master/README.md>`_

For example:
""""""""""""

The udev rules file ``70-android.rules`` needs to go into ``system/halium/lib/udev/rules.d/``. This is accomplished by first creating the directory in the Gitlab scripts build tree. Standing in the root of this tree, first create the directory and then copy the file to this location::

    mkdir /halium/lib/udev/rules.d
    cp <path-to-70-android.rules> /halium/lib/udev/rules.d/70-android.rules

Now run the build scripts and the file will get incorporated into your build. Flash the files as per `the instructions. <https://gitlab.com/ubports/community-ports/android9/xiaomi-redmi-note-7-pro/xiaomi-violet/-/blob/master/README.md>`_

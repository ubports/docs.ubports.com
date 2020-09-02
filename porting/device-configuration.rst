Device configuration
--------------------

The rootfs (root file system) you have installed on your device contains a number of configuration files with some standard settings that do not necessarily conform to your device. These must be modified to fit your device. The rootfs itself is read only and identical for all devices. The correct way to adjust the configuration is with overlay files, as described below.

Note that as a rule of thumb, the method described below applies if the file you need to edit can be found in the /etc directory (or a subdirectory of this) on your device. You should not attempt to overwrite files located elsewhere with overlay files using this method.

In your device directory, create a subdirectory named 'ubuntu'. Collect the files you wish to inject into your build in this directory. Relevant files are for example (but this list is incomplete):
    * 70-android.rules (the udev rules for your device)
    * android.conf (for display scaling)
    * touch.pa (for pulseaudio sound configuration/initialization)

These files are then injected by adding a code block to the file 'device.mk' in your device directory. For the three files above add the following code::

    ### Ubuntu Touch ###
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
        $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
        $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa 
    ### End Ubuntu Touch ###

Explanation:

The string before the colon '$(LOCAL_PATH)/ubuntu/70-android.rules' specifies the path to the source file to be injected. The string after the colon 'system/halium/lib/udev/rules.d/70-android.rules' specifies where you want it placed on the device.

The general steps to follow are thus:
    1. Copy the file you wish to modify to the 'ubuntu' directory you have created in your device source tree.
    2. Edit the file as needed.
    3. Add a line to the PRODUCT_COPY_FILES section of your device.mk file as shown above.
    4. Rebuild your system.img and reflash together with the ubports rootfs.

.. note::

    The target paths for the files mentioned above are *not* randomly chosen. You must use the specified paths. 

.. note::

    When you specify target path 'system/halium/etc/myfilename' your file 'myfilename' will end up in the '/etc' directory of your device (i.e. without the leading 'system/halium')

When you have made the adjustments you need and prepared your source as described above, you have to rebuild your system.img: ``mka systemimage``. When rebuilding the system image after small changes like these, you need not ``mka clean`` first. However, changes to PRODUCT_PROPERTY_OVERRIDES might not get detected by the build system. Go to your output folder, enter the system folder and delete build.prop in order to get it regenerated.

Udev rules
^^^^^^^^^^

Extract the file 70-android.rules which you created in the previous section using ``adb pull`` or ``scp`` and copy it to the 'ubuntu' directory of your device source tree. Complete steps 3 and 4 above.

Display scaling
^^^^^^^^^^^^^^^

Create the file android.conf in your 'ubuntu' directory and enter the settings you determined and tested in the previous section. Complete steps 3 and 4.

Sound configuration
^^^^^^^^^^^^^^^^^^^

The supplied touch.pa file located in the /etc/pulse directory of your device needs adjustment. Extract the file and copy it to your 'ubuntu' directory. 

Locate the line::

    load-module module-droid-discover voice_virtual_stream=true

and replace it with this::

    load-module module-droid-discover rate=48000 quirks=+unload_call_exit

At the end of the file, append this::

    ### Automatically load the audioflinger glue
    .ifexists module-droid-glue-24.so
    load-module module-droid-glue-24
    .endif

Now complete steps 3 and 4.

TODO: Add more from the `porting faq <https://pad.ubports.com/p/porting-faq>`_ and `porting check list <https://pad.ubports.com/p/PortChecklist>`_.
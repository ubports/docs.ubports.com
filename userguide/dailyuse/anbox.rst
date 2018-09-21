Run android applications
========================

`Anbox <https://anbox.io>`_ is a minimal android container and compatibility layer that allows you to run android applications on GNU/Linux operating systems.

.. note::
    - Anbox is in early development
    - Anbox only works on the 16.04 version of Ubuntu Touch, which is also in early development

Supported devices
-----------------

Make sure your device is supported:

- Meizu Pro 5 (codename: *turbo*, name of the boot partition: *bootimg*)
- Fairphone 2 (codename: "FP2", name of the boot partition: *boot*)
- Oneplus one (codename: "bacon", name of the boot partition: *boot*)
- Nexus 5 (codename: "hammerhead", name of the boot partition: *boot*)
- BQ M10 HD (codename: *cooler*, name of the boot partition: *boot*)
- BQ M10 FHD (codename: *frieza*, name of the boot partition: *boot*)

You will need the device codename and the name of your boot partition for the installation.

How to install
--------------

.. warning::
    Because this feature is in such an early stage of development, the installation is only recommended for experienced users.

- :doc:`Install <../install>` the 16.04/devel channel on your supported device
- Activate developer mode on your device.
- Connect the device to your computer computer and run the following commands::

    adb shell 
    sudo reboot -f bootloader
    wget http://cdimage.ubports.com/anbox-images/anbox-boot-$CODENAME.img
    sudo fastboot flash $PARTITIONNAME anbox-boot-$CODENAME.img
    sudo fastboot reboot
    rm anbox-boot-$CODENAME.img

- Wait for the device to reboot, then run::

    adb shell
    sudo mount -o rw,remount /
    sudo apt update
    sudo apt install anbox-ubuntu-touch
    anbox-tool install

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the app to show up.

How to install new apks
-----------------------

- Copy the apk to `/home/phablet/Downloads`::

   adb shell
   sudo mount -o rw,remount /
   sudo apt update
   sudo apt install android-tools-adb
   adb install my-app.apk

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the app to show up.

Keep your apps up to date
-------------------------

- To keep your apps running the lasted version you can make use off::

     ApkTrack.
     Checks, if updates for installed apps are available.
     You can found ApkTrack on GitHub.

How to uninstall applications
-----------------------------

- How to uninstall apps::

   adb shell
   sudo mount -o rw,remount /
   anbox-tool app-list
   this is a example of the app-list installed apps on your device:
   ApkTrack (fr.kwiatkowski.ApkTrack)
   adb uninstall fr.kwiatkowski.ApkTrack

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the app to show up.

Reporting bugs
--------------

Please :doc:`report any bugs </contribute/bugreporting>` you come across. Bugs with Ubuntu Touch 16.04 are reported in `the normal Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch/issues>`_ and issues with anbox are reported on `our downstream fork <https://github.com/ubports/anbox/issues>`_. Thank you!

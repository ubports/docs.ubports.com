Android apps
========================

`Anbox <https://anbox.io>`_ is a minimal Android container and compatibility layer that allows you to run Android apps on GNU/Linux operating systems such as UBports.

.. note::
    - When "host" is used in this document, it refers to another device which you can connect your Ubuntu Touch device to. Your host device must have ``adb`` and ``fastboot`` installed.

Supported devices
-----------------

Make sure your device is supported:

- Meizu Pro 5 (codename: ``turbo``, name of the boot partition: ``bootimg``)
- Fairphone 2 (codename: ``FP2``, name of the boot partition: ``boot``)
- OnePlus One (codename: ``bacon``, name of the boot partition: ``boot``)
- Nexus 5 (codename: ``hammerhead``, name of the boot partition: ``boot``)
- BQ M10 HD (codename: ``cooler``, name of the boot partition: ``boot``)
- BQ M10 FHD (codename: ``frieza``, name of the boot partition: ``boot``)

You will need the device codename and the name of your boot partition for the installation.

How to install
--------------

.. warning::
    Installing Anbox is only recommended for experienced users.

- Make sure your supported device runs on 16.04 (Anbox doesn't work on 15.04); be sure to have a `_backup <../backup.rst>`_ of the device.
- Open a terminal on your host and set some device specific variables by running ``export CODENAME="turbo" && export PARTITIONNAME="bootimg"``, but replace the part between the quotes respectively with the codename and name of the boot partition for your device. See the above list.
- Activate developer mode on your device.
- Connect the device to your host and run the following commands from your host (same terminal you ran the ``export`` command in)::

    adb shell
    sudo reboot -f bootloader # 'adb shell' will exit after this command
    wget http://cdimage.ubports.com/anbox-images/anbox-boot-$CODENAME.img
    sudo fastboot flash $PARTITIONNAME anbox-boot-$CODENAME.img
    sudo fastboot reboot
    rm anbox-boot-$CODENAME.img
    exit

- Wait for the device to reboot, then run this from your host::

    adb shell
    sudo mount -o rw,remount /
    sudo apt update
    sudo apt install anbox-ubuntu-touch
    anbox-tool install
    exit

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the new Android apps to show up.

How to install new APKs
-----------------------

- Copy the APK to ``/home/phablet/Downloads``, then run the following from your host::

    adb shell
    sudo mount -o rw,remount /
    sudo apt update
    sudo apt install android-tools-adb
    adb install /home/phablet/Downloads/my-app.apk
    exit

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the new Android apps to show up.

Keep your apps up to date
-------------------------

- To keep your apps up to date you can use of F-Droid or ApkTrack. If you want to install any of the above apps you can find them here:

- F-Droid: https://f-droid.org/
- ApkTrack: https://f-droid.org/packages/fr.kwiatkowski.ApkTrack/

How to uninstall apps
---------------------

- This is a example of the app-list installed apps on your device
- To uninstall apps, run ``adb uninstall [APP_ID]`` from your Ubuntu Touch device::

    adb shell
    sudo mount -o rw,remount /
    adb uninstall [APP_ID]
    exit

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the new Android apps to show up.

Troubleshooting
---------------

- If installing ``anbox-ubuntu-touch`` or ``android-tools-adb`` on the device fails with an error about unsufficient space, try this::

    adb shell
    sudo mount -o rw,remount /
    sudo rm -r /var/cache/apt     # delete the apt cache; frees space on system image
    sudo tune2fs -m 0 /dev/loop0  # space reserved exclusively for root user on system image set to zero
    sudo apt update               # recreate apt cache to install Anbox and adb
    sudo apt install anbox-ubuntu-touch android-tools-adb
    sudo mount -o ro,remount /
    exit

- When you want to install an apk but get the error ``Invalid APK file`` that error could also mean "file not found"

  - Check that you typed the file name correctly
  - If the APK does not reside in the current folder where you execute adb, you have to specify the full path, e.g. ``/home/phablet/Downloads/my-app.apk`` instead of just ``my-app.apk``


Reporting bugs
--------------

Please :doc:`report any bugs </contribute/bugreporting>` you come across. Bugs with Ubuntu Touch 16.04 are reported in `the normal Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch/issues>`_ and issues with Anbox are reported on `our downstream fork <https://github.com/ubports/anbox/issues>`_. Thank you!

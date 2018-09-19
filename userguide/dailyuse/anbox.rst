Run android applications
========================

`Anbox <https://anbox.io>`_ is a minimal android container and compatibility layer that allows you to run android applications on GNU/Linux operating systems.

.. note::
    - Anbox is in early development
    - Anbox for Ubuntu Touch is in even more early development
    - Anbox only works on the 16.04 version of Ubuntu Touch, which is also in early development
    - Only selected devices are supported for the moment, more will be added in the future.

Supported devices
-----------------

Make sure your device is supported:

Meizu Pro 5 (codename: *turbo*, name of the boot partition: *bootimg*)
BQ M10 HD (codename: *cooler*, name of the boot partition: *boot*)
BQ M10 FHD (codename: *frieza*, name of the boot partition: *boot*)

You will need the device codename and the name of your boot partition for the installation.

How to install
--------------

.. warning::
    Because this feature is in such an early stage of development, the installation is only recommended for experienced users.

- :doc:`Install <../install>` the 16.04/devel channel on your supported device
- Open a terminal and run ``export CODENAME="turbo" && export PARTITIONNAME="bootimg"``, but replace the part between the quotes respectively with the codename and name of the boot partition for your device. See the above list.
- Activate developer mode on your device.
- Connect the device to your computer computer and run the following commands::

    adb shell sudo reboot -f bootloader
    wget http://cdimage.ubports.com/anbox-images/anbox-boot-$CODENAME.img
    sudo fastboot flash $PARTITIONNAME anbox-boot-$CODENAME.img
    sudo fastboot reboot
    rm anbox-boot-$CODENAME.img

- wait for the device to reboot, then run::

    adb shell
    sudo mount -o rw,remount /
    sudo apt update
    sudo apt install anbox-ubuntu-touch
    anbox-setup
    exit

- Done! Select "Anbox" in the apps scope to use android applications. You might have to refresh the apps scope (pull down from the center of the screen and release) for the app to show up.

How to install new apks
-----------------------

- Copy the apk to `/home/phablet/anbox-data/data`
- Login to android container on your phone

    lxc-console -ndefault -P /home/phablet/anbox-data/containers -t0

- cd into `data/` 
- install the apk by using `pm install [appname].apk`

Keep your apps up to date
-------------------------

To keep your apps running the lasted version you can make use off:

- ApkTrack
- Check for updates on PlayStore and other sources

ApkTrack checks, if updates for installed apps are available.

.. note::

- ApkTrack can be found here <https://github.com/JusticeRage/ApkTrack>.

Reporting bugs
--------------

Please :doc:`report any bugs </contribute/bugreporting>` you come across. Bugs with Ubuntu Touch 16.04 are reported in `the normal Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch/issues>`_ and issues with anbox are reported on `our downstream fork <https://github.com/ubports/anbox/issues>`_. Thank you!

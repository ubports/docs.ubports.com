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

- Meizu Pro 5 (*turbo*)
- BQ M10 HD (*cooler*)
- BQ M10 FHD (*frieza*)

You will need the device codename (the italic part in the brackets) for the installation.

How to install
--------------

.. warning::
    Because this feature is in such an early stage of development, the installation is only recommended for experienced users.

- Install the 16.04/devel channel on your supported device
- Open a terminal and run ``export CODENAME="turbo"``, but replace the part between the quotes with your devices codename. See the above list.
- Activate developer mode on your device, connect it to your computer and run the following commands::

    adb shell sudo reboot -f bootloader
    wget http://cdimage.ubports.com/anbox-images/anbox-boot-$CODENAME.img
    sudo fastboot flash boot anbox-boot-$CODENAME.img
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

Android apps
========================

`Anbox <https://anbox.io>`_ is a minimal Android container and compatibility layer to run Android apps on GNU/Linux operating systems such as Ubuntu Touch. **Anbox has been depreceated in favour of Waydroid.**

.. note::
    "Computer" refers to another device you connect your Ubuntu Touch device to (via USB here).
    Your USB-attached computer must have ``adb`` and ``fastboot`` installed.

.. note::
    You will need to execute commands on your Ubuntu Touch device (and/or attached computer) to install Anbox and APKs.
    You can do that by using the terminal application, but it is easier to use ``adb shell`` or :doc:`set up SSH </userguide/advanceduse/ssh>` to access your Ubuntu Touch device from your computer.

Supported devices
-----------------

Make sure your device is supported:

- Meizu PRO 5
- Fairphone 2
- OnePlus One
- Nexus 5
- BQ Aquaris M10 HD
- BQ Aquaris M10 FHD

How to install
--------------

.. warning::
    Installing Anbox is only recommended for experienced users.

Install Anbox kernel
^^^^^^^^^^^^^^^^^^^^

Some devices require you to install a custom Linux kernel to use Anbox. These devices are:

- Meizu PRO 5 (codename: ``turbo``, name of the boot partition: ``bootimg``)
- BQ Aquaris M10 HD (codename: ``cooler``, name of the boot partition: ``boot``)
- BQ Aquaris M10 FHD (codename: ``frieza``, name of the boot partition: ``boot``)

If your device is not in this list, the Anbox kernel was automatically installed when you installed Ubuntu Touch.
Please skip ahead to :ref:`run-anbox-installer`.

**You will need to repeat these steps after each Ubuntu Touch update**.
Not doing so can put your Ubuntu Touch device into an unstable state.
Only update your Ubuntu Touch device when you have a computer with you to re-flash the modified kernel image.

#. Be sure to have a `backup <https://askubuntu.com/questions/602850/how-do-i-backup-my-ubuntu-phone>`_ of your device.
#. Open a terminal on your computer and set some device specific variables by running ``export CODENAME="turbo" && export PARTITIONNAME="bootimg"``, but replace the part between the quotes respectively with the codename and name of the boot partition for your device. See the above list.
#. Activate `Developer mode` on your device.
#. Connect the device to your computer and run the following commands from your computer (the same terminal you ran the ``export`` command)::

    wget https://cdimage.ubports.com/anbox-images/anbox-boot-$CODENAME.img
    adb shell # connect from your computer to your Ubuntu Touch device
    sudo reboot -f bootloader # 'adb shell' will exit after this command, the prompt will be back on your computer
    sudo fastboot flash $PARTITIONNAME anbox-boot-$CODENAME.img
    sudo fastboot reboot
    rm anbox-boot-$CODENAME.img
    exit

.. _run-anbox-installer:

Run the Anbox installer
^^^^^^^^^^^^^^^^^^^^^^^

Once your device has the Anbox kernel installed, you can use the Anbox Tool to install the Anbox container.

#. Run ``adb shell`` from your computer to get a shell on your Ubuntu Touch device.
#. Run the following command on your Ubuntu Touch device: ``anbox-tool install``.
#. Follow the on-screen instructions.

Now you're done! You might have to refresh the app drawer (pull down from the center of the screen and release) for the new Android apps to show up.

.. note::
    You now have an ADB server running on your Ubuntu Touch device.

This guide asks you to run some ADB commands, sometimes on your computer, other times on the device itself.
Carefully check which device you are on!

You can check that the ADB server is running on your Ubuntu Touch device by entering ``adb devices`` in its terminal app.
You should see something like::

    phablet@ubuntu-phablet:~$ adb devices
    List of devices attached
    emulator-5558	device

How to install new APKs
-----------------------

- Copy the APK to ``/home/phablet/Downloads``. Then run the following from your computer::

    adb shell # connect from your computer to your Ubuntu Touch device
    adb install /home/phablet/Downloads/my-app.apk # This is the adb of your device, not your computer
    exit

- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the new Android apps to show up.

Keep your apps up to date
-------------------------

- To keep your apps up to date you can use of F-Droid or ApkTrack. If you want to install any of the above apps you can find them here:

- F-Droid: https://f-droid.org/
- ApkTrack: https://f-droid.org/packages/fr.kwiatkowski.ApkTrack/

How to uninstall apps
---------------------

- To uninstall apps from the Ubuntu Touch device, run ``adb uninstall [APP_ID]`` from your computer::

    adb shell # connect from your computer to your Ubuntu Touch device
    sudo mount -o rw,remount /
    adb uninstall [APP_ID] # This is the adb of your device, not your computer
    exit

- Done! You might have to pull down from the app list for the new Android apps to show up.

Access Android storage
-----------------------

The Android storage is located at ``/home/phablet/anbox-data/data/media/0``.

- Links to android libraries can be made in their respective XDG counterparts::

    ln -s ~/anbox-data/data/media/0/Documents ~/Documents/android
    ln -s ~/anbox-data/data/media/0/Pictures ~/Pictures/android
    ln -s ~/anbox-data/data/media/0/Music ~/Music/android
    ln -s ~/anbox-data/data/media/0/Movies ~/Videos/android


Troubleshooting
---------------

- When you want to install an APK, but get the error ``Invalid APK file`` that error could also mean "file not found"

  - Check that you typed the filename correctly.
  - If the APK does not reside in the folder you are in when you run adb, you have to specify the full path, e.g. ``/home/phablet/Downloads/my-app.apk`` instead of just ``my-app.apk``


Reporting bugs
--------------

Please :doc:`report any bugs </contribute/bugreporting>` you come across. Bugs concerning Ubuntu Touch are reported in `the normal Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch/issues>`_ and issues with Anbox are reported on `our downstream fork <https://github.com/ubports/anbox/issues>`_. Thank you!

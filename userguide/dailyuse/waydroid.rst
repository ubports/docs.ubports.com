Android apps
========================

`Waydroid <https://waydro.id>`_ is a minimal Android container and compatibility layer to run Android apps on GNU/Linux operating systems such as Ubuntu Touch.

.. note::
    "Computer" refers to another device you connect your Ubuntu Touch device to (via USB here).
    Your USB-attached computer must have ``adb`` and ``fastboot`` installed.

.. note::
    You will need to execute commands on your Ubuntu Touch device (and/or attached computer) to initialize Waydroid and install APKs.
    You can do that by using the terminal application, but it is easier to use ``adb shell`` or :doc:`set up SSH </userguide/advanceduse/ssh>` to access your Ubuntu Touch device from your computer.


How to set up
-------------

All Halium 9 and newer devices ship with waydroid out of the box starting Ubuntu Touch focal, if your device fits these requirements you can follow the folowing steps

#. Run ``adb shell`` from your computer to get a shell on your Ubuntu Touch device (or open the terminal app on your ubuntu touch device).
#. Run the following command on your Ubuntu Touch device: ``waydroid init``.

Now you're done! You might have to refresh the app drawer (pull down from the center of the screen and release) for the new Android apps to show up.

.. note::
    You now have an ADB server running on your Ubuntu Touch device.

How to install new APKs
-----------------------

- Copy the APK to ``/home/phablet/Downloads``. Then run the following from your computer::

    adb shell # connect from your computer to your Ubuntu Touch device you can also simply open de terminal app on your Ubuntu Touch device
    waydroid app install /home/phablet/Downloads/my-app.apk #
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

    adb shell # connect from your computer to your Ubuntu Touch device, you can also simply open de terminal app on your Ubuntu Touch device
    waydroid app remove [APP_ID] # you can find the APP_ID by using waydroid app list
    exit

- Done! You might have to pull down from the app list for the new Android apps to show up.

Access Android storage
----------------------

The Android storage is located at ``/home/phablet/.local/share/waydroid/data/media/0``.

- Links to android libraries can be made in their respective XDG counterparts::

    ln -s ~/.local/share/waydroid/data/media/0/Documents ~/Documents/android
    ln -s ~/.local/share/waydroid/data/media/0/Pictures ~/Pictures/android
    ln -s ~/.local/share/waydroid/data/media/0/Music ~/Music/android
    ln -s ~/.local/share/waydroid/data/media/0/Movies ~/Videos/android


Troubleshooting
---------------

- When you want to install an APK, but get the error ``Invalid APK file`` that error could also mean "file not found"

  - Check that you typed the filename correctly.
  - If the APK does not reside in the folder you are in when you run adb, you have to specify the full path, e.g. ``/home/phablet/Downloads/my-app.apk`` instead of just ``my-app.apk``


Reporting bugs
--------------

Please :doc:`report any bugs </contribute/bugreporting>` you come across. Bugs concerning Ubuntu Touch are reported in `the normal Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch/issues>`_ and issues with Waydroid are reported on `our waydroid issue tracker <https://gitlab.com/ubports/development/core/packaging/waydroid/-/issues>`_. Thank you!

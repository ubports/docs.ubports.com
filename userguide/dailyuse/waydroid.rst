Android apps
========================

`Waydroid <https://waydro.id>`_ is a minimal Android container and compatibility layer to run Android apps on GNU/Linux operating systems such as Ubuntu Touch.

.. note::
    "Computer" refers to another device you connect your Ubuntu Touch device to (via USB here).
    Your USB-attached computer must have ``adb`` and ``fastboot`` installed.

.. note::
    You will need to execute commands on your Ubuntu Touch device (and/or attached computer) to initialize Waydroid and install APKs.
    You can do that by using the terminal application, but it is easier to use :doc:`adb shell </userguide/advanceduse/adb>` or :doc:`set up SSH </userguide/advanceduse/ssh>` to access your Ubuntu Touch device from your computer.


How to set up
-------------

All Halium 9 and newer devices ship with waydroid out of the box starting with Ubuntu Touch focal, if your device fits these requirements you can follow the following steps

- Open a shell on your Ubuntu Touch device (remotely with adb, ssh or locally with the terminal app).
- Run the following command in your shell: ``waydroid init``.
- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the new Android apps to show up.

How to install new APKs
-----------------------

- Copy the APK to ``/home/phablet/Downloads`` on your Ubuntu Touch device.
- Open a shell on your Ubuntu Touch device (remotely with adb, ssh or locally with the terminal app).
- Run the following in your shell ``waydroid app install /home/phablet/Downloads/my-app.apk``
- Done! You might have to refresh the apps scope (pull down from the center of the screen and release) for the new Android apps to show up.

Using a appstore in Waydroid
--------------------------

You can also install an appstore like F-Droid or Amazon Appstore to install applications or keeping them up to date. If you want to install any of the above apps you can find them here:

- F-Droid: https://f-droid.org/
- Amazon Appstore: https://www.amazon.com/gp/mas/get-appstore/android

Note that due to nature of Waydroid, neither of these will automatically keep your applications up-to-date. You will have to manually open the appstore and check for updates. Additionally you will have to authorize each app install or update as follows:

- search for the app to install or update
- press the install or update button
- wait for the download to finish, there will be a prompt to install the application/update
- press the install button on the above prompt

For more advanced users this could be remedied by building a custom waydroid image that ships with either appstore.

How to uninstall apps
---------------------

- Open a shell on your Ubuntu Touch device (remotely with adb, ssh or locally with the terminal app).
- To uninstall apps from the Ubuntu Touch device, run ``adb uninstall [APP_ID]`` in your shell
- Run the following in your shell ``waydroid app remove [APP_ID]`` (you can find the APP_ID by using 'waydroid app list')
- Done! You might have to pull down from the app list for the old Android apps to go away.
.. note::
    "Computer" refers to another device you connect your Ubuntu Touch device to (via USB here).
    Your USB-attached computer must have ``adb`` and ``fastboot`` installed.

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

- When you are installing an APK, but run into the following error ``Invalid APK file``, this could simply mean that it could not find the apk file.
  Try the following steps to double check:

  - Check that you typed the filename correctly.
  - If the APK does not reside in the folder you are in when you run adb, you have to specify the full path, e.g. ``/home/phablet/Downloads/my-app.apk`` instead of just ``my-app.apk``


Reporting bugs
--------------

Please :doc:`report any bugs </contribute/bugreporting>` you come across. Bugs concerning Ubuntu Touch are reported in `the normal Ubuntu Touch tracker <https://github.com/ubports/ubuntu-touch/issues>`_ and issues with Waydroid are reported on `our waydroid issue tracker <https://gitlab.com/ubports/development/core/packaging/waydroid/-/issues>`_. Thank you!

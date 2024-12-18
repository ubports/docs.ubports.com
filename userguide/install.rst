Install Ubuntu Touch
====================

Installing Ubuntu Touch is easy, and a lot of work has gone in to making the installation process less intimidating to the average user. The UBports Installer is a nice graphical tool that you can use to install Ubuntu Touch on a `supported device <https://devices.ubuntu-touch.io/>`_ from your `Linux <https://snapcraft.io/ubports-installer>`_, `Mac <https://devices.ubuntu-touch.io/installer/?package=dmg>`_ or `Windows <https://devices.ubuntu-touch.io/installer/?package=exe>`_ computer. For more experienced users, we also have manual installation instructions for every device `on the devices page <https://devices.ubuntu-touch.io/>`_.

.. warning::
    If you're switching your device over from Android, you will not be able to keep any data that is currently on the device. Create an external backup if you want to keep it.

You can `Download the UBports Installer from GitHub <https://github.com/ubports/ubports-installer/releases/latest>`_. The following packages are available:

 - `Windows <https://devices.ubuntu-touch.io/installer/?package=exe>`_: ``ubports-installer-<version-number>.exe``
 - `macOS <https://devices.ubuntu-touch.io/installer/?package=dmg>`_: ``ubports-installer-<version-number>.dmg``
 - `Ubuntu or Debian <https://devices.ubuntu-touch.io/installer/?package=deb>`_: ``ubports-installer-<version-number>.deb``
 - `Other Linux distributions (snap) <https://snapcraft.io/ubports-installer>`_: ``ubports-installer-<version-number>.snap``
 - `Other Linux distributions (AppImage) <https://devices.ubuntu-touch.io/installer/?package=appimage>`_: ``ubports-installer-<version-number>.AppImage``

Start the installer and follow the on-screen instructions that will walk you through the installation process. That's it! Have fun exploring Ubuntu Touch!

If you're an experienced android developer and want to help us bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/index>`.

.. note::
    Please do **not** start the installer with ``sudo``. It is meant to be run as a normal user, not as root. Using the installer with sudo will mess up permissions in the installer's cached files and lead to problems down the road. If the installer does not recognize your device, check the troubleshooting information below.

Troubleshooting
---------------

If you need help, you can join UBports' support channels on `telegram <https://t.me/WelcomePlus>`_ or `matrix <https://matrix.to/#/!KwdniMNeTmClpgHkND:matrix.org?via=matrix.org&via=ubports.chat&via=disroot.org>`_ or ask a question `in the forum <https://forums.ubports.com/>`_ or on `askubuntu <https://askubuntu.com>`_. If you believe that the UBports Installer is not working correctly, you can also `file a new issue <https://github.com/ubports/ubports-installer/issues/new>`_ to help us solve the problem.

Connection lost during installation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Try a different USB cable and a different USB port on your computer. Cheap and old cables tend to lose connection during the installation.

Windows Defender prevents Installer from starting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We have contacted Microsoft about this problem, but they seem to think it's `enjoyable <https://twitter.com/Windows/status/1014984163433295875>`__. To dismiss the warning, click on "More Information", then select "Run anyway".

Device not detected
^^^^^^^^^^^^^^^^^^^

Virtual Machine
"""""""""""""""

If you're running the installer in a virtual machine, make sure the virtual machine is allowed to access the USB port.

Windows ADB drivers
"""""""""""""""""""

Install the `universal adb driver <http://adb.clockworkmod.com/>`_ and reboot your computer.

Fairphone 2 Vendor-ID
"""""""""""""""""""""

Run ``echo 0x2ae5 >> ~/.android/adb_usb.ini`` in the terminal and restart the installer. This does not affect the snap package.

Missing udev-rules
""""""""""""""""""

If the device is not detected on Linux and you are not using the snap package, then you might be missing some **udev-rules**.

1. See if ``/etc/udev/rules.d/51-android.rules`` exists and contains the rules below. If not, add them to the file and run
   ``sudo service udev restart`` or
   ``sudo udevadm control --reload-rules && udevadm trigger``.

.. code-block:: text

    SUBSYSTEM=="usb", ATTRS{idVendor}=="0e79", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0502", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0b05", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="413c", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0489", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="091e", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="18d1", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0bb4", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="12d1", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="24e3", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2116", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0482", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="17ef", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="1004", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="22b8", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0409", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2080", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0955", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2257", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="10a9", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="1d4d", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0471", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="04da", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="05c6", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="1f53", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="04e8", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="04dd", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0fce", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0930", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="19d2", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2ae5", MODE="0666", GROUP="plugdev"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2a45", MODE="0666", GROUP="plugdev"

Other issues
^^^^^^^^^^^^

If the troubleshooting tips do not work, you might also try following the manual installation instructions for your device `on the devices page <https://devices.ubuntu-touch.io/>`_.

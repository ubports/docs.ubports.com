Install Ubuntu Touch
====================

Installing Ubuntu Touch is easy, and a lot of work has gone in to making the installation process less intimidating to the average user. The UBports Installer is a nice graphical tool that you can use to install Ubuntu Touch on a `supported device <https://ubuntu-touch.io/devices>`_ from your `Linux <https://snapcraft.io/ubports-installer>`_, `Mac <https://devices.ubuntu-touch.io/installer/dmg>`_ or `Windows <https://devices.ubuntu-touch.io/installer/exe>`_ computer. For more experienced users, we also have manual installation instructions for every device `on the devices page <https://devices.ubuntu-touch.io/>`_.

.. warning::
    If you're switching your device over from Android, you will not be able to keep any data that is currently on the device. Create an external backup if you want to keep it.

You can `Download the UBports Installer from GitHub <https://github.com/ubports/ubports-installer/releases/latest>`_. The following packages are available:

 - `Windows <https://devices.ubuntu-touch.io/installer/exe>`_: ``ubports-installer-<version-number>.exe``
 - `macOS <https://devices.ubuntu-touch.io/installer/dmg>`_: ``ubports-installer-<version-number>.dmg``
 - `Ubuntu or Debian <https://devices.ubuntu-touch.io/installer/deb>`_: ``ubports-installer-<version-number>.deb``
 - `Other Linux distributions (snap) <https://devices.ubuntu-touch.io/installer/snap>`_: ``ubports-installer-<version-number>.snap``
 - `Other Linux distributions (AppImage) <https://devices.ubuntu-touch.io/installer/appimage>`_: ``ubports-installer-<version-number>.AppImage``

Start the installer and follow the on-screen instructions that will walk you through the installation process. That's it! Have fun exploring Ubuntu Touch!

If you're an experienced android developer and want to help us bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/introduction>`.

Troubleshooting
---------------

If you need help, you can join UBports' support channels on `telegram <https://t.me/WelcomePlus>`_ or `matrix <https://matrix.to/#/!KwdniMNeTmClpgHkND:matrix.org?via=matrix.org&via=ubports.chat&via=disroot.org>`_ or ask a question `in the forum <https://forums.ubports.com/>` or on `askubuntu <https://askubuntu.com>`. If you believe that the UBports Installer is not working correctly, you can also `file a new issue <https://github.com/ubports/ubports-installer/issues/new>` to help us solve the problem.

Connection lost during installation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Try a different USB cable and a different USB port on your computer. Cheap and old cables tend to loose connection during the installation.

Windows Defender prevents Installer from starting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We have contacted Microsoft about this problem, but they seem to think it's `enjoyable <https://twitter.com/Windows/status/1014984163433295875>`__. To dismiss the warning, click on "More Information", then select "Run anyway".

Device not detected
^^^^^^^^^^^^^^^^^^^

Custom platform tools
"""""""""""""""""""""

You might want to try using custom adb and fastboot binaries. For that, tick the "Custom tools" checkbox in the options and specify the path to adb and fastboot in the text-boxes below.

Virtual Machine
"""""""""""""""

Make sure the virtual machine is allowed to access the USB port.

Windows ADB drivers
"""""""""""""""""""

Install the `universal adb driver <http://adb.clockworkmod.com/>`__ and try again.

Fairphone 2 Vendor-ID
"""""""""""""""""""""

Run ``echo 0x2ae5 >> ~/.android/adb_usb.ini`` in the terminal and restart the installer. This does not affect the snap package.

Missing udev-rules
""""""""""""""""""

If the device not detected on Linux and packages other than snap, you might be missing **udev-rules**.

1. See if cat ``/etc/udev/rules.d/51-android.rules`` exists and contains the rules below. If not, add them to the file and run
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

If the trouble shooting tips do not work, you might also try following the manual installation instructions for your device `on the devices page <https://devices.ubuntu-touch.io/>`_.

Install on legacy Android devices
---------------------------------

While the installation process is fairly simple on most devices, some legacy Bq and Meizu devices require special steps. This part of the guide does not apply to other devices.

.. note::

    This is more or less uncharted territory. If your device's manufacturer does not want you to install an alternative operating system, there's not a lot we can do about it. The instructions below should only be followed by experienced users. While we appreciate that lots of people want to use our OS, flashing a device with OEM tools shouldn't be done without a bit of know-how and plenty of research.

Meizu devices are pretty much stuck on Flyme. While the MX4 can be flashed successfully in some cases, the Pro5 is Exynos-based and has its own headaches.

.. warning::

    BE VERY CAREFUL! You are responsible for your own actions!

1. Disconnect all devices and non-essential peripherals from your PC. Charge your device on a wall-charger (not your PC) to at least 40 percent
2. Download the Ubuntu Touch ROM for your device:

    - `Bq E4.5 <http://cdimage.ubports.com/ubports-installer/krillin/e45.zip>`_ (*krillin*)
    - `Bq E5 HD <https://storage.googleapis.com/otas/2014/Smartphones/Aquaris_E5_HD/Ubuntu/VEGETA01A-S11A_BQ_L100EN_2017_170207.zip>`_ (*vegetahd*)
    - `Bq M10 HD <https://storage.googleapis.com/otas/2015/Tablets/Freezer/Ubuntu/OTA_13_FW_version/cooler-image-stable-6.zip>`_ (*cooler*)
    - `Bq M10 FHD <https://storage.googleapis.com/otas/2015/Tablets/Freezer%20FHD/Ubuntu/OTA_15/frieza-image-stable-8.zip>`_ (*frieza*)
    - `Meizu MX4 <http://people.canonical.com/~alextu/tangxi/684.zip>`_ (*arale*)

3. Download `SP flash tool <https://storage.googleapis.com/otas/2015/Tablets/Freezer%20FHD/Ubuntu/SP_Flash_Tool_exe_Linux_v5.1612.00.100.zip>`_ for Linux.

On Ubuntu 17.10, there are issues with flash_tool loading the shared library 'libpng12', so this can be used as a workaround:

.. code-block:: text

    wget -q -O /tmp/libpng12.deb http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb \
    && sudo dpkg -i /tmp/libpng12.deb \
    && rm /tmp/libpng12.deb

You will also need to use `the latest version of the tool <https://spflashtool.com/download/SP_Flash_Tool_v5.1744_Linux.zip>`_.

4. Extract the zip files
5. Start the tool with ``sudo``
6. Select the ``*Android_scatter.txt`` file from the archive you downloaded in the first step as the scatter-loading file
7. Choose "Firmware Upgrade"
8. Double-check you chose "Firmware Upgrade" and not "Download" or "Format All"

.. warning::

    If you select DOWNLOAD rather than FIRMWARE UPGRADE, you will end up with a useless brick rather than a fancy Ubuntu Touch device. Be sure to select FIRMWARE UPGRADE.

9. Turn your device completely off, but do not connect it yet
10. Press the button labeled "Download"
11. Perform a final sanity-check that you selected the "Firmware Upgrade" option, not "Download"
12. Make sure your device is off and connect it to your PC. Don't use a USB 3.0 port, since that's known to cause communication issues with your device.
13. `Magic <https://en.wikipedia.org/wiki/Clarke's_three_laws>`_ happens. Your device will boot into a super old version of Ubuntu Touch.
14. Congratulations! Your device will now boot into a very old version of Ubuntu Touch. You can now use the UBports Installer to proceed.

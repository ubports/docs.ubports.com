Install Ubuntu Touch
====================

The installer is a nice graphical tool everyone can use to install Ubuntu Touch on a `supported device <https://devices.ubuntu-touch.io/>`_ from your `Linux <https://snapcraft.io/ubports-installer>`_, `macOS <https://devices.ubuntu-touch.io/installer/?package=dmg>`_ or `Windows <https://devices.ubuntu-touch.io/installer/?package=exe>`_ computer.
Manual installation instructions for more experienced users are available for every device `on the devices page <https://devices.ubuntu-touch.io/>`_.

.. warning::
    If switching your device over from Android, you must create an external backup if you want to keep any of the data on it.

`Download the installer from GitHub <https://github.com/ubports/ubports-installer/releases/latest>`_.
The following packages are available:

 - `Windows <https://devices.ubuntu-touch.io/installer/?package=exe>`_: ``ubports-installer-<version-number>.exe``
 - `macOS <https://devices.ubuntu-touch.io/installer/?package=dmg>`_: ``ubports-installer-<version-number>.dmg``
 - `Ubuntu or Debian <https://devices.ubuntu-touch.io/installer/?package=deb>`_: ``ubports-installer-<version-number>.deb``
 - `Other Linux distributions (Snap) <https://snapcraft.io/ubports-installer>`_: ``ubports-installer-<version-number>.snap``
 - `Other Linux distributions (AppImage) <https://devices.ubuntu-touch.io/installer/?package=appimage>`_: ``ubports-installer-<version-number>.AppImage``

Start the installer and follow the on-screen instructions walking you through everything.

If you're an experienced Android developer and want to help bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/index>`.

.. note::
    Please do **not** start the installer with ``sudo``. It is meant to be run as a normal user, not as root.
    Using the installer with sudo messes up permissions in the installer's cached files and leads to problems down the road.
    If the installer doesn't recognize your device, check the troubleshooting info below.

Troubleshooting
---------------

Join the UBports' support channels on `Telegram <https://t.me/WelcomePlus>`_ or `Matrix <https://matrix.to/#/!KwdniMNeTmClpgHkND:matrix.org?via=matrix.org&via=ubports.chat&via=disroot.org>`_ or ask a question `in the forum <https://forums.ubports.com/>`_ or on `Ask Ubuntu <https://askubuntu.com>`_.
If you believe the installer is not working correctly, also `file a new issue <https://github.com/ubports/ubports-installer/issues/new>`_ to help solve the problem.

Connection lost during installation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Try a different USB cable and a different USB port on your computer.
Cheap and old cables tend to lose connection during the installation.

Windows Defender prevents installer from starting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Microsoft has been contacted about this problem, but they seem to think it's `enjoyable <https://twitter.com/Windows/status/1014984163433295875>`__.
To dismiss the warning, click on "More Info", then select "Run anyway".

Device not detected
^^^^^^^^^^^^^^^^^^^

Virtual Machine
"""""""""""""""

If you're running the installer in a virtual machine, make sure the virtual machine is allowed to access the USB port.

Windows ADB drivers
"""""""""""""""""""

Install the `universal ADB driver <http://adb.clockworkmod.com/>`_ and reboot your computer.

Fairphone 2 Vendor-ID
"""""""""""""""""""""

Run ``echo 0x2ae5 >> ~/.android/adb_usb.ini`` in the terminal and restart the installer.
(This does not affect the Snap package.)

Missing udev-rules
""""""""""""""""""

If the device not detected on Linux and packages other than Snap, you might be missing **udev-rules**.

1. Check if ``/etc/udev/rules.d/51-android.rules`` exists and contains the rules below.
   If not, add them to the file and run
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

If the troubleshooting tips do not work, you might also try following the manual installation instructions for your device
`on the `Devices` page <https://devices.ubuntu-touch.io/>`_.

Install on legacy Android devices
---------------------------------

While the installation process is fairly simple on most devices, some legacy BQ and Meizu devices require special steps.
(This part of the guide does not apply to other devices.)

.. note::

    This is more or less uncharted territory.
    If your device's manufacturer does not want you to install an alternative operating system, there's not a lot we can do about it.
    The instructions below should only be followed by experienced users.
    Wanting to use the OS is appreciated, but flashing a device with OEM tools shouldn't be done without a bit of know-how and plenty of research.

Meizu devices are pretty much stuck on Flyme. While the MX4 can be flashed in some cases, the PRO 5 is Exynos-based and has its own headaches.

.. warning::

    Be very careful. You are responsible for your own actions.

1. Disconnect all devices and non-essential peripherals from your PC.
Charge your device forom a wall-charger (not your PC) to a battery charge level of at least 40 percent.
2. Download the Ubuntu Touch ROM for your device and extract the ZIP files:

    - `BQ E4.5 <http://cdimage.ubports.com/ubports-installer/krillin/e45.zip>`_ (*krillin*)
    - `BQ E5 HD <https://storage.googleapis.com/otas/2014/Smartphones/Aquaris_E5_HD/Ubuntu/VEGETA01A-S11A_BQ_L100EN_2017_170207.zip>`_ (*vegetahd*)
    - `BQ M10 HD <https://storage.googleapis.com/otas/2015/Tablets/Freezer/Ubuntu/OTA_13_FW_version/cooler-image-stable-6.zip>`_ (*cooler*)
    - `BQ M10 FHD <https://storage.googleapis.com/otas/2015/Tablets/Freezer%20FHD/Ubuntu/OTA_15/frieza-image-stable-8.zip>`_ (*frieza*)
    - `Meizu MX4 <http://people.canonical.com/~alextu/tangxi/684.zip>`_ (*arale*)

3. Download the latest version of the `SP Flash Tool <https://spflashtool.com/download/>`_ (*aka MTK flash tool*).
4. Extract the ZIP files
5. Open a terminal, enter the SP Flash Tool directory and run it with ``sudo ./flash_tool.sh``.

.. note::

    On Ubuntu 17.10, there are issues with flash_tool loading the shared library 'libpng12', so this can be used as a workaround:

    .. code-block:: text

        wget -q -O /tmp/libpng12.deb https://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb \
        && sudo dpkg -i /tmp/libpng12.deb \
        && rm /tmp/libpng12.deb

6. In the "Scatter-loading File" section, press the "choose" button and select the ``*Android_scatter.txt`` file from the archive you downloaded in the second step.
7. Choose "Firmware Upgrade" from the drop-down menu.

.. warning::

    You must select FIRMWARE UPGRADE, and not DOWNLOAD ONLY. Otherwise you brick your device.

    Also, after selecting the ``*Android_scatter.txt``, the drop-down menu choice is reset to DOWNLOAD ONLY.
    Be sure to select it after selecting the file.

8. Turn your device completely off, but do not connect it yet.
9. Press the button labeled "Download".
10. Perform a final sanity-check that you selected the "Firmware Upgrade" option, not "Download Only".
11. Make sure your device is off and connect it to your PC. Don't use a USB 3.0 port, since that's known to cause communication issues with your device.
12. `Magic <https://en.wikipedia.org/wiki/Clarke's_three_laws>`_ happens. Wait till all the progress bars finish.

.. note::

    If the installation fails with a 100% red bar and hangs there (and logs says something like ``COM port is open. Trying to sync with the target…``), remove the ``modemmanager`` package as the one installed `is not compatible <https://web.archive.org/web/20180118130643/http://www.mibqyyo.com/en-articles/2015/09/16/ubuntu-android-installation-process-for-bq-aquaris-e4-5-and-e5/>`_ with SP Flash Tool, close it and try again from step 4.

13. Your device will now boot into a super old version of Ubuntu Touch. Use the installer to install an updated version.

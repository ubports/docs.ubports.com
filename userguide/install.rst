Install Ubuntu Touch
====================

Installing Ubuntu Touch is easy, and a lot of work has gone in to making the installation process less intimidating to less technical users. The UBports Installer is a nice graphical tool that you can use to install Ubuntu Touch on a `supported device <https://ubuntu-touch.io/devices>`_ from your Linux, Mac or Windows computer.

.. warning::
    If you're switching your device over from Android, you will not be able to keep any data that is currently on the device. Create an external backup if you want to keep it.

Go to `the download page <https://github.com/ubports/ubports-installer/releases/latest>`_ and download the version of the installer for your operating system:

 - Windows: ``ubports-installer-<version-number>.exe``
 - macOS: ``ubports-installer-<version-number>.dmg``
 - Ubuntu or Debian: ``ubports-installer-<version-number>.deb``
 - Other Linux distributions: ``ubports-installer-<version-number>.snap`` or ``ubports-installer-<version-number>.AppImage``

Start the installer and follow the on-screen instructions that will walk you through the installation process. That's it! Have fun exploring Ubuntu Touch!

.. note::

    When using the snap installer sometimes device are not detected automaticaly. Then unplug your device, open a terminal and enter the following command:

    .. code-block:: text

        sudo snap connect ubports-installer:raw-usb

    Then restart the installer, plug in your device and give it another try.


If you're an experienced android developer and want to help us bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/introduction>`.

Install on legacy Android devices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

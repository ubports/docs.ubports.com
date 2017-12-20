Install Ubuntu Touch
====================

Installing Ubuntu Touch is easy, and a lot of work has gone in to making the installation process less intimidating to less technical users. The UBports Installer is a nice graphical tool that you can use to install Ubuntu Touch on a `supported device <devices.ubports.com>`_ from your Linux, Mac or Windows computer.

.. warning::
    If your're switching your device over from Android, you will not be able to keep any data that is currently on the device. Create an external backup if you want to keep it.

Go to `the download page <https://github.com/ubports/ubports-installer/releases/latest>`_ and download the version of the installer for your operating system:

 - Windows: ubports-installer-<version-number>.exe
 - macOS: ubports-installer-<version-number>.dmg
 - Linux: ubports-installer-<version-number>.deb, ubports-installer-<version-number>.snap or ubports-installer-<version-number>.AppImage

Start the installer and follow the on-screen instructions that will walk you through the installation process. That's it! Have fun exploring Ubuntu Touch!

If you're an experienced android developer and want to help us bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/introduction>`.

Install on legacy Android devices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

While the installation process is fairly simple on most devices, some legacy Bq and Meizu devices require special steps due to their closed nature. This part of the guide does not apply to any other devices or bq devices that are running the Canonical version of Ubuntu Touch.

.. note::

    This is more or less uncharted territory. If the device manufacturers don't want you to install an alternative operating system on their devices, there's not a lot we can do about it. The instructions below are very vague and should only be followed by experienced users. While we appreciate that lots of people want to use our OS, flashing a device with OEM tools shouldn't be done without a bit of know-how and plenty of research.

* BQ devices: Download the official Ubuntu Edition firmware from `their website <http://www.mibqyyo.com/en-download/>`_ and use their SP Flash Tool to flash it.
* Meizu devices: You are pretty much stuck on Flyme. For the MX4, there are some instructions floating around for downgrading your OS, gaining root with an exploit, unlocking your bootloader, and so on. We aren't going to link to them here for obvious reasons. The Pro5 is Exynos-based and has its own headaches. You're even more at your own risk on these.

.. warning::

    BE VERY CAREFUL! Getting this part wrong can permanantly damage or brick your device. NEVER check the "Format All" option in SP Flash Tool and carefully read everything that it tells you. Some users have destroyed the partition that holds their hardware IDs and can no longer connect to Wi-Fi or cellular networks.

Install Ubuntu Touch
====================

There are many ways to install Ubuntu Touch on your supported device. To check if your device is supported, check `this page <https://ubports.com/page/fs-flash-phone>`_

Back up your data
-----------------

Your data on your phone is important. You don't need to lose it in the upgrade. 

If you're already using Ubuntu Touch on your phone and any distro that supports snaps on your PC, use the `magic-device-tool <https://github.com/MariusQuabeck/magic-device-tool>`_ to back up your device.
    
Non-Canonical devices
---------------------

These instructions will help you install our OS on the "Core Devices" such as the Nexus 5 or Fairphone 2.

Switch from Android to Ubuntu Touch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* On any Linux distro with Snaps: Use the `magic-device-tool <https://github.com/MariusQuabeck/magic-device-tool>`_. Please read the instructions carefully!
* On Windows or MacOS (**beta**!): Use the `UBports GUI installer <https://github.com/ubports/ubports-installer/releases>`_

Official "Ubuntu for Devices" devices
-------------------------------------

These instructions will help you install to a device that ran an official Canonical build of Ubuntu for Devices, such as the BQ M10 or Meizu MX4

Switch from Canonical builds to UBports builds
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* On any Linux distro with Snaps: Use the `magic-device-tool <https://github.com/MariusQuabeck/magic-device-tool>`_. Please read the instructions carefully!
* On Windows or MacOS (**beta**!): Use the `UBports GUI installer <https://github.com/ubports/ubports-installer/releases>`_

Switch from Android to Ubuntu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

BE VERY CAREFUL! This can permanantly damage or brick your device. NEVER check the "Format All" option in SP Flash Tool and carefully read everything that it tells you. Some users have destroyed the partition that holds their hardware IDs and can no longer connect to Wi-Fi or cellular networks.

* BQ devices: Download the official Ubuntu Edition firmware from `here <http://www.mibqyyo.com/en-download/>`_ and use SP Flash Tool to flash it.
* Meizu devices: You are pretty much stuck on Flyme. For the MX4, there are some instructions floating around for downgrading your OS, gaining root with an exploit, unlocking your bootloader, and so on. We aren't going to link to them here for obvious reasons. The Pro5 is Exynos-based and has its own headaches. You're even more at your own risk on these.

We are being vague with these instructions on purpose. While we appreciate that lots of people want to use our OS, flashing a device with OEM tools shouldn't be done without a bit of know-how and plenty of research. People have destroyed their phones.

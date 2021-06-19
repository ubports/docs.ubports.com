Apparmor
========

.. _Apparmor:

AppArmor

`What is AppArmor? <https://wiki.ubuntu.com/AppArmor>`_

Start by downloading the backported `AppArmor patch <https://github.com/ubports/AppArmor-backports-ut>`_ corresponding to your device's kernel version. Your kernel version is specified at the beginning of your kernel defconfig file, i.e. the one you edited in section :ref:`H7_edit-kernel-config` above. (For more information on backporting, see the :ref:`bluetooth <Bluetooth>` section below.)

You now need to delete your entire BUILDDIR/kernel/VENDOR/MODEL/security/apparmor subdirectory and replace it with the one you downloaded. Then rebuild halium-boot. 

If you get errors when building, resolve them one at a time, modifying your source code as needed. Note that you should only modify the code in the AppArmor subdirectory if at all possible. Modifying code elsewhere will more than likely just compound your problems.

Seek help as needed from one of the sources mentioned in the subsection on :ref:`getting community help <Getting-community-help>`.
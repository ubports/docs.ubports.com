Halium porting
==============

.. Note::
    If you are looking for information on installing Ubuntu Touch on a supported device, or if you would like to check if your device is supported, please see `this page <https://devices.ubuntu-touch.io/>`_.

This section will introduce you to some of the specifics of porting Ubuntu Touch to an Android device by building a Halium image.

.. This paragraph is copied in ./ubp-5.1.rst. Please update it in both places.

This process does not build Ubuntu Touch! A Halium image is installed along with a prebuilt Ubuntu Touch filesystem to create a running Ubuntu Touch system. If you already have an Ubuntu Touch device and would like to modify the software on it, you will be better served by :doc:`../systemdev/index`. If you would like to modify the Android compatibility image for the Nexus 5, Oneplus One, or Fairphone 2, :doc:`ubp-5.1` is appropriate for you.

Before you begin, you'll want to head over to `the Halium porting guide <http://docs.halium.org/en/latest/porting/first-steps.html>`_ and get your ``halium-boot`` and ``systemimage`` built without errors. Once you're at this point, you can come back here.

.. Note::
    Excuse our dust! Halium´s documentation guides you all the way through from the initial build environment setup to installing a reference system. This includes using ``hybris-boot`` instead of ``halium-boot``. Also, Halium uses different kernel configuration parameters that are not compatible with what Ubuntu Touch needs at the moment. We try to reduce the differences, but this is currently still not perfect.
    When following the Halium documentation, you might want to return to :doc:`building-halium-boot` from time to time to see the differences. Specifically, use ``check-kernel-config`` to fix the kernel config and do not build the ``hybris-boot`` target but instead use only ``halium-boot``.

Continue at :doc:`building-halium-boot` to learn about how to configure filesystems and the kernel and how to install the rootfs.

.. toctree::
    :maxdepth: 1
    :name: toc-porting

    building-halium-boot
    installing-16-04
    running-ut
    finish-port

.. _porting-help:

Getting community help
----------------------

If you're having trouble with the porting steps after building your Halium systemimage, check out the "Common Problems" section of the page you're stuck on. If none of the suggestions are helpful, you can get help from the community via the following channels:

* Telegram: @ubports_porting
* IRC: #ubports-porting on freenode
* Forum: `forums.ubports.com <https://forums.ubports.com>`__

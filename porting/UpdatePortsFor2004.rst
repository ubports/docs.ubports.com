.. _UpdatePortsFor2004:

Update ports for Ubuntu Touch 20.04
===================================

Ubuntu Touch 20.04 introduces a lot of changes underneath, which requires changes from the porters. This document is intended to serve as an overview on how to make your port run on Ubuntu Touch 20.04. However, every port is different, and may require more than what is outlined in this document. We'll be available in the UBports porting Telegram group to answer any question that might occur during process.

For GitLab CI-based ports: switch to shared building script & GitLab CI configuration
-------------------------------------------------------------------------------------

Because of changes in how Ubuntu Touch 20.04's rootfs is made, we need to changes the way device tarballs are built. Instead of cherry-picking script changes from other port's repository, we recommend transitioning to the shared building script. By using the shared script, your port will receive the latest changes in device tarball building as rootfs continues to evolve (e.g. for 22.04 or newer). To transition to the shared script, remove the whole ``build/`` directory, and replace the content of ``build.sh`` with:

.. code-block:: bash

    #!/bin/bash
    set -xe

    [ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools build
    ./build/build.sh "$@"

You may want to add ``build/`` into your ``.gitignore``.

And for the same reason, we recommend using the shared GitLab CI configuration so that when the shared script has its requirement changes, your port will not be broken. Using the shared config can be done by replacing the content of ``.gitlab-ci.yml`` with:

.. code-block:: yaml

    include:
        - https://gitlab.com/ubports/porting/community-ports/halium-generic-adaptation-build-tools/-/raw/main/gsi-port-ci.yml

    variables:
        BUILD_DEVEL_FLASHABLE_FOCAL: "1"

The ``variables`` section enables building the flashable partition image from the Focal rootfs, which you might want to leave out for intial porting.

.. note::
    The script currently doesn't handle the single repository which builds for multiple devices. If your port needs this feature, please upvote `this issue <https://gitlab.com/ubports/porting/community-ports/halium-generic-adaptation-build-tools/-/issues/5>`_.

If you have custom changes in the build script or in the GitLab CI configuration, you may need to carefully inspect the changes to make sure that your port will still work. Note that you can add additional steps to the GitLab CI configuration and order it after the device tarball building steps, or even overriding some steps (not recommended).

For GitLab CI-based ports: inspect your overlay in Android partitions
---------------------------------------------------------------------

Many ports overlay the files in Android partitions to makes the port work. This is often achived by overlaying the ``mount-android.conf`` Upstart job to either contain the code itself, or to call another script. Since Ubuntu Touch 20.04 no longers use Upstart (see below), the code will no longer run. If your port ships your overlay files under ``/opt/halium-overlay`` or ``/usr/share/halium-overlay``, the new overlay system will take care of it automatically, except when the new file is added in which case you may need ``.halium-overlay-dir`` (see :ref:`Overlay`).

Alternatively, you may want to consider moving your port completely to use the `overlaystore` system. However the migration is not straight forward and it will make your port incompatible with 16.04 (unless you have another branch). Contact @peat-psuwit in the UBports porting group for more info.

For Halium 7 ports or older: update bluetooth-touch script
----------------------------------------------------------

The way bluetooth-touch script used to work is inherently tied to Upstart. In Ubuntu Touch 20.04, bluetooth-touch is migrated to use Systemd. So, instead of overlaying ``bluetooth-touch-android.conf`` Upstart job, you'll have to overlay ``/usr/share/bluetooth-touch/android.sh``. Note that the script will be run by ``/bin/sh``, so avoid Bash-ism here.

Halium 9 ports doesn't require this, as Bluebinder replaces ``bluetooth-touch`` by directly talking to HIDL service to provide Bluetooth host interface.

For everyone: configure usb-moded
---------------------------------

usb-moded replaces ``setupusb`` script in setting and managing USB modes. We've written a specific page for that. See :ref:`USBModed`.

For everyone: check custom Upstart jobs
---------------------------------------

Some ports has custom Upstart jobs to do certain things on boot. Those jobs has to be converted to Systemd units in order to run at all in Ubuntu Touch 20.04. One may find `Ubuntu's guide on this topic <https://wiki.ubuntu.com/SystemdForUpstartUsers#Job_vs._unit_keywords>` useful.

Alternatively, instead of writing custom Systemd units, use ``devicehack`` script which will run on every boot after the Android container runs. The path is ``/usr/libexec/lxc-android-config/device-hacks``, and the script will be run with ``/bin/sh``.

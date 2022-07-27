.. _Overlay:

Overlay file method
===================

Overview
--------

The UBports root filesystem image provides a set of default configuration files for a number of features such as display scaling, sound, bluetooth and more. These files may not be tailored to the device-specific features of the porting target and may therefore have to be adjusted. Furthermore, it may be also be necessary to add additional configuration files as well as scripts for specific needs. Overlay files provide a solution for replacing existing or adding new files to the file system.

The way how overlay files are implemented and their limitations vary across build methods and different versions of Ubuntu Touch. Use of the halium-install script to install a build based on the downloaded GSI and root filesystem image precludes the use of overlay files since it does not provide a mechanism for that.

In general, there are two methods of implementing overlay files, one is to directly copy them to the destination path potentially overwriting existing files, the other is to place them in a designated base directory from where they are then mounted onto their destination path during the boot process. The former is only possible when doing builds using the GitLab CI scripts. In case of Ubuntu Touch 16.04 it is the only available overlay mechanism. While the ``system.img`` build process allows overwriting files on the built Android system partition it has no means of doing so on the root filesystem. Ubuntu Touch 16.04 does however offer limited support of mount-based overlay files. Starting from Ubuntu Touch 20.04, the implementation of mount-based overlay files has become more powerful in terms of overlaying both files and directories in vendor and Android images regardless of the build method. The use of mount-based overlay files is generally preferable as it allows for delta OTA updates. Both mechanisms will be discussed in detail below before describing how overlay files are included into the build process in full system image builds and builds based on GitLab CI scripts.

.. Note::

    Some ports of Ubuntu Touch 16.04 using the GitLab CI-based build method add custom scripts or configuration files (e.g. in ``/usr/sbin/mount-android.sh``, ``/etc/init/mount-android.conf``, or a file in ``/etc/init/``) in order to overlay files below ``/android/system`` which would otherwise not be possible using this build method. This practice is strongly discouraged for a several reasons:

    - overwriting a system script prevents the port from receiving future updates of that script
    - different ports coming up with custom solutions creates confusion among new porters and contributors

    Porters which are in need of overlaying files inside a GSI-based ``/android/system.img`` may want to consider using the full ``system.img`` build method instead.

The implementations and limitations can be summarized as follows:

+---------------------------+-------------------------------------------------+--------------------------------------------------------------------------------+
| Build method              | Ubuntu Touch 16.04                              | Ubuntu Touch 20.04                                                             |
+===========================+=================================================+================================================================================+
| full ``system.img`` build | - add/overwrite files below ``/android/system`` | - add/overwrite files below ``/android/system``                                |
|                           | - overlay existing files on the root filesystem | - overlay existing files on the root filesystem, android and vendor filesystem |
|                           | - no new files on the root filesystem           | - new files and directories via merged or replaced overlay directories         |
+---------------------------+-------------------------------------------------+--------------------------------------------------------------------------------+
| GitLab CI-based build     | - add/overwrite files on the root file system   | - add/overwrite files on the root file system (use overlays instead)           |
|                           |                                                 | - overlay mounts for existing files on the root, android and vendor filesystem |
|                           |                                                 | - new files and directories via merged or replaced overlay directories         |
+---------------------------+-------------------------------------------------+--------------------------------------------------------------------------------+

How mount-based overlay files work
----------------------------------

Ubuntu Touch 16.04
^^^^^^^^^^^^^^^^^^

Ubuntu Touch 16.04 only offers mount-based overlay files in case of full ``system.img``-based builds with the limitation that the overlayed files must actually exist on the root filesystem partition, adding new files is not possible.

Overlay files need to be placed on the android system partition below the designated base directory which is mounted at ``/android/system/halium`` on the device. The directory tree with overlay files below that base directory mirrors the structure of the root filesystem, that is the destination path of an overlay file on the root filesystem is derived from its location relative to the base directory. For example, in order to overlay the udev rules file ``/lib/udev/rules.d/70-android.rules`` created in the last step it needs to exist in the directory ``/android/system/halium/lib/udev/rules.d/``. The specifics on how an overlay file can be placed there by the build system will be described below.

Ubuntu Touch 20.04 and later
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ubuntu Touch 20.04 and later provide a much more flexible implementation which is available both to full ``system.img``-based builds as well as GitLab CI script-based builds. It not only allows overlaying individual files but also replacing or merging existing directories without actually modifying the underlying filesystem.  Furthermore, it is not restricted to the Ubuntu Touch root partition but can also overlay files and directories in vendor and Android partitions.

Depending on the build method the designated base directory is either ``/opt/halium-overlay`` or ``/android/system/halium`` on the device. The directory tree below the base directory mirrors the root filesystem and destination paths are derived based on the relative location of a directory or file to the base directory.  Note that the files or directories under the destination path must neither be writable nor mount points themselves.  The overlay directory tree will be traversed in depth-first order during boot according to the following rules:

- If a subdirectory contains a special file named ``.halium-override-dir`` that directory will replace the destination directory tree, i.e. the contents of the underlying directory and its descendants will no longer be accessible.

- If a subdirectory contains a special file named ``.halium-overlay-dir`` it will be merged with with the destination directory.  Any file in the underlying directory or descendants thereof remain accessible if no file with the same destination path exists in the overlaying directory tree.  Files and whole directories which only exist in the overlay are made accessible in their respective destination paths.  This is implemented using the overlayfs filesystem (see the `overlayfs documentation <https://www.kernel.org/doc/html/latest/filesystems/overlayfs.html>`_ for the technical details).

- Files in directories containing none of the above special files are bind-mounted over files with an absolute path derived by stripping the above prefix. Subdirectories will be further traversed and evaluated according to the outlined rules.

The specifics on how an overlay file or directory can be placed there depends on the used build system and will be described below.

Example
"""""""

Contents of ``overlay/system/halium``::

    overlay
    └── system
        └── halium
            └── etc
                ├── foo
                │   ├── .halium-overlay-dir
                │   ├── conf.d
                │   │   ├── 50-drivers.conf
                │   │   └── 90-local.conf
                │   └── foo.conf
                ├── bar
                │   ├── .halium-override-dir
                │   └── bar.conf
                └── bazrc

Contents of the underlying filesystem image::

    /etc
    ├── foo
    │   ├── conf.d
    │   │   ├── 10-global.conf
    │   │   ├── 20-system.conf
    │   │   └── 90-local.conf
    │   └── foo.conf
    ├── bar
    │   ├── bar.conf
    │   └── baz.conf
    └── bazrc

The resulting combined filesystem the looks as follows::

    /etc
    ├── foo
    │   ├── .halium-overlay-dir
    │   ├── conf.d
    │   │   ├── 10-global.conf
    │   │   ├── 20-system.conf
    │   │   ├── 50-drivers.conf (added)
    │   │   └── 90-local.conf   (replaced)
    │   └── foo.conf (replaced)
    ├── bar (replaced)
    │   ├── .halium-override-dir
    │   └── bar.conf
    └── bazrc (replaced)

The directory ``/etc/foo`` has been merged, whereas the ``/etc/bar`` directory and the file ``/etc/bazrc`` have been replaced.

.. _Overlay-steps:

Overlay files in full system.img builds
---------------------------------------

In the case of full ``system.img``-based builds all supported Halium versions allow for copying overlay files to the Android system filesystem image during the build process by adding entries to the ``PRODUCT_COPY_FILES`` macro. Each entry consists of the source and destination path of a file, seperated by a “``:``”. As a matter of convention, all overlay files should be placed in a directory ``ubuntu`` below the root path of the repository. This directory can be referred to as ``$(LOCAL_PATH)/ubuntu``. The destination directory should be specified relative to its default mountpoint ``/android/system`` referred to as ``$(TARGET_COPY_OUT_SYSTEM)``.

It is thus only possible to add or overwrite files below ``/android/system``. In order to make use of mount-based overlay files they should be placed below the designated base directory ``/android/system/halium`` as described above. Due to the limitations in Ubuntu 16.04 it is only possible to add new files via overlay or override directories available in Ubuntu 20.04 or later.

Example
^^^^^^^

Typically at least the file ``/lib/udev/rules.d/70-android.rules`` created when bringing up Lomiri (see :ref:`Lomiri`) and the file ``/etc/ubuntu-touch-session.d/android.conf`` for configuring display scaling need to be added via overlay files. The bind mount mechanism of both Ubuntu Touch 16.04 and 20.04 requires that the files are placed below the designated base directory ``/android/system/halium``, that is at ``/android/system/halium/lib/udev/rules.d/70-android.rules`` and ``/android/system/halium/etc/ubuntu-touch-session.d/android.conf``

Both ``70-android.rules`` and ``android.conf`` should be placed in the subdirectory ``ubuntu`` of the repository and the following lines need to be added to ``device.mk`` in order to copy them onto the generated image::

    ### Ubuntu Touch ###
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ubuntu/70-android.rules:$(TARGET_COPY_OUT_SYSTEM)/halium/lib/udev/rules.d/70-android.rules \
        $(LOCAL_PATH)/ubuntu/android.conf:$(TARGET_COPY_OUT_SYSTEM)/halium/etc/ubuntu-touch-session.d/android.conf
    ### End Ubuntu Touch ###

.. _Rebuild-system.img:

Rebuilding system.img
^^^^^^^^^^^^^^^^^^^^^

After any changes the ``system.img`` needs to be rebuilt using ``mka clean`` and ``mka systemimage``. When repeatedly rebuilding the system image after small changes, it is possible to do incremental builds without issuing a ``mka clean`` first. However, changes to PRODUCT_PROPERTY_OVERRIDES might not get detected by the build system. In that case the file ``build.prop`` in the directory ``BUILDDIR/out/target/product/CODENAME/system`` should be removed manually before rebuilding.

After a successful build, the resulting ``system.img`` must reflashed together with the UBports root filesystem. On boot files and – in case of Ubuntu Touch 20.04 or later – marked directories in ``/android/system/halium`` will be mounted onto their final locations which are derived from their path relative to the designated base directory.

Overlay files in Gitlab CI script-based builds
----------------------------------------------

When using Gitlab CI script-based builds (see :ref:`Gitlab-CI`) overlay files and directories have to be placed in in the repository below ``overlay/system`` in a directory tree mirroring the structure of the root filesystem. Note that any overlay file placed in that directory tree will overwrite an existing file on the root filesystem. While Ubuntu Touch 16.04 only allows overlaying files by overwriting them, in case of Ubuntu Touch 20.04 or later versions the mount-based overlay files should be used instead. Thus overlay files and directories should be placed in a directory tree below ``overlay/system/opt/halium-overlay`` in the repository rather than directly below ``overlay/system``. 

Example
^^^^^^^

Following the above example on Ubuntu Touch 20.04, adding the overlay files ``/lib/udev/rules.d/70-android.rules`` and ``/etc/ubuntu-touch-session.d/android.conf`` requires them to end up below ``/opt/halium-overlay`` on the resulting filesystem, that is as ``/opt/halium-overlay/lib/udev/rules.d/70-android.rules`` and ``/opt/halium-overlay/etc/ubuntu-touch-session.d/android.conf``. This is achieved by placing them at ``overlay/system/opt/halium-overlay/lib/udev/rules.d/70-android.rules`` and ``overlay/system/opt/halium-overlay/etc/ubuntu-touch-session.d/android.conf`` in the repository.

In case of Ubuntu Touch 16.04 the files on the root filesystem need to be overwritten due to the lack of mount-based overlay files and must thus be placed at ``overlay/system/lib/udev/rules.d/70-android.rules`` and ``overlay/system/etc/ubuntu-touch-session.d/android.conf`` in the repository.

Building on GitLab CI
^^^^^^^^^^^^^^^^^^^^^

After adding or modifying overlay files the Gitlab CI scripts need to be run according to `the instructions included <https://gitlab.com/ubports/community-ports/android9/xiaomi-redmi-note-7-pro/xiaomi-violet/-/blob/master/README.md>`_. On boot files and – in case of Ubuntu Touch 20.04 or later – marked directories in ``/opt/halium-overlay`` will be mounted onto their final locations which are derived from their path relative to the designated base directory.

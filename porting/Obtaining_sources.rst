Obtaining the necessary sources
===============================

The sources necessary for the build depend on the method you have chosen. Methods 1 and 2 require the full Halium sources as opposed to method 3 which only requires building the kernel.

Initializing and downloading the Halium source
----------------------------------------------

.. Tip::
    Applies to:
        * Method 1
        * Method 2

        (See :ref:`porting methods <Porting-methods>`.)

Create a directory for your Halium source tree::   

    mkdir halium && cd halium

This directory will be referred to as BUILDDIR throughout the remainder of this guide.

First, initialize your source to the correct version of Halium, depending on your device. If in doubt, refer to :ref:`Android-and-Halium-versions`.

For Halium 9.0::

    repo init -u https://github.com/Halium/android -b halium-9.0 --depth=1

For Halium-7.1::

    repo init -u https://github.com/Halium/android -b halium-7.1 --depth=1

With the Halium tree initialized you are ready to download the code by issuing the command::

    repo sync -c -j 16

The download will take some time as it counts several gigabytes. If you have a fast internet connection, you may set an extra JOBS=[number] environment variable at the beginning of the command to open more parallel downloading jobs. Generally, 12 is recommended, which is the default. When it completes, your BUILDDIR will contain a copy of the Halium source tree, but important parts are still missing. 

Adding your device-specific source
----------------------------------

The next step is to add the device-specific sources that need to be integrated into the source tree before you can attempt to build. The missing sources are those required to build the kernel as well as a host of other hardware-specific components of the port.

The necessary sources need to be located and specified by creating a device manifest file (or editing an existing one) in the directory BUILDDIR/halium/devices/manifests. 

.. NOTE: 
    A correct device manifest is crucial to the success of your port.

Locating the sources
^^^^^^^^^^^^^^^^^^^^

Locate your device repository on `LineageOS’s GitHub organization <https://github.com/LineageOS>`_. This is done by typing your device’s codename into the search box. The device repository follows the naming convention: android_device_[manufacturer]_[device]. Make a note of this name.

Open the device repository on Github. It will contain a lineage.dependencies (or cm.dependencies) file which specifies all other repositories that your device is reliant upon.

.. 
    During the course of the porting process you will need to make modifications to the device repository as well as one or more of the others specified in lineage.dependencies (or cm.dependencies). It is therefore adviseable to create a Github account and save your own copy of these by forking them to your account.

Creating the device manifest file
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Now create (or edit) the file BUILDDIR/halium/devices/manifests/[manufacturer]_[device].xml. (The description below presupposes that you are creating the file from scratch.)

Paste the following into the file::

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>

    </manifest>

The device repository
"""""""""""""""""""""

Your sources must now be entered into the manifest. Start with your device repository. Between the <manifest> and </manifest> tags, create the line below, making sure to replace the information inside the square brackets with your own::

    <project path="device/[manufacturer]/[device]" name="[repository name]" remote="[remote]" revision="[revision]" />

'path' specifies the target path (subdirectory of your BUILDDIR) where the source code from repository 'name', which is found at 'remote', will be placed. The repository may contain a number of branches and it is important to secure the correct branch with 'revision='

.. NOTE:
    The revision attribute may be omitted if the default revision for this remote is the one that you wish to use.

If you are unsure of your remote, refer to :ref:`Remotes`.

Dependencies
""""""""""""

Now create more lines like the previous one, using the lineage.dependencies (or cm.dependencies) file you found earlier in your device repository. This file lists all the remaining repositories needed to build for your selected device. Create one line for each entry in this file, using the following template::

    <project path="[target_path]" name="[repository]" remote="[remote]" revision="[revision]" />

The target path is found in the repository’s name. The preceding “android” or “proprietary” is omitted and underscores are replaced with slashes. For example, android_device_lge_bullhead goes in device/lge/bullhead.

Vendor blobs
""""""""""""

Vendor blobs go in the vendor/ folder of your BUILDDIR. 

The first place to search for your device’s vendor blobs is in `'TheMuppets' GitHub organization <https://github.com/TheMuppets>`_. Enter your device’s codename into the search field and see if you get a match. If you are unable to find your device in TheMuppets, you will need to search elsewhere.

It may also be possible to extract the vendor blobs from the device itself by following instructions for your device on `the LineageOS wiki <https://wiki.lineageos.org/>`_ as applicable.

.. _Remotes:

Remotes
"""""""

A remote entry specifies the name, location (fetch) prefix, code review server, and default revision (branch/tag) for the source.

You can create a remote by adding a remote tag to your manifest::

    <remote  name="aosp"
        fetch="https://android.googlesource.com"
        review="android-review.googlesource.com"
        revision="refs/tags/android-7.1.1_r25" />

Only the name, fetch, and revision attributes are required. The review attribute specifies a Gerrit Code Review server, which probably won’t be useful for initial porting purposes.

For example, let’s say that you have a bunch of repositories at https://github.com/SomeUserName/ and your desired branch name is cm-14.1 in each. You would create a remote as follows and place it into your local manifest::

    <remote name="sun"
        fetch="https://github.com/SomeUserName"
        revision="cm-14.1" />

There are also some remotes available to you by default, though they differ between halium versions. The following tables will help you identify these. See more information on these remotes can be found at the top of the file BUILDDIR/halium/.repo/manifests/default.xml.

The following remotes are available by default in Halium-7.1::

    Remote Name	Remote Description, URL
    aosp	Android Open Source Project, https://android.googlesource.com
    los	    LineageOS, https://github.com/LineageOS
    hal	    Halium (link to GitHub root for legacy reasons), https://github.com
    them	TheMuppets, https://github.com/TheMuppets
    them2	TheMuppets (for some xiaomi vendor repos) https://gitlab.com/the-muppets

The following remotes are available by default in Halium 9.0::

    Remote Name	Remote Description, URL
    github  LineageOS, https://github.com/
    gitlab  Gitlab, ssh://git@gitlab.com
    aosp    Android Open Source Project, https://android.googlesource.com

If you do not specify a remote, aosp is assumed.

Sync
""""

With your manifest now complete, go to the root of your BUILDDIR and issue the following command (replace DEVICE with your device’s codename) to bring the device-specific source code into your source tree::

    ./halium/devices/setup DEVICE

This will first link your manifest from Halium devices to .repo/local_manifests/device.xml and then sync all repositories.

Document
""""""""

After completing the relevant steps above (according to your chosen :ref:`porting method <Porting-methods>`), create a pull request containing your device manifest on the Halium devices repository. Also, create a device page on the UBports page under devices. You should link the manifest on Halium devices in your UBports device page.

It is also a good idea to start a discussion on the `UBports Forum <https://forums.ubports.com/>`_ under Devices.


Setting up for a kernel only build
----------------------------------

*Work in progress*

.. Tip::
    Applies to:
        * Method 3

        (See :ref:`porting methods <Porting-methods>`.)
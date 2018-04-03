.. _userguide-advanceduse-switchchannel:
Switch release channels
=======================

What are release channels?
--------------------------

This document attempts to explain the different release channels used by the Ubuntu Touch project. It can become rapidly out of date, but we feel that this is acceptable compared to the confusion of explaining the channel rationale repeatedly.

You can find the channel that your device is currently using by running ``sudo system-image-cli -i`` from a terminal on the device.

The Current Channels
--------------------
15.04/stable
~~~~~~~~~~~~

This is the channel you should be on if you're unsure of which to pick. It's the slowest-moving and most vetted release channel. Actually this channel reached the OTA3 (Over The Air release 3), maybe the last before 16.04.

15.04/rc
~~~~~~~~

This channel is a good mix between stability and bleeding edge. We will promote builds to rc from devel when they are possible candidates for stable. This channel should not break, but we can't promise as stable as stable.

15.04/devel
~~~~~~~~~~~

This channel will break. If you're working on QA, this is the place to be. If you're trying to use your Ubuntu Touch device in your life, this is not the place to be.

Nightly builds from our CI server get pushed straight into 15.04/devel. When they are deemed as candidates for Stable (which only happens after we enter a feature freeze), they are moved to 15.04/rc

Again, we do not recommend 15.04/devel for everyday use.

Switching channels on your Ubuntu Touch device
----------------------------------------------

There are two ways to switch channels without losing data. They both involve having Developer Mode turned on and your device connected to your computer with adb.

system-image-cli (from your Ubuntu Touch device)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can run the following command from your computer using ``adb`` to change channels
::

$ sudo system-image-cli --switch [channel name]

where ``[channel name]`` is the full name of one of the current channels, for example 15.04/stable. This process will take a while and will not give any feedback while it's running. You can't run this command from the Ubuntu Touch terminal due to confinement.

System settings (from your Ubuntu Touch device)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Access to ``System Settings`` either from the menu bar and from App screen, then tap on ``Updates`` and on the botton you will find the ``Release channels`` section where you can choose among ``Stable``, ``Release candidate`` and ``Development``
.

You can either access to ``About ths device`` section in the Menu bar, then tap on ``Search for updates`` and you will reach the previously described screen where to switch to your ``Release channels``
.

ubuntu-device-flash (from PC)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can also (handily) use the ``ubuntu-device-flash`` utility to flash a different channel without losing data. It must be runned from a connected PC
::

$ sudo ubuntu-device-flash --server=http://system-image.ubports.com touch --channel=[channel name]

magic-device-tool (from PC)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

On a PC's terminal (rather than on MS-Windows or MacOSX systems where you can run a graphical beta version), you can run ``magic-device-tool`` as a snap: it is available from Marius Quabeck's `GitHub repository <https://github.com/MariusQuabeck/magic-device-tool>`_ 

16.04/devel
~~~~~~~~~~~

As 16.04 will be the future major release, there will be only a ``devel`` channel (untill its official release). Be aware that to switch to 16.04/devel can be very dangerous due to its unproven instability, that is why it will be discouraged for daily uses.
You can upgrade your system either by using ``ubuntu-device-flash`` command from PC's shell and from ``magic-device-tool``
.
In the first case, please, use the following ``--channel`` name option:

--channel=ubuntu-ubports/16.04/devel

You can also perform this switch from Marius Quabek's ``magic-device-tool``

Past Channels
-------------

These are the channels that existed at previous times, but are no longer released to.

Legacy
~~~~~~

This is what the 15.04 channel used to be. 15.04 and Legacy are the same builds with a different name. Naming this channel "Legacy" caused a lot of confusion in the community, which is why we moved to the 15.04 monicker.

If you try to flash the Legacy channel, you are automatically redirected to 15.04/stable.

devel_rc-proposed
~~~~~~~~~~~~~~~~~

This was the previous daily build channel for UBports, before Canonical Ltd. dropped the Ubuntu for Devices project. If you've updated your phone in the past couple of months, you have been redirected from this channel to 15.04/rc.


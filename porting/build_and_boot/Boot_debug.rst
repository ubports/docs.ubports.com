.. _Boot:

Booting
=======

In the previous section you completed the installation of Ubuntu Touch on your device. The next step is to boot the device and gain remote access.

What is a successful boot?
--------------------------

When you boot your build for the first time you will normally not get anything on the screen. This is not necessarily an indication of something gone wrong. Your system may well have booted successfully and this can be ascertained by gaining remote access.

If your system booted successfully, you will be able to connect to your device from your host using ssh and continue debugging and configuring from there. 

If something went wrong, you should normally be offered a telnet connection through which you can proceed with debugging. If you don't get either of these, the problem might be more difficult to determine. In either of these cases you should seek help, as explained below.

Gaining remote access
---------------------

When your device boots it will likely stay at the bootloader screen. However, you should also get a new network connection on the computer you have it plugged in to. To determine if this is the case, and what type of connection you have been offered, proceed as described below.

To confirm that your device has booted correctly, on your host computer, run dmesg -w and watch for “GNU/Linux device” in the output. This confirms that you can establish an ssh connection to the device (see below). If you instead get something similar to “Halium initrd Failed to boot”, please :ref:`seek help <Getting-community-help>` to find out why. 

Establish an ssh connection to your device as follows:

Your computer should now have a newly connected RNDIS interface. Check the output of ``ip link show`` for the device name. The <devicename> will most likely resemble ``enp0s29u1u1``. Assign this device a fake MAC address (if the default one is all 00s) and an IP of 10.15.19.100::

   ip link set <devicename> address 02:11:22:33:44:55
   ip address add 10.15.19.100/24 dev <devicename>
   ip link set <devicename> up

Once finished, you should be able to login with the following::

   ssh phablet@10.15.19.82

The password will be the one you set when you ran the halium-install script.

Known problems and how to deal with them
----------------------------------------
Reverse tethering
=================

This tutorial explains how you get your Ubuntu Touch device online using a USB cable and a computer with internet access.
This is useful if there is no available Wi-Fi connection or you don't have a data subscription on your device.

Steps
-----

#. Prepare your device (Ubuntu Touch) and your computer:

   - Connect your computer to the internet.
   - Attach your device to your computer via USB.

#. On the *device*:

   - Run: ``gdbus call --system --dest com.meego.usb_moded --object-path /com/meego/usb_moded --method com.meego.usb_moded.set_mode rndis_adb``
   - Turn off Wifi and Data to avoid the gateways from clashing
   - Bring your tethering connection down: Run ``nmcli connection down tethering``
   - Modify your tethering connection: Run ``nmcli connection modify tethering ipv4.method auto``

#. On your *computer*: 

   - Get your RNDIS IP address:

     - Run: ``ip a``
     - Look for an interface with an ip address that looks like `10.42.0.x` in the output:
       ::

         5: enx122626d0fe26: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
            link/ether 12:26:26:d0:fe:26 brd ff:ff:ff:ff:ff:ff
            inet 10.42.0.98/24 brd 10.42.0.255 scope global dynamic noprefixroute enx122626d0fe26
               valid_lft 3496sec preferred_lft 3496sec
            inet6 fe80::5878:3a14:c380:f458/64 scope link noprefixroute
               valid_lft forever preferred_lft forever

       - Your interface name is: ``enx122626d0fe26``
       - Run: ``nmcli connection show``
       - Look for a connection with the interface name you found in the output:
         ::
           NAME                UUID                                  TYPE      DEVICE
           Wired connection 1  a2ab069f-ff15-398f-ac42-94c80cddeecb  ethernet  enp0s31f6
           Wired connection 2  711ca903-d557-3f61-a8f6-6a2bb0aa037c  ethernet  enx122626d0fe26
           lo                  a0692fbf-1219-4629-9eec-6c93d8462d5f  loopback  lo
           FP4                 412164a9-77d0-4d07-937f-e641de068309  wifi      --
       - Your connection name is ``Wired connection 2``
       - Run: ``nmcli connection down Wired\ connection\ 2``
       - Run: ``nmcli connection modify Wired\ connection\ 2 ipv4.method shared``
       - Run: ``nmcli connection up Wired\ connection\ 2``

#. On the *device*:

   - Bring your tethering connection back up: Run ``nmcli connection up tethering``
   - Open Morph Browser and test your internet connection!

#. If it's not working yet, on your *computer*:

   - Turn on IP forwarding: ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward``
   - Apply Forwarding iptables Rule: ``sudo iptables -P FORWARD ACCEPT``

References
----------

- `Ask Ubuntu`_
- RidgeRun_
- `Fedora Magazine`_

.. _Ask Ubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates
.. _RidgeRun: https://developer.ridgerun.com/wiki/index.php/How_to_use_USB_device_networking
.. _Fedora Magazine: https://fedoramagazine.org/internet-connection-sharing-networkmanager/

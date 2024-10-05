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

   - Get your interface name: Run ``ip route show to default via 10.42.0.1``
     ::

       default dev enx122626d0fe26 proto dhcp src 10.42.0.118 metric 101

   - Your interface name is: ``enx122626d0fe26``
   - Get your connection name: Run ``nmcli device show enx122626d0fe26``
   - Look for a connection with the interface name you found in the output:
     ::

       GENERAL.DEVICE:                         enx122626d0fe26
       GENERAL.TYPE:                           ethernet
       GENERAL.HWADDR:                         FA:F7:F5:D9:4C:9E
       GENERAL.MTU:                            1500
       GENERAL.STATE:                          100 (connected)
       GENERAL.CONNECTION:                     Wired connection 2
       GENERAL.CON-PATH:                       /org/freedesktop/NetworkManager/ActiveConnection/12
       WIRED-PROPERTIES.CARRIER:               on
       IP4.ADDRESS[1]:                         10.42.0.118/24
       IP4.GATEWAY:                            10.42.0.1
       IP4.ROUTE[1]:                           dst = 10.42.0.0/24, nh = 0.0.0.0, mt = 101
       IP4.ROUTE[2]:                           dst = 0.0.0.0/0, nh = 10.42.0.1, mt = 101
       IP4.DNS[1]:                             10.42.0.1
       IP6.ADDRESS[1]:                         fe80::692:2a1:8127:91a1/64
       IP6.GATEWAY:                            --
       IP6.ROUTE[1]:                           dst = fe80::/64, nh = ::, mt = 1024

   - Your connection name is ``Wired connection 2``
   - Bring the connection down: Run ``nmcli connection down Wired\ connection\ 2``
   - Change the ipv4 method to ``shared``: Run ``nmcli connection modify Wired\ connection\ 2 ipv4.method shared``
   - Bring the connection back up: Run ``nmcli connection up Wired\ connection\ 2``

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

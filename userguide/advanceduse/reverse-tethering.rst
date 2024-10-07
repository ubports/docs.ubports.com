Reverse tethering
=================

This tutorial explains how you get your Ubuntu Touch device online using a USB cable and a computer with internet access.
This is useful if there is no available Wi-Fi connection or you don't have a data subscription on your device.

Steps to Set Up Reverse Tethering
---------------------------------

#. Prepare your device (Ubuntu Touch) and your computer:

   - Connect your computer to the internet.
   - Attach your device to your computer via USB.

#. On the *device*:

   - Turn off Wifi and Data to avoid the gateways from clashing
   - Set your device usb in tethering mode: ``gdbus call --system --dest com.meego.usb_moded --object-path /com/meego/usb_moded --method com.meego.usb_moded.set_mode rndis_adb``
   - Bring your tethering connection down: ``sudo nmcli connection down tethering``
   - Modify your tethering connection: ``sudo nmcli connection modify tethering ipv4.method auto``

#. On your *computer*: 

   - Get your interface name: ``ip route show to default via 10.42.0.1``
     ::

       default dev enx122626d0fe26 proto dhcp src 10.42.0.118 metric 101

   - Your interface name is: ``enx122626d0fe26``
   - Get your connection name: ``nmcli --field GENERAL.CONNECTION device show enx122626d0fe26``
     ::

       GENERAL.CONNECTION:                     Wired connection 2

   - Your connection name is ``Wired connection 2``
   - Bring the connection down: ``nmcli connection down "Wired connection 2"``
   - Change the ipv4 method to ``shared``: ``nmcli connection modify "Wired connection 2" ipv4.method shared``
   - Bring the connection back up: ``nmcli connection up "Wired connection 2"``

#. On the *device*:

   - Bring your tethering connection back up: ``sudo nmcli connection up tethering``
   - Open Morph Browser and test your internet connection!


Troubleshooting
---------------

If the above steps don't give you working internet connection on your phone the try these steps on your *computer*:

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

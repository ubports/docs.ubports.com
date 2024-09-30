Reverse tethering
=================

This tutorial explains how you get your Ubuntu Touch device online using a USB cable and a computer with internet access.
This is useful if there is no available Wi-Fi connection or you don't have a data subscription on your device.

Steps
-----

#. Prepare your device (Ubuntu Touch) and your computer:

   - Turn `Developer Mode` on in Ubuntu Touch.
   - Connect your computer to the internet.
   - Attach your device to your computer via USB.

#. On the *device*:

   - Run: ``gdbus call --system --dest com.meego.usb_moded --object-path /com/meego/usb_moded --method com.meego.usb_moded.set_mode rndis_adb``

#. On your *computer*: 

   - Get your RNDIS IP address:

     - Run: ``ip a``
     - Look for an interface named ``usb0`` in the output:

       ::

         5: usb0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
            link/ether 12:34:56:ab:cd:ef brd ff:ff:ff:ff:ff:ff
            inet 10.42.0.149/24 brd 10.42.0.255 scope global noprefixroute usb0
              valid_lft forever preferred_lft forever

       - Your IP is: ``10.42.0.149``

#. On the *device*:

   - Turn off Wifi and Data to avoid the gateways from clashing
   - Get your RNDIS interface: Run ``ip a``

     ::

       31: usb0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
           link/ether 12:34:56:ab:cd:ef brd ff:ff:ff:ff:ff:ff
           inet 10.42.0.1/8 brd 10.255.255.255 scope global rndis0
             valid_lft forever preferred_lft forever

     - Your interface is: ``usb0``

   - Add your computer as default gateway: ``sudo route add default gw 10.42.0.149``
   - Add a nameserver of your choice: ``echo "nameserver 1.1.1.1" | sudo tee -a /etc/resolv.conf``
   - Open Morph Browser and test your internet connection!

#. If it's not working yet, on your *computer*:

   - Turn on IP forwarding: ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward``
   - Apply Forwarding iptables Rule: ``sudo iptables -P FORWARD ACCEPT``
   - Apply NAT rule: ``sudo iptables -t nat -A POSTROUTING -s 10.42.0.0/24 -j MASQUERADE``

   - NOTE: These steps are usually performed automatically by the NetworkManager on Ubuntu 22.04.

Known Issues
------------

- The Updates page in the System Settings displays: ``Connect to the Internet to check for updates.``
- After a while Teleports looses its internet connection and must be restarted.
  
References
----------

- `Ask Ubuntu`_
- RidgeRun_

.. _Ask Ubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates
.. _RidgeRun: https://developer.ridgerun.com/wiki/index.php/How_to_use_USB_device_networking

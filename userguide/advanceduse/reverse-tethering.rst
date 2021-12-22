Reverse tethering
=================

This tutorial helps you to connect your Ubuntu Touch device to your computer to access the Internet on it.
This is useful if there is no available Wi-Fi connection or you don't have a data subscription on your Ubuntu Touch device.

Prerequisite: A Ubuntu Touch device with "Developer mode" on, attached via USB to the computer connected to the Internet.

Steps
-----

1. On the Ubuntu Touch device: ``android-gadget-service enable rndis``

2. On your computer: get your RNDIS IP address e.g:``hostname -I``

3. On the Ubuntu Touch device: 

      add a gateway: ``sudo route add default gw YOUR_COMPUTER_RNDIS_IP``

      add nameservers: ``echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf``

      refresh the DNS table: ``resolvconf -u``

4. On computer: 

      Turn on IP forwarding: ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward``

      Apply NAT: ``sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth0 -j MASQUERADE``
  

References
----------

* Ask Ubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates

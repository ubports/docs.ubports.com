Reverse tethering
=================

Some users may don't have an available wifi connection for their phone nor a data subscription from their mobile provider.
This short tutorial will help you to connect your Ubuntu Touch to your computer to access internet.

Prerequisite: Phone is connected to the computer with usb and developer mode enabled.

Steps
-----

1. On phone: ``android-gadget-service enable rndis``

2. On computer: get your rndis ip address e.g:``hostname -I``

3. On phone: 

      add gateway: ``sudo route add default gw YOUR_COMPUTER_RNDIS_IP``

      add nameservers: ``echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf``

      refresh dns table: ``resolvconf -u``

4. On computer: 

      enable ip forwarding: ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward``

      apply NAT: ``sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth0 -j MASQUERADE``
  

References
----------

* askubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates

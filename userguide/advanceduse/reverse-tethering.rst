Reverse tethering
=================

Some users may don't have an available wifi connection for their phone nor a data subscription from their mobile provider.
This short tutorial will help you to connect your Ubuntu Touch to your computer to access internet.

Steps:
------

1 - on phone: ``android-gadget-service enable rndis``

2 - on computer: get your rndis ip address e.g:``hostname -I``

3 - on phone: ``sudo route add default gw YOUR_COMPUTER_RNDIS_IP``

4 - on phone:

  add nameservers ``echo nameserver 8.8.8.8 > /etc/resolvconf/conf.d/tail``
  
  refresh dns table ``resolvconf -u``

5 - on computer: 

  enable ip forwarding ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward``
  
  apply NAT ``sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth0 -j MASQUERADE``
  

References
----------

* askubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates

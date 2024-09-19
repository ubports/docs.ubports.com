Shell access via SSH
====================

You can use SSH to access a shell from your PC. This is useful for debugging or more advanced shell usage. 

You need a SSH key-pair for this. Logging in via password is disabled by default.

Create your public key
----------------------

If not already created, create your public key. Default choices should be fine for LAN. You can leave empty password if you don't want to deal with it each time::

    ssh-keygen

Copy the public key to your device
----------------------------------

You need then to transfer your public key to your device. There are multiple ways to do this. These are a few options:

* Connect the UBports device and the PC with a USB cable. Then copy the file using your file-manager.
* Or, transfer the key via the Internet by e-mailing it to yourself, or uploading it to your own cloud storage, web-server, etc. 
* You can also connect via :doc:`adb <adb>` and use the following command to copy it (Some devices cant support ADB, check the devices page to learn more.)::

    adb push ~/.ssh/id_rsa.pub /home/phablet/

Configure your device
---------------------

Now you have the public key on the UBports device. 
Let's assume it's stored as ``/home/phablet/id_rsa.pub``. Use the terminal app or an ADB connection to perform the following steps on your device. ::

    mkdir /home/phablet/.ssh
    chmod 700 /home/phablet/.ssh
    cat /home/phablet/id_rsa.pub >> /home/phablet/.ssh/authorized_keys
    chmod 600 /home/phablet/.ssh/authorized_keys 
    chown -R phablet:phablet /home/phablet/.ssh

Now start the SSH server::

    sudo systemctl start ssh.socket


Connect
-------

Now everything is set up and you can use ``ssh`` ::

    ssh phablet@ubuntu-phablet
    
or, if that does not work ::    

    ssh phablet@<ip-address>
    
To identify the IP-address of your UBports device, open the Terminal app on your device and run the following command::
    
    hostname -I
    
The output is a list of IP addresses separated by spaces. Use the IP address that matches your subnet.
On your PC or laptop: ::

    debian2:~/$ hostname -I
    192.168.42.41 2001:982:89e9:1:bc6b:758:7ba2:c190
    
On the phone: ::

    phablet@ubuntu-phablet:~$ hostname -I
    10.55.74.177 192.168.42.52 2001:982:89e9:1:ef68:5f7c:3db4:c0d3

In this case you use the second IP address    

Of course you can now also use ``scp`` or ``sshfs`` to transfer files.

Configuration
-------------

you can enable ssh on boot by running the following command::
    
    sudo systemctl enable ssh.socket

you can edit the port ssh is listening on with the following command::
    
    sudo systemctl edit ssh.socket

then add the following text::

    [Socket]
    ListenStream=
    ListenStream=[customPort]

References
----------

* `askubuntu.com: How can I access my Ubuntu phone over SSH? <https://askubuntu.com/questions/348714/how-can-i-access-my-ubuntu-phone-over-ssh/599041#599041>`_
* `gurucubano: BQ Aquaris E 4.5 Ubuntu phone: How to get SSH access to the Ubuntu phone via Wi-Fi <https://gurucubano.gitbooks.io/bq-aquaris-e-4-5-ubuntu-phone/content/en/chapter1.html>`_

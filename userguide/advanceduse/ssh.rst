Shell access via ssh
====================

You can use ssh to access a shell from your PC. This is useful for debugging or more advanced shell usage. 

You need a ssh key pair for this. Logging in via password is disabled by default.

Create your public key
----------------------

If not already created, create your public key, default choices should be fine for LAN, you can leave empty password if you don't want to deal with it each time::

    ssh-keygen

Copy the public key to your device
----------------------------------

You need then to transfer your public key to your device. There are multiple ways to do this. For example:

* Connect the ubports device and the PC with a USB cable. Then copy the file using your filemanager.
* Or transfer the key via the internet by mailing it to yourself, or uploading it to your own cloud storage, or webserver, etc. 
* You can also connect via :doc:`adb <adb>` and use the following command to copy it::

    adb push ~/.ssh/id_rsa.pub /home/phablet/

Configure your device
---------------------

Now you have the public key on the UBports device. 
Let's assume it's stored as ``/home/phablet/id_rsa.pub``. Use the terminal app or and adb connection to perform the following steps on your phone. ::

    mkdir /home/phablet/.ssh
    chmod 700 /home/phablet/.ssh
    cat /home/phablet/id_rsa.pub >> /home/phablet/.ssh/authorized_keys
    chmod 600 /home/phablet/.ssh/authorized_keys 
    chown -R phablet.phablet /home/phablet/.ssh

Now start the ssh server::

    sudo service ssh start

To make sure the ssh server is automatically started in the future, execute::

    sudo setprop persist.service.ssh true

Connect
-------

Now everything is set up and you can use ``ssh`` ::

    ssh phablet@<ip-address>

Of course you can now also use ``scp`` or ``sshfs`` to transfer files.

References
----------

* `askubuntu.com: How can I access my Ubuntu phone over ssh? <https://askubuntu.com/questions/348714/how-can-i-access-my-ubuntu-phone-over-ssh/599041#599041>`_
* `gurucubano: BQ Aquaris E 4.5 Ubuntu phone: How to get SSH access to the ubuntu-phone via Wifi <https://gurucubano.gitbooks.io/bq-aquaris-e-4-5-ubuntu-phone/content/en/chapter1.html>`_

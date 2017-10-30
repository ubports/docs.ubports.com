Setting up clickable
====================

This guide assumes you are using Ubuntu 16.04 on your development
machine. Other host systems might work just fine as well. If you cannot set up Clickable as described here you might want to try the alternative instructions to setup clickable :ref:`inside an LXD container <clickable-inside-lxd>`, or check out the `Clickable website <https://github.com/bhdouglass/clickable>`__ for further alternatives like snap.

Prerequisites
-------------

Ubuntu 16.04

::

    sudo apt-get install lxd android-tools-adb
    sudo lxd init

If you have the Ubuntu SDK IDE installed, you will already have the necessary prerequisites. If you don't already have the IDE installed you will need to install adb and lxd. After installing lxd you will need to run ``lxd init`` to get everything setup with lxd.

.. topic:: Troubleshooting

    If you get an error when running the ``lxd`` command, check if your user is in the lxd group. If you are not in the lxd group you can add yourself like this:

    ``sudo usermod -a -G lxd username``

    You might have to log out and log back in afterwards for this to take effect.

    Another common issue could be to not have the lxd daemon running; if so just run: ``sudo systemctl start lxd.service``

Install
-------

::

    cd ~
    git clone https://github.com/bhdouglass/clickable.git
    echo "export PATH=\$PATH:~/clickable" >> ~/.bashrc
    . ~/.bashrc
    clickable setup-lxd

First app
---------

Now you are set up to build and run your first app:

::

    git clone https://github.com/bhdouglass/ut-app-template
    cd ut-app-template/
    clickable

This should build and start an app on your Ubuntu Touch device
displaying "Hello World!"

Look `here <https://github.com/bhdouglass/clickable#usage>`__ for
further instructions.

        
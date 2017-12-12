Setting up clickable
====================

`Clickable <https://github.com/bhdouglass/clickable>`__ is a meta-build system for Ubuntu Touch applications that allows you to compile and build click packages in a docker container. Setting up clickable is simple and makes app development fast and easy!

Prerequisites
-------------

::

    sudo apt-get install android-tools-adb python docker.io
    sudo usermod -a -G docker $USER

You might have to reboot for all changes to take effect.

Install
-------

Installing from the git repository will work for all modern GNU/Linux distributions.

::

    cd ~
    git clone https://github.com/bhdouglass/clickable.git
    echo "export PATH=\$PATH:~/clickable" >> ~/.bashrc
    source ~/.bashrc
    clickable setup-lxd

On Ubuntu 16.04 you can also install clickable from a ppa instead:

::

    sudo add-apt-repository ppa:bhdouglass/clickable
    sudo apt-get update
    sudo apt-get install clickable

First app
---------

Now you are set up to build your first app! Activate the developer mode on your device and connect it to your PC to run your app directly on the device:

::

    git clone https://github.com/bhdouglass/ut-app-template
    cd ut-app-template/
    clickable --docker

This should build and start an app on your Ubuntu Touch device
displaying "Hello World!"

Look `here <https://github.com/bhdouglass/clickable#usage>`__ for
further instructions.

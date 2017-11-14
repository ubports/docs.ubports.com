Using clickable for cordova and HTML-5 development
==================================================

About the guide
---------------

The purpose of the page is to provide a guide similar to :doc:`this one <setup>` for developing Cordova-based (and maybe other HTML5-based) applications using LXC container. Such applications are built in chroot environment, and build system is for some time unsupported in Xenial. I don't know if there are still any developers who use Cordova for Ubuntu, but if there are some, I hope the guide will be useful.

The steps needed to setup working environment are basicly the same as in original guide with few modifications specific to build environment.

1. Set up LXD as detailed in in :doc:`the original setup post <setup>`. We also need to enable **overlay** kernel module (it is required by *click* command to function properly)::

    sudo modprobe overlay

2. We need a 17.04+ container, because fixes for build system are published only there and not in 16.04::

    lxc launch ubuntu:17.04 clickablecontainer
    lxc config set clickablecontainer security.privileged true
    lxc config set clickablecontainer security.nesting true
    lxc restart clickablecontainer
    lxc exec clickablecontainer -- /bin/bash
  
3. Inside the container Inside the container we have to do basically the same three things: basic configuration of the system, creation of a new not root user and configuring *clickable*. Steps to create basic configuration of the system and a new not root user are the same as in original post::

    apt update
    apt install nano sudo git
    adduser mr_nice_guy usermod -a -G sudo mr_nice_guy
    su mr_nice_guy

4. Configure Clickable

  1. Download *clickable* and add it to your ``PATH``.

  2. Install NodeJS, build tools, and the cordova-cli package from the Cordova PPA::

      sudo -S apt install nodejs-legacy npm
      sudo -S apt install click-dev phablet-tools
      wget https://launchpad.net/~cordova-ubuntu/+archive/ubuntu/ppa/+build/9778583/+files/cordova-cli_4.3.1-ubuntu12_all.deb
      sudo -S dpkg -i cordova-cli_4.3.1-ubuntu12_all.deb

  3. Create chroot environment for building apps::

      sudo -S click chroot -a armhf -f ubuntu-sdk-15.04 create
   
That's it. We now should have a working clickable environment for
building Cordova apps.

Notes on Cordova usage
~~~~~~~~~~~~~~~~~~~~~~

There are number of unfixed long-standing issues with Cordova for Ubuntu. So if you'd like to create apps using Cordova, you might be interested in `project's fork <https://github.com/milikhin/cordova-ubuntu>`_. It is based on last official version, but adds few fixes that make it more usable:

*  WebView is automatically resized when on-screen keyboard is shown/hidden
*  Copy/Paste operations are supported with touchscreen

There is also repository with patched `File plugin <https://github.com/milikhin/cordova-plugin-file>`__, which gives applications ability to list hidden files and directories.

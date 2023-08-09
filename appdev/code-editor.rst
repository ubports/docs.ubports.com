Code editor integrations
========================

* QtCreator

  Available on top of clickable docker image, ``clickable ide qtcreator`` command within your project directory will launch a QtCreator instance and auto setup the project for you, you will have code completion and navigation for Ubuntu Touch components as well as run/debug facilities.

* Ubuntu SDK ( Unmaintained )

  Alternatively there is the old `Ubuntu SDK IDE <https://docs.ubuntu.com/phone/en/platform/sdk>`__. Be aware that it is no longer supported by Canonical, and UBports has chosen to not support it either due to lack of manpower.

  You can still install the SDK IDE in Ubuntu 16.04, but it is not guaranteed to work correctly. You can use the following commands to install::

    sudo add-apt-repository ppa:ubuntu-sdk-team/ppa
    sudo apt update && sudo apt dist-upgrade
    sudo apt install ubuntu-sdk
    sudo reboot # or logout/login

Code editor integrations
========================

* Atom

  You can use clickable with the `Atom Editor <https://atom.io>`__ by installing the `atom-clickable-plugin <https://atom.io/packages/atom-clickable-plugin>`__.
  Or you can simply run ``clickable ide atom`` in your project directory to launch an Atom editor instance on top of your docker image.
  This way you will have all Atom features - including the clickable plugin - available for you project.

* QtCreator

  Available on top of clickable docker image, ``clickable ide qtcreator`` command within your project directory will launch a QtCreator instance and auto setup the project for you, you will have code completion and navigation for Ubuntu Touch components as well as run/debug facilities.

* Ubuntu SDK ( Unmaintained )

  Alternatively there is the old `Ubuntu SDK IDE <https://docs.ubuntu.com/phone/en/platform/sdk>`__. Be aware that it is no longer supported by Canonical, and UBports has chosen to not support it either due to lack of manpower.

  You can still install the SDK IDE in Ubuntu 16.04, but it is not guaranteed to work correctly. You can use the following commands to install::

    sudo add-apt-repository ppa:ubuntu-sdk-team/ppa
    sudo apt update && sudo apt dist-upgrade
    sudo apt install ubuntu-sdk
    sudo reboot # or logout/login

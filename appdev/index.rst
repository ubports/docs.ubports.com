App development
===============

Welcome to an open source and free platform under constant scrutiny and improvement by a vibrant global community, whose energy, connectedness, talent and commitment is unmatched. Ubuntu is also the third most deployed desktop OS in the world.

Introduction
------------

.. todo:

    TODO app development overview : platform specificity, packaging introduction, which language available, content hub, push service, online accounts, ...

Clickable
---------

Clickable is a meta-build system for Ubuntu Touch applications that allows you to compile, build, test and publish `click <https://click.readthedocs.io/en/latest/>`__ packages. It is currently the easiest and most convenient way of building click packages for Ubuntu Touch.

See here for getting started `Read the Docs <http://clickable.bhdouglass.com/en/latest/>`__.

Ubuntu UI-Toolkit
-----------------

Here you can find `the API documentation <https://api-docs.ubports.com/>`_ for the Ubuntu UI toolkit.

* `QML API <https://api-docs.ubports.com/sdk/apps/qml/index.html>`__
* `Cordova HTML5 API <https://api-docs.ubports.com/sdk/apps/html5/index.html>`__
* `Click packages <https://click.readthedocs.io/en/latest/>`__

Ubuntu SDK IDE (unsupported)
----------------------------

The `Ubuntu SDK IDE <https://docs.ubuntu.com/phone/en/platform/sdk>`__
is no longer supported by Canonical, and UBports does not currently have
the the time and manpower to get it to a working state.

It can still be installed in Ubuntu 16.04, but issues are expected.

::

    sudo add-apt-repository ppa:ubuntu-sdk-team/ppa
    sudo apt update && sudo apt dist-upgrade
    sudo apt install ubuntu-sdk
    sudo reboot # or logout/login

Cookbook
--------

A collection of external resources

.. toctree::
    :maxdepth: 1
    :name: toc-appdev-cookbook

    cookbook

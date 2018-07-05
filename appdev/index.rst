App development
===============

Welcome to an open source and free platform under constant scrutiny and improvement by a vibrant global community, whose energy, connectedness, talent and commitment is unmatched. Ubuntu is also the third most deployed desktop OS in the world.

Introduction
------------

Ubuntu Touch has three types of applications: `Web applications`_ (WebApps), Scopes (deprecated) and `Native applications`_.
Applications are packaged, distributed and deployed using a format called `click <https://click.readthedocs.io/en/latest/>`_ packaging.
App UIs can be created using QML or HTML5 and behavior can be created using JS, Qt, C++, Python, or Go.

Click package overview
^^^^^^^^^^^^^^^^^^^^^^

Every ``click`` application package must embed at least 3 files:

``manifest.json`` file
  Contains application declarations such as application name, description, author, framework sdk target, and version.

  Example ``manifest.json`` file::

    {
        "name": "myapp.author",
        "title": "App Title",
        "version": "0.1"
        "description": "Description of the app",
        "framework": "ubuntu-sdk-15.04",
        "maintainer": "xxxx <xxx@xxxx>",
        "hooks": {
            "myapp": {
            "apparmor": "apparmor.json",
            "desktop": "app.desktop"
            }
        },


    }

AppArmor profile policy file
  Contains which policy the app needs to work properly. See `Security and app isolation`_ below for more information on this file.

``.desktop`` file
  The launcher file will tell UT how to launch the app, which name and icon to display on the home screen, and some other properties.

  Example of ``app.desktop``::

    [Desktop Entry]
    Name=Application title
    Exec=qmlscene qml/Main.qml
    Icon=assets/logo.svg
    Terminal=false
    Type=Application
    X-Ubuntu-Touch=true

  Non exhaustive list of properties:

  - Name: Application title has shown in the dash
  - Exec: Path to the executable file
  - Icon: Path to the icon to display
  - Terminal: ``false`` if will not run in terminal window
  - Type: Specifies the type of the launcher file. The type can be Application, Link or Directory.
  - X-Ubuntu-Touch: ``true`` to make the app visible
  - X-Ubuntu-XMir-Enable: ``true`` if your app is built for X

.. todo:
  link to official .desktop specifications


Security and app isolation
^^^^^^^^^^^^^^^^^^^^^^^^^^

All Ubuntu apps and scopes are confined respecting AppArmor access control mechanism (see `Application Confinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ApplicationConfinement#App_confinement_with_AppArmor>`_) , meaning they only have access to their own resources and are isolated from other apps and parts of the system. The developer must declare which policy groups are needed for the app or scope to function properly with an apparmor ``.json`` file.

Example ``apparmor.json`` file::

    {
        "policy_version": 1.3,
        "policy_groups": [
            "networking",
            "webview",
            "content_exchange"
        ]

    }

For a full list of available policy groups, see :doc:`apparmor`.

.. toctree::
    :maxdepth: 1
    :name: toc-apparmor

    apparmor


Ubuntu Touch platform
^^^^^^^^^^^^^^^^^^^^^

Platform key notes:

Content Hub
  Each application can expose content outside its sandbox, giving the user precise control over what can be imported, exported or shared with the world and other apps.

Push notifications
  By using a push server and a companion client, instantly serve users with the latest information from their network and apps.

URL dispatcher
  Help users navigate between your apps and drive their journey with the URL dispatcher.

Online accounts
  Simplify user access to online services by integrating with the online accounts API. Accounts added by the user on the device are registered in a centralized hub, allowing other apps to re-use them.


`Read the docs <https://docs.ubuntu.com/phone/en/platform/>`__

.. todo:
    import this doc


Getting started
---------------

`Clickable <http://clickable.bhdouglass.com/en/latest/>`_ is a meta-build system for Ubuntu Touch applications that allows you to compile, build, test and publish `click` packages and provides various templates to get you started with UT app developpment.
It is currently the easiest and most convenient way of building click packages for Ubuntu Touch.
Also, looking at existing published app source code is a good way to learn: `see openstore <https://open-store.io>`_

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

System Software
---------------

Working on system components

.. toctree::
    :maxdepth: 1
    :name: toc-system-software

    system-software

Web applications
----------------

Ubuntu webapps are web-hosted sites displayed inside an Ubuntu app container. They are true apps that users install, see, launch and use, but their content is provided through URLs.

.. toctree::
    :maxdepth: 1
    :name: toc-webapps

    webapp/index

Native applications
-------------------

.. toctree::
    :maxdepth: 1
    :name: toc-nativeapp

    nativeapp/index

Cookbook
--------

A collection of external resources

.. toctree::
    :maxdepth: 1
    :name: toc-appdev-cookbook

    cookbook

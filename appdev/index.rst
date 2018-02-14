App development
===============

Welcome to an open source and free platform under constant scrutiny and improvement by a vibrant global community, whose energy, connectedness, talent and commitment is unmatched. Ubuntu is also the third most deployed desktop OS in the world.

Introduction
------------

Ubuntu Touch has three types of applications: Web Applications (WebApps), Scopes and Native Applications.
Applications are packaged, distributed and deployed using a format called `click <https://click.readthedocs.io/en/latest/>`_ packaging.
Languages of choice are QML or HTML5 for the UI and can be Javascript, Qt, C++, Python, Go for the logic.

Click package overview
^^^^^^^^^^^^^^^^^^^^^^

Every `click` application package must embed at least 3 files:

A `manifest.json` file
  Contains application declarations  such as application name, description, author, framework sdk target, version ...

  Example `manifest.json` file:

  ::

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

An AppArmor profile policy file
  Contains which policy the app use to work properly (see section `Security and app isolation`_.) 

A `.desktop` file
  The launcher file will tell UT what to do to launch the app, which name and icon to display on the home screen as well as some other properties . 

  Example of `app.desktop`: 

  ::

    [Desktop Entry]
    Name=Application title
    Exec=qmlscene qml/Main.qml
    Icon=assets/logo.svg
    Terminal=false
    Type=Application
    X-Ubuntu-Touch=true

  Non exhaustive properties:

  - Name: Application title has shown in the dash
  - Exec: Path to the executable file
  - Icon: Path to the icon to display
  - Terminal: `false` if will not run in terminal window
  - Type: Specifies the type of the launcher file. The type can be Application, Link or Directory.
  - X-Ubuntu-Touch: `true` to make the app visible
  - X-Ubuntu-XMir-Enable: `true` if your app is built for X

.. todo:
  link to official .desktop specifications


Security and app isolation 
^^^^^^^^^^^^^^^^^^^^^^^^^^

All Ubuntu apps and scopes are confined respecting AppArmor access control mechanism `see Application Confinement <https://wiki.ubuntu.com/SecurityTeam/Specifications/ApplicationConfinement#App_confinement_with_AppArmor>`_ , meaning they only have access to their own resources and are isolated from other apps and parts of the system. The developer must declare which policy groups are needed for the app or scope to function properly with an apparmor `.json` file.

Example `apparmor.json` file:

::

    {
        "policy_version": 1.3,
        "policy_groups": [
            "networking",
            "webview",
            "content_exchange"
        ]
        
    }

Non exhaustive policy groups:

- accounts: Can use Online Accounts
- audio: Can play audio
- camera: Can access the camera(s)
- connectivity: Can access coarse network connectivity information
- content_exchange: Can request/import data from other applications
- content_exchange_source: Can provide/export data to other applications
- keep-display-on: Can request keeping the screen on (available since 15.04, OTA 5)
- location: Can access Location
- microphone: Can access the microphone
- networking: Can access the network
- push-notification-client: Can use push notifications as a client
- sensors: Can access the sensors
- usermetrics: Can use UserMetrics to update the InfoGraphic
- video: Can play video
- webview: Can use the UbuntuWebview


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

Cookbook
--------

A collection of external resources

.. toctree::
    :maxdepth: 1
    :name: toc-appdev-cookbook

    cookbook

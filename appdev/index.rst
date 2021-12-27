App development
===============

You'd like to develop an app for Ubuntu Touch? Great!

.. figure:: /_static/images/appdev/applist.jpg

Quick start
-----------

Building your first app should be as simple as:

* `Install clickable <https://clickable-ut.dev/en/latest/install.html>`_
* Plug in your Ubuntu Touch device
* Enable developer mode in System Settings
* Run ``clickable create``
* Choose "QML Only" from the list of app templates
* Fill in the requested information for this new app
* When the app has been generated, enter the newly created directory
* Run ``clickable``

Voilà you have your first app running on Ubuntu Touch!

Overview
--------

Ubuntu Touch supports two kinds of apps: Firstly, *native apps* have their user interface written in QML or HTML and their business logic in JavaScript, C++, Python, Rust, or Go. Secondly, *web apps* are special containers to run websites in.

.. toctree::
    :maxdepth: 1
    :name: toc-app-types

    nativeapp/index
    webapp/index

The following sections provide guides and API documentation.

`Clickable <https://clickable-ut.dev>`_ is the main tool to build apps on Ubuntu Touch. It is an easy to use command line tool with a lot of great features. Clickable allows you to compile, build, test, and publish your app. It also provides various templates to get you started with app development.

You can use any code editor or IDE to work on the code. Then you build your app from the command line with Clickable.

.. figure:: /_static/images/appdev/appdev_desktop.png

Applications are shipped as a :ref:`click <click>` package and can be published on the official app store `OpenStore <https://open-store.io>`__. Note also that most apps in the OpenStore are open source and can serve as references and inspiration.

References and guides
---------------------

.. toctree::
    :maxdepth: 1
    :name: toc-app-dev

    code-editor
    guides/index
    external-docs

This is a helpful and welcoming community and everything works better in teamwork!
Looking for other developers that might want to collaborate with you on your app?
Have questions that aren’t answered in the docs or want to chat with other Ubuntu Touch developers?
Join our `UBports UT App Dev Telegram group <https://t.me/UbuntuAppDevEN>`_ or chat with us on the `UBports App Development forum <https://forums.ubports.com/category/35/app-development>`_!

.. toctree::
    :maxdepth: 1

    preinstalled-apps

You can also check out our list of preinstalled apps. Contributions to those are greatly appreciated and directly reach a larger audience.

Maintainers wanted
------------------

All apps love contributions. But some core apps are lacking maintainers. Please check the `list of core apps <https://github.com/ubports/ubuntu-touch/blob/master/CORE_APPS.md>`_ and see if you want to step up as new maintainer for one of our core apps. The maintainer reviews MR's, triages and investigates issue reports and helps to develop the app.

The best way to start is by making some contributions and let the reviewers know that you are interested. Or join our matrix group at `#ubcd:matrix.org <https://matrix.to/#/#ubcd:matrix.org>`_ and introduce yourself.

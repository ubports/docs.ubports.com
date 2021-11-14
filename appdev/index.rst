App development
===============

You'd like to develop an app for Ubuntu Touch? Great!

.. figure:: /_static/images/appdev/applist.jpg

Building your first app should be as simple as:

* `Install clickable <https://clickable.bhdouglass.com/en/latest/install.html>`_
* Plug in your Ubuntu Touch device
* Run ``clickable create``
* Choose "QML Only" from the list of app templates
* Fill out the requested information for this new app
* When the app has been generated, enter the newly created directory
* Run ``clickable``

Voilà you have your first app running on Ubuntu Touch!

Overview
--------

Ubuntu Touch supports two kinds of apps: Firstly, *native apps* have a frontend written in QML or HTML with their behavior defined in plugins in JavaScript, C++, Python, Rust, or Go. Secondly, *web apps* are special containers to run websites in.

.. toctree::
    :maxdepth: 1
    :name: toc-app-types

    nativeapp/index
    webapp/index

The following sections provide guides and API documentation and examples.

`Clickable <https://clickable.bhdouglass.com>`_ is the main tool to build apps on Ubuntu Touch. It is an easy to use command line tool with a lot of great features. Clickable allows you to compile, build, test, and publish your app. It also provides various templates to get you started with app development.

You can use any code editor or IDE to work on the code. Then you build your app from the command line with Clickable.

.. figure:: /_static/images/appdev/appdev_desktop.png

Applications are shipped as a :ref:`click <click>` package and can be published on the official app store `OpenStore <https://open-store.io>`__.

References and guides
---------------------

.. toctree::
    :maxdepth: 1
    :name: toc-app-dev

    code-editor
    guides/index
    external-docs
    samples/index
    /contribute/preinstalled-apps

Are you looking for other developers that might want to collaborate with you on your app, or
do you have questions that aren’t answered in the docs or want to chat with other Ubuntu Touch developers?
Join our `UBports UT App Dev Telegram group <https://t.me/UbuntuAppDevEN>`_ or chat with us on the `UBports App Development forum <https://forums.ubports.com/category/35/app-development>`_.

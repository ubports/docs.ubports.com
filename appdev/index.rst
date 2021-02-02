App development
===============

Great!, you'd like to develop an app for Ubuntu Touch. Here are some resources that we hope help you get started. 

If you have questions that aren't answered in the docs or want to chat with other Ubuntu Touch developers? Join our `app dev Telegram group <https://t.me/UbuntuAppDevEN>`_ or chat with us on the `UBports app dev forum <https://forums.ubports.com/category/35/app-development>`_.

Getting Started
---------------

`Clickable <http://clickable.bhdouglass.com/en/latest/>`_ is a meta-build system for Ubuntu Touch applications that allows you to compile, build, test and publish ``click`` packages and provides various templates to get you started with app development. It is currently the easiest and most convenient way of building click packages for Ubuntu Touch. You can use any code editor or IDE that you choose and build your apps from the commandline with Clickable.

Ubuntu Touch supports two kind of apps. :ref:`Native apps <nativeapp>` are apps with interfaces made using QML or HTML with their behavior defined in JavaScript, C++, Python, Rust or Go. :ref:`Web apps <webapp>` are special containers to run websites in.

Applications are shipped as a :ref:`Click <click>` package and can be publicly shared on the official app store `OpenStore <https://open-store.io>`__ 

.. toctree::
    :maxdepth: 1
    :name: toc-app-types

    nativeapp/index
    webapp/index

Code Editor Integrations
------------------------
    - Atom

        You can use clickable with the `Atom Editor <https://atom.io>`__ by installing the `atom-clickable-plugin <https://atom.io/packages/atom-clickable-plugin>`__. This provides some common clickable tools needed to build and run click packages for Ubuntu Touch from within Atom editor.

    - QtCreator

        Available on top of clickable docker image, ``clickable ide qtcreator`` command within your project directory will launch a QtCreator instance and auto setup the project for you, you will have code completion and navigation for Ubuntu Touch components as well as run/debug facilities.


    - Ubuntu SDK ( Unmaintained )

        Alternatively there is the old `Ubuntu SDK IDE <https://docs.ubuntu.com/phone/en/platform/sdk>`__. Be aware that it is no longer supported by Canonical, and UBports has chosen to not support it either due to lack of manpower.

        You can still install the SDK IDE in Ubuntu 16.04, but it is not guaranteed to work correctly. You can use the following commands to install::

            sudo add-apt-repository ppa:ubuntu-sdk-team/ppa
            sudo apt update && sudo apt dist-upgrade
            sudo apt install ubuntu-sdk
            sudo reboot # or logout/login



Guides
------

Get started building your first app or learn about advanced concepts with our :ref:`Developer guides <devguides>`.

.. toctree::
    :maxdepth: 1
    :name: toc-dev-guides

    guides/index
    guides/cookbook
    guides/contenthub
    guides/importing-CH-urldispatcher
    guides/pushnotifications
    guides/user-metrics
    guides/writeable-dirs
    guides/dependencies

Publishing
----------

After you are done building your app, distribute it on the `OpenStore <https://open-store.io/>`__ with our :ref:`Publishing guides <publishing>`.

.. toctree::
    :maxdepth: 1
    :name: toc-publishing

    publishing/index

Documentation
-------------

* `QML API <https://api-docs.ubports.com/sdk/apps/qml/index.html>`__
* `Cordova HTML5 API <https://api-docs.ubports.com/sdk/apps/html5/index.html>`__
* `Clickable <http://clickable.bhdouglass.com/en/latest/>`__
* `Suru Icons <http://docs.ubports.com/projects/icons/en/latest/>`__

It is possible to develop cross-platform apps that don't depend on Ubuntu specific APIs, although this is not the official way of developing apps for Ubuntu Touch. If running on other operating systems is an requirement for your app, you can refer to this  APIs instead:

* `Kirigami API <https://api.kde.org/frameworks/kirigami/html/>`__
* `Qt Quick Controls 2 API <https://doc.qt.io/qt-5/qtquickcontrols-index.html>`__


Platform
--------


.. toctree::
    :maxdepth: 1
    :name: toc-devdocs

    platform/index
    platform/click
    platform/apparmor


Sample apps
-----------

Learn more about app development by digging into our :ref:`Sample apps <sampleapps>`.

.. toctree::
    :maxdepth: 1
    :name: toc-sample-apps

    samples/index


Preinstalled apps
-----------------

The :doc:`/contribute/preinstalled-apps` page has information on developing the apps which are included with Ubuntu Touch.

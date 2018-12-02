App development
===============

Welcome to an open source and free platform under constant scrutiny and improvement by a vibrant global community, whose energy, connectedness, talent and commitment is unmatched. Ubuntu is also the third most deployed desktop OS in the world.

Get started
-----------

Ubuntu Touch is a fun and vibrant platform for development. Whether you're a new developer or an experienced one, we have several resources to help you get started.

Ubuntu Touch supports several different types of apps. :ref:`Native apps <nativeapp>` are apps with interfaces made using QML or HTML with their behavior defined in JavaScript, C++, Python, or Go. :ref:`Web apps <webapp>` are special containers to run websites in.

.. toctree::
    :maxdepth: 1
    :name: toc-app-types

    nativeapp/index
    webapp/index

Community
---------

Have questions that aren't answered in the docs or want to chat with other Ubuntu Touch developers? Join our `app dev Telegram group <https://t.me/UbuntuAppDevEN>`_ or chat with us on the `UBports app dev forum <https://forums.ubports.com/category/35/app-development>`_.

Tools
-----

`Clickable <http://clickable.bhdouglass.com/en/latest/>`_ is a meta-build system for Ubuntu Touch applications that allows you to compile, build, test and publish ``click`` packages and provides various templates to get you started with app development. It is currently the easiest and most convenient way of building click packages for Ubuntu Touch. You can use any code editor or IDE that you choose and build your apps from the commandline with Clickable.

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
    guides/writeable-dirs
    guides/pushnotifications

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

More Documentation
^^^^^^^^^^^^^^^^^^

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


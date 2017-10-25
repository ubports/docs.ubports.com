Getting started
===============

Here you can install everything needed to get developing apps for Ubuntu.

1. Start by :doc:`Installing the Ubuntu
   SDK <platform/sdk/installing-the-sdk>`.
2. Check out the :doc:`Ubuntu installation guide for
   devices <devices/installing-ubuntu-for-devices>` to install
   Ubuntu on a supported device.

.. Tip::
    A device is not required: you can develop and run apps and scopes using the Ubuntu emulator right in your Ubuntu desktop. For more info, see :doc:`Ubuntu SDK <platform/sdk/index>`

The Ubuntu development model
----------------------------

Frameworks: targeting APIs
~~~~~~~~~~~~~~~~~~~~~~~~~~

Ubuntu applications and scopes are packaged, distributed and deployed using a format called ``click`` packaging. A framework is a set of Ubuntu APIs an app or scope is developed for.

When packaged, all apps and scopes must declare which API framework they are intending to use on the device.

:doc:`Learn more about frameworks › <platform/guides/frameworks.md>`

Security and app isolation
~~~~~~~~~~~~~~~~~~~~~~~~~~

All Ubuntu apps and scopes are confined, meaning they only have access to their own resources and are isolated from other apps and parts of the system. The developer must declare which policy groups are needed for the app or scope to function properly within the confinement rules providing security and privacy.

:doc:`Learn more about security
policies <platform/guides/app-confinement>`

The build environment
~~~~~~~~~~~~~~~~~~~~~

A build environment, or click target, will be required to develop and test an app or scope. This environment will make it possible to build the software for a different architecture if cross-compilation is required (e.g. an app that uses C++) and to run it on different devices (the desktop, a phone/tablet or the emulator). Whenever a target is required the IDE will help to configure it based on the framework and target architecture (e.g. i386 or armhf). The architecture will correspond to the test environment the developer is using and ultimately what the products are built with.

:doc:`Learn more about building for different
architectures › <platform/sdk/tutorials-building-cross-architecture-click-applications>`

Testing applications on devices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As far as testing environments, the developer can choose an **Ubuntu emulator**, which can be x86 or armhf, or real hardware with a **reference device**, such as the Nexus 4 or Nexus 7. While it is possible that simple apps may work in the local desktop environment, it is only in one of these supported testing environments that the entire set of framework APIs are available. It is generally recommended that an app or scope be packaged as a click and installed to the device or emulator in order to properly test it. Again the IDE will assist with creating, validating, deploying and installing the package.

:doc:`Learn how to run apps with the Ubuntu SDK
IDE  › <platform/sdk/tutorials-running-apps-from-the-sdk>`

Device development information
------------------------------

These pages will provide you with the current status, goals, and issues of a particular device that we're porting to.

:doc:`Nexus 5X Developer 
Information › <platform/guides/Nexus-5X-Developer-Information>`

:doc:`Fairphone2 Developer 
Information › <platform/guides/Fairphone2-Developer-Information>`

Your first app
--------------

Get the tools
~~~~~~~~~~~~~

Developers feel right at home and productive in the Ubuntu SDK IDE, whatever their experience.

This integrated development environment offers a richly featured and deeply integrated set of development tools that gears up productivity and includes direct access to attached Ubuntu devices and Ubuntu emulators.

:doc:`Install the Ubuntu SDK IDE </platform/sdk/installing-the-sdk>`

Pick your language
~~~~~~~~~~~~~~~~~~

For the UI, you can choose either QML or HTML5 to write Ubuntu apps.

For the logic, JavaScript, Qt and other languages such as Python or Go can power refined QML UIs.

.. Note::
    for starters, we recommend QML and JavaScript, which are the languages used in most tutorials.

:doc:`Write your first app <qml/index>`

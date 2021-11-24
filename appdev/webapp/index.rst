.. _webapp:

Web apps
========

Ubuntu Webapps can be a nice way to deliver online web applications into Ubuntu.

The Ubuntu platform provides an advanced web engine container to run online applications on the Ubuntu client devices.

Web applications are hosted online. They can be as simple as a website, like an online news site, or they can distribute content like videos. They can also have a rich user interface or use the WebGL extension to deliver games online.

.. note::
  Ubuntu webapps and Ubuntu HTML5 apps are similar but not identical. The main difference is that the content of a webapp is provided through a URL, whereas HTML5 apps install their content (and usually provide an Ubuntu HTML5 GUI). Webapps also have restricted access to platform APIs.

.. note::

  A different approach to webapps published in the open store is to simply create shortcuts directly yourself with `webber app <https://open-store.io/app/webber.timsueberkrueb>`__.

.. todo::

  There is also another way to create somewhat more featureful webapps, sometimes referred to as webapp+ or alternative container.
  This needst to be properly documented.
  It's a simple qml app that can be easily configured.
  Creation is almost as simple as 'classic' webapp, but result is more powerfull with the a nice navigation feature.
  A rather advanced example of this is the `YouTube app <https://open-store.io/app/youtube-web.mateo-salta>`__ from Mateo Salta which has quite some modifications on top of the template.

Guide
-----

.. toctree::
    :maxdepth: 1
    :name: toc-webapp

    guide

Quick start
-----------

There are several tools to help you package and deploy your webapp to your device:

- `Webapp creator <https://open-store.io/app/webapp-creator.jujuyeh>`_ application available from the openstore
- `Clickable <https://clickable-ut.dev>`_ CLI


Debugging your webapp
---------------------

This guide give you some tips to help you debug your webapp.

 .. toctree::
    :maxdepth: 1
    :name: toc-webapp-debug

    webdebug

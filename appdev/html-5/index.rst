Welcome to HTML5 apps!
======================


.. note::
    *Here be dragons!*
    This part of the docs could be very outdated or incomplete and has not been completely triaged. Refer to `the Ubuntu docs <https://docs.ubuntu.com>`__ for further reference.

Ubuntu embraces HTML5 as a first-class app toolkit. While its support is
constantly evolving and you can expect a lot of new things to come, most
of the core parts are in good working order! So HTML5 developers can
start making true HTML5 applications (as opposed to web pages) that fit
right into the dazzling Ubuntu experience.

What is an HTML5 app?
---------------------

HTML5 is traditionally for web pages. CSS provides styling and
animations, and JavaScript provides logic and control. But now, these
web technologies can be used to write apps for Ubuntu.

What is an Ubuntu HTML5 app?
----------------------------

It is written in HTML5, CSS and JavaScript and it runs in a web
container. It is an app, just like any other Ubuntu app, integrated into
Unity in all the usual ways. The web container provides access to a wide
and growing set of JavaScript APIs the app can use. This includes Ubuntu
platform APIs such as the Content Hub, Alarms and Online accounts and
others not specific to Ubuntu, such as Cordova APIs, which provides
access to system and device level functionality like the camera and the
accelerometer.

Looks and feels like an Ubuntu app
----------------------------------

An HTML5 app UI can be created with Ubuntu HTML5 widgets, like Tabs,
Pages, Dialogs, Buttons, and more. When you declare these widgets in
your HTML5 code, they are automatically styled by Ubuntu CSS, so they
fit right in visually. This also includes a JavaScript runtime
framework, which lets you control widgets using a convenient JS API.

In addition to Ubuntu-specific HTML declarations, the app can use
standard HTML5. Since the Ubuntu CSS provides styling for most cases,
even when using additional HTML5, the app still looks and feels like an
Ubuntu app.

Ubuntu app design
-----------------

Ubuntu puts design first and considers toolkits (HTML5, QML and others)
as an implementation detail. It is design that makes an Ubuntu app look
and feel like an Ubuntu app.

A good step before getting started writing Ubuntu HTML5 apps is looking
at `design section <../design/index.md>`__. You will find examples and
guidance on using Ubuntu UI layouts and building blocks (from a toolkit
agnostic viewpoint).

Questions?
----------

There’s a lot to know, and fortunately the Ubuntu community is rich with
sources of help and information. Here are a couple good places to visit:

-  `http://askubuntu.com <http://askubuntu.com/>`__, a very active site.
   `Check out the list of already answered
   questions <http://askubuntu.com/questions/tagged/html5>`__. Feel free
   to ask your own questions as well and make sure you use the HTML5
   tag.
-  `Our app developer community <http://community.ubuntu.com/>`__, a
   great gathering place for people who share an interest in developing
   for Ubuntu and sharing knowledge!

Next steps
----------

Guides
~~~~~~

Be sure to check out our `HTML5 guides <guides-index.md>`__ and others,
like those for the `Ubuntu App
Platform <../../platform/guides/index.md>`__. These focused articles
cover key topics of interest to app developers and are designed to give
you a high level overview of critical topics. After reading the guides,
understanding APIs and platform features is much easier.

Tutorials
~~~~~~~~~

Definitely check out the `HTML5 tutorials <tutorials-index.md>`__. These
give you detailed steps, examples and explanations that let you leap
into productivity with Ubuntu HTML5 apps.

APIs
~~~~

And of course, developers need the `API Reference docs
forHTML5/JavaScript <api.md>`__. These provide the implementation-level
detail you need make your HTML5 apps use the full sweet of platform APIs
.

.. toctree::
   :maxdepth: 1
   :name: toc-appdev-html-5-tutorials

   tutorials/index
   api/index

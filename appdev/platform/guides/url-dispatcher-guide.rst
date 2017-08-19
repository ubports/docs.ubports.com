Platform guides - URL dispatcher guide
======================================

The URL Dispatcher is a small service which can **allow confined
applications to launch other applications** that are identified with a
particular URL.

Perhaps the most common case would be sending an ``http://<URL>`` to the
Web browser, but other applications like Music or just starting an
application that is in a different sandbox is also supported. For most
applications this is a useful way to get out of their application to
another piece of content or user request.

For QML applications access to the URL Dispatcher is provided through
the Qt desktop plugin, via the
`openUrlExternally <../../apps/api-qml-current/QtQml.Qt.md#openUrlExternally-method>`__
method. C++ applications can use the
`openURL <http://qt-project.org/doc/qt-5.0/qtgui/qdesktopservices.html#openUrl>`__
method. Both are valid and the backend is transparent. For other
applications they can use the Platform API or liburl-dispatcher directly
depending on their needs.

Supported URLs
--------------

Base URLS
~~~~~~~~~

There are a few URLs that are supported internally in the URL
dispatcher.

-  **``application:///$(app_id).desktop``** - The application URL can be
   used to start an application with a known `Application
   ID <https://wiki.ubuntu.com/AppStore/Interfaces/ApplicationId>`__.
   For applications that install their desktop file in
   /usr/share/applications the application ID should just be the name of
   the desktop file.
-  **``appid://$(pkg)/$(app)/$(version)``** - Allows for launching an
   application using an application ID. Also provides for wild cards.
   The
   :math:`(app) can be `first-listed`, `last-listed-app` or `only-listed-ap`p to select the appropriate application using the click manifest. Also the ``\ (version)``can be``\ current-user-version\`
   to select the version in the manifest

Application URLs
~~~~~~~~~~~~~~~~

Applications can register to be opened when a URL is activated by adding
a URL definition to their Click manifest. For this a small JSON file
needs to be added along side the desktop file in the "hooks" section of
the file. A simple manifest could look like this:

.. code:: json

    {
        "name": "My App",
        "version": "1.2.3",
        "hooks": {
            "foo": {
                "desktop": "foo.desktop",
                "urls": "foo.url-dispatcher"
            }
        }
    }

Which would then point to another JSON file in your click package that
defines which URLs you are expecting to receive. A simple version of
that file could look like:

.. code:: json

    [
        {
            "protocol": "foo",
            "domain-suffix": "bar.com"
        }
    ]

This would mean that the application in "``foo.desktop``" would be
launched anyone someone requested a URL with the pattern
"``foo://*.bar.com``". The domain-suffix field can be left out if you'd
like to receive all requests for a given protocol. The URL dispatcher
definition is an array, so as many protocol/suffixes that you wish to
receive for that application may be added.

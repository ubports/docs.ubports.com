.. _sdk_ubuntu_components_urihandler:

Ubuntu.Components UriHandler
============================

Singleton signalling for opened URIs.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Signals
-------

-  :ref:`onOpened <sdk_ubuntu_components_urihandler_onOpened>`\ (list<string> *uris*)

Detailed Description
--------------------

:ref:`UriHandler <sdk_ubuntu_components_urihandler>` is a singleton handling opened URIs. The application can be signalled of opened URIs through the opened signal. The content of the "APP\_ID" environment variable is used to determine the object path. If the D-Bus session bus is not connected or the "APP\_ID" variable is not set or empty, the handler stays uninitialized.

Example of use:

.. code:: qml

    Connections {
        target: UriHandler
        onOpened: print(uris)
    }

Signal Documentation
--------------------

.. _sdk_ubuntu_components_urihandler_onOpened:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onOpened(list<string> *uris*)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The signal is triggered when URIs are opened.


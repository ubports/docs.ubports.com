.. _sdk_ubuntu_web_webcontext:

Ubuntu.Web WebContext
=====================

A default context implementation for use with WebView.

+---------------------+-------------------------+
| Import Statement:   | import Ubuntu.Web 0.2   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`acceptLangs <sdk_ubuntu_web_webcontext_acceptLangs>` : string
-  :ref:`cachePath <sdk_ubuntu_web_webcontext_cachePath>` : url
-  :ref:`dataPath <sdk_ubuntu_web_webcontext_dataPath>` : url
-  :ref:`userAgent <sdk_ubuntu_web_webcontext_userAgent>` : string

Detailed Description
--------------------

This default :ref:`WebContext <sdk_ubuntu_web_webcontext>` implementation has the default user agent string used by the Ubuntu browser as well as the UA override mechanism that allows sending an overridden user agent for given domains/websites, based on the form factor.

It has its data path (for cache and cookie database) set to the standard writable data location for the current application, which is based on the application name (see ``Qt.application.name``), for example *~/.local/share/myApp/*.

Note that the :ref:`WebView <sdk_ubuntu_web_webview>` component already uses this default context, so there is no need to explicitly instantiate a ``WebContext`` unless you want to override some of its default properties.

**See also** :ref:`SharedWebContext <sdk_ubuntu_web_sharedwebcontext>`.

Property Documentation
----------------------

.. _sdk_ubuntu_web_webcontext_acceptLangs:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| acceptLangs : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The list of accepted languages (the Accept-Language HTTP header), as a comma-separated list of language codes.

.. _sdk_ubuntu_web_webcontext_cachePath:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| cachePath : url                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The local path where network data will be cached. If not set, it defaults to :ref:`dataPath <sdk_ubuntu_web_webcontext_dataPath>`.

.. _sdk_ubuntu_web_webcontext_dataPath:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dataPath : url                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The local path where persistent data (such as cookies) will be stored.

.. _sdk_ubuntu_web_webcontext_userAgent:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| userAgent : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The default user agent string that will be sent with each HTTP request.


.. _sdk_ubuntu_web_sharedwebcontext:

Ubuntu.Web SharedWebContext
===========================

A singleton that exposes a shared WebContext that can be used by several WebView instances in the same application.

+---------------------+-------------------------+
| Import Statement:   | import Ubuntu.Web 0.2   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`customUA <sdk_ubuntu_web_sharedwebcontext_customUA>` : string
-  :ref:`sharedContext <sdk_ubuntu_web_sharedwebcontext_sharedContext>` : WebContext

Detailed Description
--------------------

Note that the :ref:`WebView <sdk_ubuntu_web_webview>` component already uses the shared context.

Property Documentation
----------------------

.. _sdk_ubuntu_web_sharedwebcontext_customUA:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| customUA : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

An alias to the shared context’s default user agent string.

.. _sdk_ubuntu_web_sharedwebcontext_sharedContext:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sharedContext : :ref:`WebContext <sdk_ubuntu_web_webcontext>`                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`WebContext <sdk_ubuntu_web_webcontext>` instance that several :ref:`WebView <sdk_ubuntu_web_webview>` instances can share.


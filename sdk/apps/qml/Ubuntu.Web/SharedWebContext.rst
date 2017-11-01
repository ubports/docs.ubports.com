A singleton that exposes a shared WebContext that can be used by several
WebView instances in the same application.

+---------------------+-------------------------+
| Import Statement:   | import Ubuntu.Web 0.2   |
+---------------------+-------------------------+

Properties
----------

-  ****`customUA </sdk/apps/qml/Ubuntu.Web/SharedWebContext#customUA-prop>`__****
   : string
-  ****`sharedContext </sdk/apps/qml/Ubuntu.Web/SharedWebContext#sharedContext-prop>`__****
   : WebContext

Detailed Description
--------------------

Note that the `WebView </sdk/apps/qml/Ubuntu.Web/WebView/>`__ component
already uses the shared context.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ customUA : string                                               |
+--------------------------------------------------------------------------+

An alias to the shared context’s default user agent string.

| 

+--------------------------------------------------------------------------+
|        \ sharedContext :                                                 |
| `WebContext </sdk/apps/qml/Ubuntu.Web/WebContext/>`__                    |
+--------------------------------------------------------------------------+

The `WebContext </sdk/apps/qml/Ubuntu.Web/WebContext/>`__ instance that
several `WebView </sdk/apps/qml/Ubuntu.Web/WebView/>`__ instances can
share.

| 

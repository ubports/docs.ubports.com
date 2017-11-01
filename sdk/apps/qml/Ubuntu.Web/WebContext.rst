A default context implementation for use with WebView.

+---------------------+-------------------------+
| Import Statement:   | import Ubuntu.Web 0.2   |
+---------------------+-------------------------+

Properties
----------

-  ****`acceptLangs </sdk/apps/qml/Ubuntu.Web/WebContext#acceptLangs-prop>`__****
   : string
-  ****`cachePath </sdk/apps/qml/Ubuntu.Web/WebContext#cachePath-prop>`__****
   : url
-  ****`dataPath </sdk/apps/qml/Ubuntu.Web/WebContext#dataPath-prop>`__****
   : url
-  ****`userAgent </sdk/apps/qml/Ubuntu.Web/WebContext#userAgent-prop>`__****
   : string

Detailed Description
--------------------

This default `WebContext </sdk/apps/qml/Ubuntu.Web/WebContext/>`__
implementation has the default user agent string used by the Ubuntu
browser as well as the UA override mechanism that allows sending an
overridden user agent for given domains/websites, based on the form
factor.

It has its data path (for cache and cookie database) set to the standard
writable data location for the current application, which is based on
the application name (see ``Qt.application.name``), for example
*~/.local/share/myApp/*.

Note that the `WebView </sdk/apps/qml/Ubuntu.Web/WebView/>`__ component
already uses this default context, so there is no need to explicitly
instantiate a ``WebContext`` unless you want to override some of its
default properties.

**See also**
`SharedWebContext </sdk/apps/qml/Ubuntu.Web/SharedWebContext/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ acceptLangs : string                                            |
+--------------------------------------------------------------------------+

The list of accepted languages (the Accept-Language HTTP header), as a
comma-separated list of language codes.

| 

+--------------------------------------------------------------------------+
|        \ cachePath : url                                                 |
+--------------------------------------------------------------------------+

The local path where network data will be cached. If not set, it
defaults to
`dataPath </sdk/apps/qml/Ubuntu.Web/WebContext#dataPath-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ dataPath : url                                                  |
+--------------------------------------------------------------------------+

The local path where persistent data (such as cookies) will be stored.

| 

+--------------------------------------------------------------------------+
|        \ userAgent : string                                              |
+--------------------------------------------------------------------------+

The default user agent string that will be sent with each HTTP request.

| 

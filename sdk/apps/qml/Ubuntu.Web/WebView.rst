.. _sdk_ubuntu_web_webview:
Ubuntu.Web WebView
==================

A webview that can be used to render web content in an application.

+---------------------+-------------------------+
| Import Statement:   | import Ubuntu.Web 0.2   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`alertDialog <sdk_ubuntu_web_webview_alertDialog-prop>` :
   component
-  :ref:`beforeUnloadDialog <sdk_ubuntu_web_webview_beforeUnloadDialog-prop>`
   : component
-  :ref:`canGoBack <sdk_ubuntu_web_webview_canGoBack-prop>` : bool
-  :ref:`canGoForward <sdk_ubuntu_web_webview_canGoForward-prop>` :
   bool
-  :ref:`confirmDialog <sdk_ubuntu_web_webview_confirmDialog-prop>`
   : component
-  :ref:`context <sdk_ubuntu_web_webview_context-prop>` :
   WebContext
-  :ref:`contextualActions <sdk_ubuntu_web_webview_contextualActions-prop>`
   : ActionList
-  :ref:`contextualData <sdk_ubuntu_web_webview_contextualData-prop>`
   : QtObject
-  :ref:`filePicker <sdk_ubuntu_web_webview_filePicker-prop>` :
   component
-  :ref:`fullscreen <sdk_ubuntu_web_webview_fullscreen-prop>` :
   bool
-  :ref:`icon <sdk_ubuntu_web_webview_icon-prop>` : url
-  :ref:`incognito <sdk_ubuntu_web_webview_incognito-prop>` : bool
-  :ref:`loadProgress <sdk_ubuntu_web_webview_loadProgress-prop>` :
   int
-  :ref:`loading <sdk_ubuntu_web_webview_loading-prop>` : bool
-  :ref:`navigationHistory <sdk_ubuntu_web_webview_navigationHistory-prop>`
   : list
-  :ref:`promptDialog <sdk_ubuntu_web_webview_promptDialog-prop>` :
   component
-  :ref:`title <sdk_ubuntu_web_webview_title-prop>` : string
-  :ref:`url <sdk_ubuntu_web_webview_url-prop>` : url

Methods
-------

-  void :ref:`goBack <sdk_ubuntu_web_webview_goBack-method>`\ ()
-  void
   **:ref:`goForward <sdk_ubuntu_web_webview#goForward-method>`**\ ()
-  void
   **:ref:`loadHtml <sdk_ubuntu_web_webview#loadHtml-method>`**\ (string
   *html*, url *baseUrl*)
-  void :ref:`reload <sdk_ubuntu_web_webview_reload-method>`\ ()
-  void :ref:`stop <sdk_ubuntu_web_webview_stop-method>`\ ()

Detailed Description
--------------------

Here is a very simple example of how to use a
:ref:`WebView <sdk_ubuntu_web_webview>` to render a web page:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Web 0.2
    WebView {
        url: "http://ubuntu.com"
    }

The ``WebView`` component defaults to using a `shared
:ref:``WebContext`` <sdk_ubuntu_web_sharedwebcontext>` that is shared
across all ``WebView`` instances in a given application.

**See also** :ref:`SharedWebContext <sdk_ubuntu_web_sharedwebcontext>`.

Property Documentation
----------------------

.. _sdk_ubuntu_web_webview_alertDialog-prop:

+--------------------------------------------------------------------------+
|        \ alertDialog : component                                         |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
alert dialog.

**See also**
:ref:`confirmDialog <sdk_ubuntu_web_webview#confirmDialog-prop>`,
:ref:`promptDialog <sdk_ubuntu_web_webview#promptDialog-prop>`, and
:ref:`beforeUnloadDialog <sdk_ubuntu_web_webview#beforeUnloadDialog-prop>`.

| 

.. _sdk_ubuntu_web_webview_beforeUnloadDialog-prop:

+--------------------------------------------------------------------------+
|        \ beforeUnloadDialog : component                                  |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
confirmation when the user initiates a navigation away from the current
page, if the page has defined an ``onBeforeUnload`` handler.

**See also** :ref:`alertDialog <sdk_ubuntu_web_webview#alertDialog-prop>`,
:ref:`confirmDialog <sdk_ubuntu_web_webview#confirmDialog-prop>`, and
:ref:`promptDialog <sdk_ubuntu_web_webview#promptDialog-prop>`.

| 

.. _sdk_ubuntu_web_webview_canGoBack-prop:

+--------------------------------------------------------------------------+
|        \ canGoBack : bool                                                |
+--------------------------------------------------------------------------+

Whether the navigation history has a previous entry to navigate back.

**See also** :ref:`goBack <sdk_ubuntu_web_webview#goBack-method>` and
:ref:`canGoForward <sdk_ubuntu_web_webview#canGoForward-prop>`.

| 

.. _sdk_ubuntu_web_webview_canGoForward-prop:

+--------------------------------------------------------------------------+
|        \ canGoForward : bool                                             |
+--------------------------------------------------------------------------+

Whether the navigation history has a next entry to navigate forward.

**See also** :ref:`goForward <sdk_ubuntu_web_webview#goForward-method>` and
:ref:`canGoBack <sdk_ubuntu_web_webview#canGoBack-prop>`.

| 

.. _sdk_ubuntu_web_webview_confirmDialog-prop:

+--------------------------------------------------------------------------+
|        \ confirmDialog : component                                       |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
confirmation dialog.

**See also** :ref:`alertDialog <sdk_ubuntu_web_webview#alertDialog-prop>`,
:ref:`promptDialog <sdk_ubuntu_web_webview#promptDialog-prop>`, and
:ref:`beforeUnloadDialog <sdk_ubuntu_web_webview#beforeUnloadDialog-prop>`.

| 

.. _sdk_ubuntu_web_webview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ context : `WebContext <sdk_ubuntu_web_webcontext>`         |
+--------------------------------------------------------------------------+

The web context associated to this :ref:`WebView <sdk_ubuntu_web_webview>`.
By default a :ref:`shared context <sdk_ubuntu_web_sharedwebcontext>` is
used which should fit most use cases, do not override unless you really
need a finer control over the context.

| 

.. _sdk_ubuntu_web_webview_contextualActions-prop:

+--------------------------------------------------------------------------+
|        \ contextualActions : ActionList                                  |
+--------------------------------------------------------------------------+

A list of actions that the user will be presented with when invoking a
context menu (by way of a right click on desktop, or a long press on a
touch-enabled device, on an image or a hyperlink). By default the list
is empty, and no menu is shown. User-defined actions can access the
:ref:`contextual data <sdk_ubuntu_web_webview#contextualData-prop>`.

Example of user-defined actions:

.. code:: cpp

    import Ubuntu.Components 1.1
    import Ubuntu.Web 0.2
    WebView {
        contextualActions: ActionList {
            Action {
                text: i18n.tr("Open link in browser")
                enabled: contextualData.href.toString()
                onTriggered: Qt.openUrlExternally(contextualData.href)
            }
        }
    }

**See also**
:ref:`contextualData <sdk_ubuntu_web_webview#contextualData-prop>`.

| 

.. _sdk_ubuntu_web_webview_contextualData-prop:

+--------------------------------------------------------------------------+
|        \ contextualData : QtObject                                       |
+--------------------------------------------------------------------------+

An object that holds the contextual data associated with the current
context menu. User-defined `contextual
actions <sdk_ubuntu_web_webview#contextualActions-prop>:ref:` can use this
data to process it when triggered.

It has the following properties:

-  href (url): the full URI of the hyperlink, if any
-  title (string): the title of the hyperlink, if any
-  img (url): the full URI of the image

Note that in the case of an image enclosed inside a hyperlink, both
``href`` and ``img`` will be available, allowing a user-defined
contextual action to operate on both elements.

**See also**
:ref:`contextualActions <sdk_ubuntu_web_webview#contextualActions-prop>`.

| 

.. _sdk_ubuntu_web_webview_filePicker-prop:

+--------------------------------------------------------------------------+
|        \ filePicker : component                                          |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to let the user select files
when the user clicks an ``<input type="file">`` element on the current
page.

| 

.. _sdk_ubuntu_web_webview_fullscreen-prop:

+--------------------------------------------------------------------------+
|        \ fullscreen : bool                                               |
+--------------------------------------------------------------------------+

Whether the current page requested fullscreen display.

| 

.. _sdk_ubuntu_web_webview_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ icon : `url <sdk_ubuntu_web_webview#url-prop>`             |
+--------------------------------------------------------------------------+

The URL of the favicon of the current page.

| 

.. _sdk_ubuntu_web_webview_incognito-prop:

+--------------------------------------------------------------------------+
|        \ incognito : bool                                                |
+--------------------------------------------------------------------------+

Whether the :ref:`WebView <sdk_ubuntu_web_webview>` is being used in
private browsing mode, where no data is persisted across sessions.

| 

.. _sdk_ubuntu_web_webview_loadProgress-prop:

+--------------------------------------------------------------------------+
|        \ loadProgress : int                                              |
+--------------------------------------------------------------------------+

The load progress of the current page (as a integer value between 0 and
100).

**See also** :ref:`loading <sdk_ubuntu_web_webview#loading-prop>`.

| 

.. _sdk_ubuntu_web_webview_loading-prop:

+--------------------------------------------------------------------------+
|        \ loading : bool                                                  |
+--------------------------------------------------------------------------+

Whether the current page is loading.

**See also**
:ref:`loadProgress <sdk_ubuntu_web_webview#loadProgress-prop>`,
:ref:`stop <sdk_ubuntu_web_webview#stop-method>`, and
:ref:`reload <sdk_ubuntu_web_webview#reload-method>`.

| 

.. _sdk_ubuntu_web_webview_navigationHistory-prop:

+--------------------------------------------------------------------------+
|        \ navigationHistory : list                                        |
+--------------------------------------------------------------------------+

The navigation history (back/forward entries) stored as a list model
with a ``currentIndex`` property. Each entry exposes the URL and title
of the corresponding page, as well as a timestamp of when it was
visited.

| 

.. _sdk_ubuntu_web_webview_promptDialog-prop:

+--------------------------------------------------------------------------+
|        \ promptDialog : component                                        |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
prompt dialog.

**See also** :ref:`alertDialog <sdk_ubuntu_web_webview#alertDialog-prop>`,
:ref:`confirmDialog <sdk_ubuntu_web_webview#confirmDialog-prop>`, and
:ref:`beforeUnloadDialog <sdk_ubuntu_web_webview#beforeUnloadDialog-prop>`.

| 

.. _sdk_ubuntu_web_webview_title-prop:

+--------------------------------------------------------------------------+
|        \ title : string                                                  |
+--------------------------------------------------------------------------+

The title of the current page.

| 

.. _sdk_ubuntu_web_webview_-method:

+--------------------------------------------------------------------------+
| :ref:` <>`\ url : `url <sdk_ubuntu_web_webview#url-prop>`              |
+--------------------------------------------------------------------------+

The URL of the current page.

| 

Method Documentation
--------------------

.. _sdk_ubuntu_web_webview_void goBack-method:

+--------------------------------------------------------------------------+
|        \ void goBack()                                                   |
+--------------------------------------------------------------------------+

Go back one entry in the navigation history.

**See also** :ref:`canGoBack <sdk_ubuntu_web_webview#canGoBack-prop>` and
:ref:`goForward <sdk_ubuntu_web_webview#goForward-method>`.

| 

.. _sdk_ubuntu_web_webview_void goForward-method:

+--------------------------------------------------------------------------+
|        \ void goForward()                                                |
+--------------------------------------------------------------------------+

Go forward one entry in the navigation history.

**See also** :ref:`canGoForward <sdk_ubuntu_web_webview#canGoForward-prop>`
and :ref:`goBack <sdk_ubuntu_web_webview#goBack-method>`.

| 

.. _sdk_ubuntu_web_webview_void loadHtml-method:

+--------------------------------------------------------------------------+
|        \ void loadHtml(string *html*,                                    |
| :ref:`url <sdk_ubuntu_web_webview#url-prop>` *baseUrl*)                     |
+--------------------------------------------------------------------------+

Load HTML content from memory instead of loading it from a URL. The
``baseUrl`` argument is used to resolve relative URLs in the provided
content.

| 

.. _sdk_ubuntu_web_webview_void reload-method:

+--------------------------------------------------------------------------+
|        \ void reload()                                                   |
+--------------------------------------------------------------------------+

Reload the current page.

**See also** :ref:`stop <sdk_ubuntu_web_webview#stop-method>`.

| 

.. _sdk_ubuntu_web_webview_void stop-method:

+--------------------------------------------------------------------------+
|        \ void stop()                                                     |
+--------------------------------------------------------------------------+

Stop loading the current page. Does nothing if there is no page
currently loading.

**See also** :ref:`reload <sdk_ubuntu_web_webview#reload-method>` and
:ref:`loading <sdk_ubuntu_web_webview#loading-prop>`.

| 

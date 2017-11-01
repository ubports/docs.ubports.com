A webview that can be used to render web content in an application.

+---------------------+-------------------------+
| Import Statement:   | import Ubuntu.Web 0.2   |
+---------------------+-------------------------+

Properties
----------

-  ****`alertDialog </sdk/apps/qml/Ubuntu.Web/WebView#alertDialog-prop>`__****
   : component
-  ****`beforeUnloadDialog </sdk/apps/qml/Ubuntu.Web/WebView#beforeUnloadDialog-prop>`__****
   : component
-  ****`canGoBack </sdk/apps/qml/Ubuntu.Web/WebView#canGoBack-prop>`__****
   : bool
-  ****`canGoForward </sdk/apps/qml/Ubuntu.Web/WebView#canGoForward-prop>`__****
   : bool
-  ****`confirmDialog </sdk/apps/qml/Ubuntu.Web/WebView#confirmDialog-prop>`__****
   : component
-  ****`context </sdk/apps/qml/Ubuntu.Web/WebView#context-prop>`__**** :
   WebContext
-  ****`contextualActions </sdk/apps/qml/Ubuntu.Web/WebView#contextualActions-prop>`__****
   : ActionList
-  ****`contextualData </sdk/apps/qml/Ubuntu.Web/WebView#contextualData-prop>`__****
   : QtObject
-  ****`filePicker </sdk/apps/qml/Ubuntu.Web/WebView#filePicker-prop>`__****
   : component
-  ****`fullscreen </sdk/apps/qml/Ubuntu.Web/WebView#fullscreen-prop>`__****
   : bool
-  ****`icon </sdk/apps/qml/Ubuntu.Web/WebView#icon-prop>`__**** : url
-  ****`incognito </sdk/apps/qml/Ubuntu.Web/WebView#incognito-prop>`__****
   : bool
-  ****`loadProgress </sdk/apps/qml/Ubuntu.Web/WebView#loadProgress-prop>`__****
   : int
-  ****`loading </sdk/apps/qml/Ubuntu.Web/WebView#loading-prop>`__**** :
   bool
-  ****`navigationHistory </sdk/apps/qml/Ubuntu.Web/WebView#navigationHistory-prop>`__****
   : list
-  ****`promptDialog </sdk/apps/qml/Ubuntu.Web/WebView#promptDialog-prop>`__****
   : component
-  ****`title </sdk/apps/qml/Ubuntu.Web/WebView#title-prop>`__**** :
   string
-  ****`url </sdk/apps/qml/Ubuntu.Web/WebView#url-prop>`__**** : url

Methods
-------

-  void
   ****`goBack </sdk/apps/qml/Ubuntu.Web/WebView#goBack-method>`__****\ ()
-  void
   ****`goForward </sdk/apps/qml/Ubuntu.Web/WebView#goForward-method>`__****\ ()
-  void
   ****`loadHtml </sdk/apps/qml/Ubuntu.Web/WebView#loadHtml-method>`__****\ (string
   *html*, url *baseUrl*)
-  void
   ****`reload </sdk/apps/qml/Ubuntu.Web/WebView#reload-method>`__****\ ()
-  void
   ****`stop </sdk/apps/qml/Ubuntu.Web/WebView#stop-method>`__****\ ()

Detailed Description
--------------------

Here is a very simple example of how to use a
`WebView </sdk/apps/qml/Ubuntu.Web/WebView/>`__ to render a web page:

.. code:: qml

    import QtQuick 2.0
    import Ubuntu.Web 0.2
    WebView {
        url: "http://ubuntu.com"
    }

The ``WebView`` component defaults to using a `shared
``WebContext`` </sdk/apps/qml/Ubuntu.Web/SharedWebContext/>`__ that is
shared across all ``WebView`` instances in a given application.

**See also**
`SharedWebContext </sdk/apps/qml/Ubuntu.Web/SharedWebContext/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ alertDialog : component                                         |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
alert dialog.

**See also**
`confirmDialog </sdk/apps/qml/Ubuntu.Web/WebView#confirmDialog-prop>`__,
`promptDialog </sdk/apps/qml/Ubuntu.Web/WebView#promptDialog-prop>`__,
and
`beforeUnloadDialog </sdk/apps/qml/Ubuntu.Web/WebView#beforeUnloadDialog-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ beforeUnloadDialog : component                                  |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
confirmation when the user initiates a navigation away from the current
page, if the page has defined an ``onBeforeUnload`` handler.

**See also**
`alertDialog </sdk/apps/qml/Ubuntu.Web/WebView#alertDialog-prop>`__,
`confirmDialog </sdk/apps/qml/Ubuntu.Web/WebView#confirmDialog-prop>`__,
and
`promptDialog </sdk/apps/qml/Ubuntu.Web/WebView#promptDialog-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ canGoBack : bool                                                |
+--------------------------------------------------------------------------+

Whether the navigation history has a previous entry to navigate back.

**See also** `goBack </sdk/apps/qml/Ubuntu.Web/WebView#goBack-method>`__
and
`canGoForward </sdk/apps/qml/Ubuntu.Web/WebView#canGoForward-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ canGoForward : bool                                             |
+--------------------------------------------------------------------------+

Whether the navigation history has a next entry to navigate forward.

**See also**
`goForward </sdk/apps/qml/Ubuntu.Web/WebView#goForward-method>`__ and
`canGoBack </sdk/apps/qml/Ubuntu.Web/WebView#canGoBack-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ confirmDialog : component                                       |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
confirmation dialog.

**See also**
`alertDialog </sdk/apps/qml/Ubuntu.Web/WebView#alertDialog-prop>`__,
`promptDialog </sdk/apps/qml/Ubuntu.Web/WebView#promptDialog-prop>`__,
and
`beforeUnloadDialog </sdk/apps/qml/Ubuntu.Web/WebView#beforeUnloadDialog-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ context : `WebContext </sdk/apps/qml/Ubuntu.Web/WebContext/>`__ |
+--------------------------------------------------------------------------+

The web context associated to this
`WebView </sdk/apps/qml/Ubuntu.Web/WebView/>`__. By default a `shared
context </sdk/apps/qml/Ubuntu.Web/SharedWebContext/>`__ is used which
should fit most use cases, do not override unless you really need a
finer control over the context.

| 

+--------------------------------------------------------------------------+
|        \ contextualActions : ActionList                                  |
+--------------------------------------------------------------------------+

A list of actions that the user will be presented with when invoking a
context menu (by way of a right click on desktop, or a long press on a
touch-enabled device, on an image or a hyperlink). By default the list
is empty, and no menu is shown. User-defined actions can access the
`contextual
data </sdk/apps/qml/Ubuntu.Web/WebView#contextualData-prop>`__.

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
`contextualData </sdk/apps/qml/Ubuntu.Web/WebView#contextualData-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ contextualData : QtObject                                       |
+--------------------------------------------------------------------------+

An object that holds the contextual data associated with the current
context menu. User-defined `contextual
actions </sdk/apps/qml/Ubuntu.Web/WebView#contextualActions-prop>`__ can
use this data to process it when triggered.

It has the following properties:

-  href (url): the full URI of the hyperlink, if any
-  title (string): the title of the hyperlink, if any
-  img (url): the full URI of the image

Note that in the case of an image enclosed inside a hyperlink, both
``href`` and ``img`` will be available, allowing a user-defined
contextual action to operate on both elements.

**See also**
`contextualActions </sdk/apps/qml/Ubuntu.Web/WebView#contextualActions-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ filePicker : component                                          |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to let the user select files
when the user clicks an ``<input type="file">`` element on the current
page.

| 

+--------------------------------------------------------------------------+
|        \ fullscreen : bool                                               |
+--------------------------------------------------------------------------+

Whether the current page requested fullscreen display.

| 

+--------------------------------------------------------------------------+
|        \ icon : `url </sdk/apps/qml/Ubuntu.Web/WebView#url-prop>`__      |
+--------------------------------------------------------------------------+

The URL of the favicon of the current page.

| 

+--------------------------------------------------------------------------+
|        \ incognito : bool                                                |
+--------------------------------------------------------------------------+

Whether the `WebView </sdk/apps/qml/Ubuntu.Web/WebView/>`__ is being
used in private browsing mode, where no data is persisted across
sessions.

| 

+--------------------------------------------------------------------------+
|        \ loadProgress : int                                              |
+--------------------------------------------------------------------------+

The load progress of the current page (as a integer value between 0 and
100).

**See also**
`loading </sdk/apps/qml/Ubuntu.Web/WebView#loading-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ loading : bool                                                  |
+--------------------------------------------------------------------------+

Whether the current page is loading.

**See also**
`loadProgress </sdk/apps/qml/Ubuntu.Web/WebView#loadProgress-prop>`__,
`stop </sdk/apps/qml/Ubuntu.Web/WebView#stop-method>`__, and
`reload </sdk/apps/qml/Ubuntu.Web/WebView#reload-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ navigationHistory : list                                        |
+--------------------------------------------------------------------------+

The navigation history (back/forward entries) stored as a list model
with a ``currentIndex`` property. Each entry exposes the URL and title
of the corresponding page, as well as a timestamp of when it was
visited.

| 

+--------------------------------------------------------------------------+
|        \ promptDialog : component                                        |
+--------------------------------------------------------------------------+

The QML component that will be instantiated to display a JavaScript
prompt dialog.

**See also**
`alertDialog </sdk/apps/qml/Ubuntu.Web/WebView#alertDialog-prop>`__,
`confirmDialog </sdk/apps/qml/Ubuntu.Web/WebView#confirmDialog-prop>`__,
and
`beforeUnloadDialog </sdk/apps/qml/Ubuntu.Web/WebView#beforeUnloadDialog-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ title : string                                                  |
+--------------------------------------------------------------------------+

The title of the current page.

| 

+--------------------------------------------------------------------------+
|        \ url : `url </sdk/apps/qml/Ubuntu.Web/WebView#url-prop>`__       |
+--------------------------------------------------------------------------+

The URL of the current page.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void goBack()                                                   |
+--------------------------------------------------------------------------+

Go back one entry in the navigation history.

**See also**
`canGoBack </sdk/apps/qml/Ubuntu.Web/WebView#canGoBack-prop>`__ and
`goForward </sdk/apps/qml/Ubuntu.Web/WebView#goForward-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ void goForward()                                                |
+--------------------------------------------------------------------------+

Go forward one entry in the navigation history.

**See also**
`canGoForward </sdk/apps/qml/Ubuntu.Web/WebView#canGoForward-prop>`__
and `goBack </sdk/apps/qml/Ubuntu.Web/WebView#goBack-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ void loadHtml(string *html*,                                    |
| `url </sdk/apps/qml/Ubuntu.Web/WebView#url-prop>`__ *baseUrl*)           |
+--------------------------------------------------------------------------+

Load HTML content from memory instead of loading it from a URL. The
``baseUrl`` argument is used to resolve relative URLs in the provided
content.

| 

+--------------------------------------------------------------------------+
|        \ void reload()                                                   |
+--------------------------------------------------------------------------+

Reload the current page.

**See also** `stop </sdk/apps/qml/Ubuntu.Web/WebView#stop-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ void stop()                                                     |
+--------------------------------------------------------------------------+

Stop loading the current page. Does nothing if there is no page
currently loading.

**See also** `reload </sdk/apps/qml/Ubuntu.Web/WebView#reload-method>`__
and `loading </sdk/apps/qml/Ubuntu.Web/WebView#loading-prop>`__.

| 

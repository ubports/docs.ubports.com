Ubuntu.Web.WebView
==================

.. raw:: html

   <p>

A webview that can be used to render web content in an application.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WebView -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import Ubuntu.Web 0.2

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Obsolete members

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

alertDialog : component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

beforeUnloadDialog : component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canGoBack : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

canGoForward : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

confirmDialog : component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

context : WebContext

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contextModel : QtObject

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contextualActions : ActionList

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

filePicker : component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fullscreen : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

icon : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

incognito : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loadProgress : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

loading : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

navigationHistory : list

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

promptDialog : component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

title : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url : url

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void goBack()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void goForward()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void loadHtml(string html, url baseUrl)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void reload()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void stop()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$WebView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a very simple example of how to use a WebView to render a web
page:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Web 0.2
   <span class="type"><a href="#">WebView</a></span> {
   <span class="name">url</span>: <span class="string">&quot;http://ubuntu.com&quot;</span>
   }</pre>

.. raw:: html

   <p>

The WebView component defaults to using a shared WebContext that is
shared across all WebView instances in a given application.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SharedWebContext.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WebView -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$alertDialog -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="alertDialog-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

alertDialog : component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The QML component that will be instantiated to display a JavaScript
alert dialog.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also beforeUnloadDialog.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@alertDialog -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="beforeUnloadDialog-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

beforeUnloadDialog : component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The QML component that will be instantiated to display a JavaScript
confirmation when the user initiates a navigation away from the current
page, if the page has defined an onBeforeUnload handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also promptDialog.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@beforeUnloadDialog -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canGoBack-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canGoBack : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the navigation history has a previous entry to navigate back.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also canGoForward.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canGoBack -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="canGoForward-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

canGoForward : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the navigation history has a next entry to navigate forward.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also canGoBack.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@canGoForward -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="confirmDialog-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

confirmDialog : component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The QML component that will be instantiated to display a JavaScript
confirmation dialog.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also beforeUnloadDialog.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@confirmDialog -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="context-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

context : WebView. By default a shared context is used which should fit
most use cases, do not override unless you really need a finer control
over the context.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@context -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contextModel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contextModel : QtObject

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

An object that holds the contextual data associated with the current
context menu, as well as methods to interact with this data.
User-defined contextual actions can use this data to process it when
triggered.

.. raw:: html

   </p>

.. raw:: html

   <p>

It has the following properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

linkUrl (url): the full URI of the hyperlink, if any

.. raw:: html

   </li>

.. raw:: html

   <li>

srcUrl (url): the full URI of the image/media, if any

.. raw:: html

   </li>

.. raw:: html

   <li>

mediaType (int): the type of media (one of Oxide.WebView.MediaTypeVideo)

.. raw:: html

   </li>

.. raw:: html

   <li>

isEditable (bool): whether the current element is editable

.. raw:: html

   </li>

.. raw:: html

   <li>

editFlags (int): for editable elements, an OR-combined list of flags
that define the current editing capabilities
(Oxide.WebView.SelectAllCapability)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

It has the following methods:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

saveLink(): initiates a download request for the resource pointed to by
the hyperlink, if any

.. raw:: html

   </li>

.. raw:: html

   <li>

saveMedia(): initiates a download request for the media (image, canvas,
audio, video), if any

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When there is no active context menu, contextModel is null.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also contextualActions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contextModel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contextualActions-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contextualActions : ActionList

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

A list of actions that the user will be presented with when invoking a
context menu (by way of a right click on desktop, or a long press on a
touch-enabled device, on an image or a hyperlink). By default the list
is empty, and no menu is shown. User-defined actions can access the
context model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of user-defined actions:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
   import Ubuntu<span class="operator">.</span>Web <span class="number">0.2</span>
   WebView {
   contextualActions: ActionList {
   Action {
   text: i18n<span class="operator">.</span>tr(<span class="string">&quot;Open link in browser&quot;</span>)
   enabled: contextModel <span class="operator">&amp;</span><span class="operator">&amp;</span> contextModel<span class="operator">.</span>linkUrl<span class="operator">.</span>toString()
   onTriggered: <span class="type">Qt</span><span class="operator">.</span>openUrlExternally(contextModel<span class="operator">.</span>linkUrl)
   }
   }
   }</pre>

.. raw:: html

   <p>

See also contextModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contextualActions -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="filePicker-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

filePicker : component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The QML component that will be instantiated to let the user select files
when the user clicks an <input type="file"> element on the current page.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@filePicker -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fullscreen-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fullscreen : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the current page requested fullscreen display.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fullscreen -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="icon-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

icon : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The URL of the favicon of the current page.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@icon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="incognito-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

incognito : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the WebView is being used in private browsing mode, where no
data is persisted across sessions.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@incognito -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loadProgress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loadProgress : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The load progress of the current page (as a integer value between 0 and
100).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loading.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loadProgress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loading-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

loading : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Whether the current page is loading.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also reload.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loading -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="navigationHistory-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

navigationHistory : list

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The navigation history (back/forward entries) stored as a list model
with a currentIndex property. Each entry exposes the URL and title of
the corresponding page, as well as a timestamp of when it was visited.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@navigationHistory -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="promptDialog-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

promptDialog : component

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The QML component that will be instantiated to display a JavaScript
prompt dialog.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also beforeUnloadDialog.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@promptDialog -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="title-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

title : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The title of the current page.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@title -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="url-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

url : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The URL of the current page.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@url -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$goBack -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="goBack-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void goBack()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Go back one entry in the navigation history.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also goForward.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@goBack -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="goForward-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void goForward()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Go forward one entry in the navigation history.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also goBack.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@goForward -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loadHtml-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void loadHtml(string html, url baseUrl)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Load HTML content from memory instead of loading it from a URL. The
baseUrl argument is used to resolve relative URLs in the provided
content.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loadHtml -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reload-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void reload()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Reload the current page.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also stop.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reload -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="stop-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void stop()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Stop loading the current page. Does nothing if there is no page
currently loading.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also loading.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@stop -->



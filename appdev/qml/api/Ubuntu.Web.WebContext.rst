Ubuntu.Web.WebContext
=====================

.. raw:: html

   <p>

A default context implementation for use with WebView. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WebContext -->

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

acceptLangs : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cachePath : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dataPath : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

userAgent : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$WebContext-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This default WebContext implementation has the default user agent string
used by the Ubuntu browser as well as the UA override mechanism that
allows sending an overridden user agent for given domains/websites,
based on the form factor.

.. raw:: html

   </p>

.. raw:: html

   <p>

It has its data path (for cache and cookie database) set to the standard
writable data location for the current application, which is based on
the application name (see Qt.application.name), for example
~/.local/share/myApp/.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the WebView component already uses this default context, so
there is no need to explicitly instantiate a WebContext unless you want
to override some of its default properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also SharedWebContext.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WebContext -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$acceptLangs -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="acceptLangs-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

acceptLangs : string

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

The list of accepted languages (the Accept-Language HTTP header), as a
comma-separated list of language codes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@acceptLangs -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cachePath-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cachePath : url

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

The local path where network data will be cached. If not set, it
defaults to dataPath.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cachePath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dataPath-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dataPath : url

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

The local path where persistent data (such as cookies) will be stored.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dataPath -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="userAgent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

userAgent : string

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

The default user agent string that will be sent with each HTTP request.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@userAgent -->



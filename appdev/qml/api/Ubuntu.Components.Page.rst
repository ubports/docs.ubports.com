Ubuntu.Components.Page
======================

.. raw:: html

   <p>

A page is the basic Item that represents a single view in an Ubuntu
application. It is recommended to use the Page inside the MainView or
AdaptivePageLayout. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Page -->

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

import Ubuntu.Components 1.3

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

actionContext : ActrionContext

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

header : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Page-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

MainView provides a header for Pages it includes if no header property
was set. However, the application header is deprecated and it is
recommended to set the header property instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

Anchors and height of a Page are automatically determined to align with
the header of the MainView, but can be overridden. Page contents does
not automatically leave space for the Page header, so this must be taken
into account when anchoring the contents of the Page.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="type"><a href="index.html">Page</a></span> {
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">id</span>: <span class="name">pageHeader</span>
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Example page&quot;</span>)
   <span class="name">trailingActionBar</span>.actions: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
   <span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Search&quot;</span>)
   }
   ]
   }
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="type">anchors</span> {
   <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
   <span class="name">top</span>: <span class="name">pageHeader</span>.<span class="name">bottom</span>
   <span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   }
   <span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Hello world!&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@Page -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$actionContext -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="actionContext-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] actionContext : ActrionContext

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

The action context of the page.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@actionContext -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="header-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

header : Item

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

The header property for this page. Setting this property will reparent
the header to the page and disable the MainView's application header.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Page</a></span> {
   <span class="name">id</span>: <span class="name">page</span>
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="string">&quot;Page with header&quot;</span>
   <span class="name">trailingActionBar</span>.actions: [
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;settings&quot;</span> },
   <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">iconName</span>: <span class="string">&quot;info&quot;</span> }
   ]
   <span class="name">flickable</span>: <span class="name">myFlickable</span>
   }
   }</pre>

.. raw:: html

   <p>

To avoid Page content being occluded by the header, the contents of the
Page should anchor to the bottom of the header. When the Page contents
is flickable, the contents does not need to be anchored to the header,
but it is recommended to use a PageHeader or Header component as the
Page header, and set its Header::flickable property so that the
Flickable gets a top-margin that leaves enough space for the header.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PageHeader and Header.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@header -->



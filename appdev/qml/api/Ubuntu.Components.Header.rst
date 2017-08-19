Ubuntu.Components.Header
========================

.. raw:: html

   <p>

Header bar that can contain the title and controls for the current view.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Header -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

StyledItem

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

PageHeader.

.. raw:: html

   </p>

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

automaticHeight : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exposed : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickable : Flickable

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

moving : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Header-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Header can be exposed and hidden by setting the exposed property,
and when a flickable is set, the header will scroll together with the
flickable and expose or hide when the Flickable movement ends.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="name">header</span>: <span class="name">Header</span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
   <span class="name">flickable</span>: <span class="name">scrollableContent</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="comment">// to visualize the header</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
   }
   }
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">id</span>: <span class="name">scrollableContent</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">contentHeight</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">2</span>
   <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Flick me&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The initial y-value is 0, but scrolling the flickable or setting exposed
to false will change the y-value in the range from -height to 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Header -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$automaticHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="automaticHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

automaticHeight : bool

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

The heights of the Page headers in an AdaptivePageLayout are
synchronized by the AdaptivePageLayout so that they all get the height
of the largest implicitHeight of the visible Page headers to give a
uniform look to the headers. To opt-out of this height synchronization,
set automaticHeight to false. This will prevent the AdaptivePageLayout
from taking the Header's implicitHeight into account for computing the
maximum header height, and it will also not update the height of the
header that has automaticHeight set to false to match the other header
heights. Default value: true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@automaticHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exposed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exposed : bool

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

Exposes and hides the header by animating its y-value between -height
and 0 to move it in or out of its parent Item. The value of exposed can
be set directly, or it will be automatically updated when the user
exposes or hides the Header by scrolling the Header's flickable.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exposed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flickable-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

flickable : Flickable

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

When flickable is set, scrolling vertically in the flickable, or setting
the Flickable's y-value will move the header y-position by the same
amount as the flickable content movement. When scrolling the flickable,
upon release, the header will animate to fully exposed or fully hidden
state, depending on whether it was more or less than half exposed when
the user stopped moving the flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

When flickable is null, the header can be exposed or hidden by setting
the exposed property. Note that exposed is not automatically updated
when the value of flickable changes, so if the header must be exposed
when the flickable changes (or is set to null), this must be done
explicitly. Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.3
   <span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="type"><a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a></span> {
   <span class="name">id</span>: <span class="name">layout</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">primaryPage</span>: <span class="name">Page</span> {
   <span class="name">id</span>: <span class="name">page</span>
   <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
   <span class="name">id</span>: <span class="name">contentFlick</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">topMargin</span>: <span class="name">page</span>.<span class="name">header</span>.<span class="name">flickable</span> ? <span class="number">0</span> : <span class="name">page</span>.<span class="name">header</span>.<span class="name">height</span>
   <span class="name">contentHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">200</span>)
   <span class="comment">// Scrolling here can hide the header.</span>
   }
   <span class="name">header</span>: <span class="name">PageHeader</span> {
   <span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Navigation&quot;</span>)
   <span class="name">flickable</span>: <span class="name">layout</span>.<span class="name">columns</span> <span class="operator">===</span> <span class="number">1</span> ? <span class="name">contentFlick</span> : <span class="number">null</span>
   <span class="comment">// Show header when it gets locked in a two-column layout:</span>
   <span class="name">onFlickableChanged</span>: <span class="name">exposed</span> <span class="operator">=</span> <span class="number">true</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

The topMargin of the flickable will automatically be updated by adding
the height of the header to the current topMargin. When changing the
flickable, the topMargin of the previous flickable is restored by
subtracting the header height from it. Making the header invisible has
the same effect on the topMargin as unsetting the flickable.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is permitted to use a ListView as the value of flickable, but this
works well only if the ListView.header property is not set.
Alternatively, a Header component may be used for ListView.header, but
in that case the flickable of the Header must be null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flickable -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="moving-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] moving : bool

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

Indicates whether the header is currently moving, either because
contentY of the flickable changes (due to user interaction or by setting
it directly), or because the header is animating in or out because the
value of exposed was updated.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@moving -->



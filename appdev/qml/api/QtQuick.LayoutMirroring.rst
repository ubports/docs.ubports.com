QtQuick.LayoutMirroring
=======================

.. raw:: html

   <p>

Property used to mirror layout behavior More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@LayoutMirroring -->

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

import QtQuick 2.4

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

childrenInherit : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$LayoutMirroring-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The LayoutMirroring attached property is used to horizontally mirror
Item anchors, positioner types (such as Row and Grid) and views (such as
GridView and horizontal ListView). Mirroring is a visual change: left
anchors become right anchors, and positioner types like Grid and Row
reverse the horizontal layout of child items.

.. raw:: html

   </p>

.. raw:: html

   <p>

Mirroring is enabled for an item by setting the enabled property to
true. By default, this only affects the item itself; setting the
childrenInherit property to true propagates the mirroring behavior to
all child items as well. If the LayoutMirroring attached property has
not been defined for an item, mirroring is not enabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows mirroring in action. The Row below is
specified as being anchored to the left of its parent. However, since
mirroring has been enabled, the anchor is horizontally reversed and it
is now anchored to the right. Also, since items in a Row are positioned
from left to right by default, they are now positioned from right to
left instead, as demonstrated by the numbering and opacity of the items:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">LayoutMirroring</span>.enabled: <span class="number">true</span>
   <span class="name">LayoutMirroring</span>.childrenInherit: <span class="number">true</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="name">border</span>.width: <span class="number">1</span>
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">margins</span>: <span class="number">5</span> }
   <span class="name">y</span>: <span class="number">5</span>; <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">5</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">opacity</span>: (<span class="number">5</span> <span class="operator">-</span> <span class="name">index</span>) <span class="operator">/</span> <span class="number">5</span>
   <span class="name">width</span>: <span class="number">40</span>; <span class="name">height</span>: <span class="number">40</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">index</span> <span class="operator">+</span> <span class="number">1</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Layout mirroring is useful when it is necessary to support both
left-to-right and right-to-left layout versions of an application to
target different language areas. The childrenInherit property allows
layout mirroring to be applied without manually setting layout
configurations for every item in an application. Keep in mind, however,
that mirroring does not affect any positioning that is defined by the
Item x coordinate value, so even with mirroring enabled, it will often
be necessary to apply some layout fixes to support the desired layout
direction. Also, it may be necessary to disable the mirroring of
individual child items (by setting LayoutMirroring.enabled to false for
such items) if mirroring is not the desired behavior, or if the child
item already implements mirroring in some custom way.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Right-to-left User Interfaces for further details on using
LayoutMirroring and other related features to implement right-to-left
support for an application.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@LayoutMirroring -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$childrenInherit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="childrenInherit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

childrenInherit : bool

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

This property holds whether the LayoutMirroring.enabled value for this
item is inherited by its children.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@childrenInherit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

This property holds whether the item's layout is mirrored horizontally.
Setting this to true horizontally reverses anchor settings such that
left anchors become right, and right anchors become left. For positioner
types (such as Row and Grid) and view types (such as GridView and
ListView) this also mirrors the horizontal layout direction of the item.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->



QtQuick.KeyNavigation
=====================

.. raw:: html

   <p>

Supports key navigation by arrow keys More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@KeyNavigation -->

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

backtab : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

down : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

left : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

priority : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

right : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

tab : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

up : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$KeyNavigation-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Key-based user interfaces commonly allow the use of arrow keys to
navigate between focusable items. The KeyNavigation attached property
enables this behavior by providing a convenient way to specify the item
that should gain focus when an arrow or tab key is pressed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example provides key navigation for a 2x2 grid of items:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">columns</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">topLeft</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">KeyNavigation</span>.right: <span class="name">topRight</span>
   <span class="name">KeyNavigation</span>.down: <span class="name">bottomLeft</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">topRight</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">KeyNavigation</span>.left: <span class="name">topLeft</span>
   <span class="name">KeyNavigation</span>.down: <span class="name">bottomRight</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">bottomLeft</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">KeyNavigation</span>.right: <span class="name">bottomRight</span>
   <span class="name">KeyNavigation</span>.up: <span class="name">topLeft</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">bottomRight</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="name">focus</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;lightgray&quot;</span>
   <span class="name">KeyNavigation</span>.left: <span class="name">bottomLeft</span>
   <span class="name">KeyNavigation</span>.up: <span class="name">topRight</span>
   }
   }</pre>

.. raw:: html

   <p>

The top-left item initially receives focus by setting focus to true.
When an arrow key is pressed, the focus will move to the appropriate
item, as defined by the value that has been set for the KeyNavigation
left, right, up or down properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that if a KeyNavigation attached property receives the key press
and release events for a requested arrow or tab key, the event is
accepted and does not propagate any further.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, KeyNavigation receives key events after the item to which it
is attached. If the item accepts the key event, the KeyNavigation
attached property will not receive an event for that key. Setting the
priority property to KeyNavigation.BeforeItem allows the event to be
used for key navigation before the item, rather than after.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the item to which the focus is switching is not enabled or visible,
an attempt will be made to skip this item and focus on the next. This is
possible if there are a chain of items with the same KeyNavigation
handler. If multiple items in a row are not enabled or visible, they
will also be skipped.

.. raw:: html

   </p>

.. raw:: html

   <p>

KeyNavigation will implicitly set the other direction to return focus to
this item. So if you set left to another item, right will be set on that
item's KeyNavigation to set focus back to this item. However, if that
item's KeyNavigation has had right explicitly set then no change will
occur. This means that the example above could achieve the same behavior
without specifying KeyNavigation.right or KeyNavigation.down for any of
the items.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Keys attached property.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@KeyNavigation -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$backtab -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="backtab-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

backtab : Item

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

These properties hold the item to assign focus to when the Tab key or
Shift+Tab key combination (Backtab) are pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@backtab -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="down-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

down : Item

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

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@down -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="left-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

left : Item

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

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@left -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="priority-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

priority : enumeration

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

This property determines whether the keys are processed before or after
the attached item's own key handling.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

KeyNavigation.BeforeItem - process the key events before normal item key
processing. If the event is used for key navigation, it will be accepted
and will not be passed on to the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

KeyNavigation.AfterItem (default) - process the key events after normal
item key handling. If the item accepts the key event it will not be
handled by the KeyNavigation attached property handler.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@priority -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="right-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

right : Item

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

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@right -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="tab-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

tab : Item

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

These properties hold the item to assign focus to when the Tab key or
Shift+Tab key combination (Backtab) are pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tab -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="up-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

up : Item

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

These properties hold the item to assign focus to when the left, right,
up or down cursor keys are pressed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@up -->



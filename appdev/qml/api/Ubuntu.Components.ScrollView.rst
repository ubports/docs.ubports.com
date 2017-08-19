Ubuntu.Components.ScrollView
============================

.. raw:: html

   <p>

ScrollView is a scrollable view that features scrollbars and scrolling
via keyboard keys. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ScrollView -->

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

contentItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickableItem : Item

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

horizontalScrollbar : Scrollbar

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verticalScrollbar : Scrollbar

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

viewport : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ScrollView-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

ScrollView is the recommended component to use in the implementation of
scrollable content. It features scrollbars and handles keyboard input.
Old applications that implemented scrollable views directly using the
Scrollbar component should migrate to ScrollView, to ensure the UX is
ready for convergent devices and is consistent with the rest of the
platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

ScrollView wraps Scrollbar(s) in a view, and provides additional
features such as:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  Keyboard navigation and focus handling, for a complete convergent
   experience.

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  Automatic position handling of vertical and horizontal scrollbars,
      preventing them from overlapping one another when both on screen.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      Adding scrollbars and keyboard input handling to a QML item is as
      simple as wrapping that item in a ScrollView, as shown in the
      following example:

      .. raw:: html

         </p>

      .. raw:: html

         <pre class="qml">import QtQuick 2.4
         import Ubuntu.Components 1.3
         <span class="type"><a href="index.html">ScrollView</a></span> {
         <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
         <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
         <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
         <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">140</span>)
         <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
         <span class="name">gradient</span>: <span class="name">Gradient</span> {
         <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
         <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
         }
         }
         }</pre>

      .. raw:: html

         <p>

      NOTE: the items that are wrapped in the ScrollView are reparanted
      to viewport.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@ScrollView -->

      .. raw:: html

         <h2>

      Property Documentation

      .. raw:: html

         </h2>

      .. raw:: html

         <!-- $$$contentItem -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="contentItem-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      [default] contentItem : Item

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

      The contentItem of the ScrollView. This is set by the user. Note
      that the definition of contentItem is somewhat different to that
      of a Flickable, where the contentItem is implicitly created.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@contentItem -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="flickableItem-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      [read-only] flickableItem : Item

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

      The flickableItem of the ScrollView. If the contentItem provided
      to the ScrollView is a Flickable, that will be the flickableItem.
      Otherwise ScrollView will create a Flickable which will hold the
      items provided as children.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@flickableItem -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="horizontalScrollbar-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      horizontalScrollbar : Scrollbar

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

      This property holds the horizontal scrollbar used in the
      ScrollView. It provides access to the scrollbar thus making it
      possible to change its properties or completely replace it with a
      custom Scrollbar object.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      This property defaults to an instance of Scrollbar.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      NOTE: some Scrollbar properties are already handled by ScrollView,
      and their value should hence not be overridden. These properties
      are:

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      anchors margins, such as anchors.topMargin etc.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      the parent Item

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Scrollbar::flickableItem

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <!-- @@@horizontalScrollbar -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="verticalScrollbar-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      verticalScrollbar : Scrollbar

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

      This property holds the vertical scrollbar used in the ScrollView.
      It provides access to the scrollbar thus making it possible to
      change its properties or completely replace it with a custom
      Scrollbar object.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      This property defaults to an instance of Scrollbar.

      .. raw:: html

         </p>

      .. raw:: html

         <p>

      NOTE: some Scrollbar properties are already handled by ScrollView,
      and their value should hence not be overridden. These properties
      are:

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      anchors margins, such as anchors.topMargin etc.

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      the parent Item

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Scrollbar::flickableItem

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <!-- @@@verticalScrollbar -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="viewport-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      [read-only] viewport : Item

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

      This property holds the viewport Item. The children of the
      ScrollView element are reparented to this item to make sure the
      scrollbars are correctly positioned and the items are clipped at
      their boundaries.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@viewport -->

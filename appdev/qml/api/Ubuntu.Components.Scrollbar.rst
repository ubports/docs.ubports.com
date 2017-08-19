Ubuntu.Components.Scrollbar
===========================

.. raw:: html

   <p>

The Scrollbar component provides scrolling functionality for scrollable
views (i.e. Flickable, ListView). More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Scrollbar -->

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

align : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flickableItem : Flickable

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Scrollbar-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

NOTE: the Scrollbar component was revamped for OTA9 and used for the
implementation of ScrollView. Apps targeting system version OTA9 (or
newer) should use ScrollView instead of Scrollbar, as it features
convergent-ready features, such as (but not limited to) keyboard input
handling.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Scrollbar can be set to any flickable and has built-in anchoring
setup to the attached flickable's front, rear, top or bottom. The
scrollbar can also be aligned using anchors, however the built-in align
functionality makes sure to have the proper alignemt applied based on
theme and layout direction (RTL or LTR).

.. raw:: html

   </p>

.. raw:: html

   <p>

The content position is driven through the attached Flickable. Therefore
every style implementation should drive the position through
contentX/contentY properties, depending on whether the orientation is
vertical or horizontal.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">list</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
   <span class="name">model</span>: <span class="number">30</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
   }
   }
   }
   <span class="type"><a href="index.html">Scrollbar</a></span> {
   <span class="name">flickableItem</span>: <span class="name">list</span>
   <span class="name">align</span>: <span class="name">Qt</span>.<span class="name">AlignTrailing</span>
   }
   }</pre>

.. raw:: html

   <h2 id="vertical-scrollbar-and-flickable-behaviour">

Vertical Scrollbar and Flickable behaviour

.. raw:: html

   </h2>

.. raw:: html

   <p>

Since Flickable's topMargin and bottomMargin are modified by Ubuntu
components such as BottomEdgeHint and Header in their positioning logic,
the Scrollbar component uses the value of those properties to its top
and bottom anchors margins, by default. This is to prevent any overlap
with BottomEdgeHint or Header (see Vertical Scrollbar and Header
behaviour for more info about that). In case you need to specify custom
Flickable content margins (note: we're talking about content margins,
not anchors ones), you will also have to override the top and bottom
anchors margins of the Scrollbar accordingly.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="vertical-scrollbar-and-header-behaviour">

Vertical Scrollbar and Header behaviour

.. raw:: html

   </h2>

.. raw:: html

   <p>

The thumb of the Scrollbar should not move or resize unexpectedly. It
would be confusing, for instance, if it moved under the user's finger
(or pointer) while he's dragging it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Because the size and position of the thumb in a scrollbar is related to
the size of the trough (or track) it slides in, it is important that the
trough does not resize or move while the user is interacting with the
component.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the context of a Page with a Header that slides in and out
dynamically when the user flicks the surface (see Header::flickable), a
vertical Scrollbar that is linked to the same flickable surface as the
Header behaves as described below:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

-  when the Header is exposed, the Scrollbar component sits right below
   it, thus avoiding overlaps;

   .. raw:: html

      </li>

   .. raw:: html

      <li>

   -  when the Header hides due to the user either flicking the surface
      or dragging the thumb, the trough of the Scrollbar does not resize
      or move, thus avoiding unexpected changes in thumb's position or
      size. As a side effect, the space above the Scrollbar, previously
      occupied by Header, stays empty until the Header is exposed again.

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

       This behaviour is intended and makes for a less confusing User
      Experience.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@Scrollbar -->

      .. raw:: html

         <h2>

      Property Documentation

      .. raw:: html

         </h2>

      .. raw:: html

         <!-- $$$align -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="align-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      align : int

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

      The property defines the alignment of the scrollbar to the
      flickableItem. The implementation handles the alignment as
      follows:

      .. raw:: html

         </p>

      .. raw:: html

         <ul>

      .. raw:: html

         <li>

      Qt.AlignLeading anchors to the left on LTR and to the right on RTL
      layouts

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Qt.AlignTrailing anchors to the right on LTR and to the left on
      RTL layouts

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Qt.AlignTop anchors to the top

      .. raw:: html

         </li>

      .. raw:: html

         <li>

      Qt.AlignBottom anchors to the bottom

      .. raw:: html

         </li>

      .. raw:: html

         </ul>

      .. raw:: html

         <p>

      The default value is Qt.AlignTrailing.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@align -->

      .. raw:: html

         <table class="qmlname">

      .. raw:: html

         <tr valign="top" id="flickableItem-prop">

      .. raw:: html

         <td class="tblQmlPropNode">

      .. raw:: html

         <p>

      flickableItem : Flickable

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

      This property holds the flickable item (Flickable, ListView or
      GridView) the Scrollbar is attached to.

      .. raw:: html

         </p>

      .. raw:: html

         <!-- @@@flickableItem -->

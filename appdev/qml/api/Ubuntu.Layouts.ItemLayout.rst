Ubuntu.Layouts.ItemLayout
=========================

.. raw:: html

   <p>

ItemLayout defines a new size & position of a single Item, for the
purposes of specifying layouts. This is to be used within a
ConditionalLayout definition. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ItemLayout -->

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

import Ubuntu.Layouts 1.0

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

item : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ItemLayout-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Use ItemLayout to define the size and position of a single item within a
layout. The item name to be positioned should be specified in item
property, which should correspond to the string specified in
Layouts.item attached to an Item in the default layout. The Item with
Layouts.item attached is reparented into ItemLayout and it is anchor
filled to it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Layouts 0.1
   <span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
   <span class="name">id</span>: <span class="name">layouts</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
   <span class="name">layouts</span>: [
   <span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
   <span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
   <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="type"><a href="index.html">ItemLayout</a></span> {
   <span class="name">item</span>: <span class="string">&quot;input&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
   }
   <span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
   <span class="name">text</span>: <span class="string">&quot;extra component&quot;</span>
   }
   }
   }
   ]
   <span class="comment">// default layout</span>
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;input&quot;</span>
   <span class="name">Layouts</span>.item: <span class="string">&quot;input&quot;</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ItemLayout -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$item -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="item-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

item : string

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

The property holds the item name to be positioned in the fragment.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@item -->



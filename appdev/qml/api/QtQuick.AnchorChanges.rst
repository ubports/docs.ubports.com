QtQuick.AnchorChanges
=====================

.. raw:: html

   <p>

Specifies how to change the anchors of an item in a state More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnchorChanges -->

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

anchors

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

anchors.left : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchors.right : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchors.horizontalCenter : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchors.top : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchors.bottom : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchors.verticalCenter : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

anchors.baseline : AnchorLine

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AnchorChanges-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AnchorChanges type is used to modify the anchors of an item in a
State.

.. raw:: html

   </p>

.. raw:: html

   <p>

AnchorChanges cannot be used to modify the margins on an item. For this,
use PropertyChanges intead.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example we change the top and bottom anchors of an item
using AnchorChanges, and the top and bottom anchor margins using
PropertyChanges:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">window</span>
   <span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">id</span>: <span class="name">myRect</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
   <span class="name">states</span>: <span class="name">State</span> {
   <span class="name">name</span>: <span class="string">&quot;reanchored&quot;</span>
   <span class="type"><a href="index.html">AnchorChanges</a></span> {
   <span class="name">target</span>: <span class="name">myRect</span>
   <span class="name">anchors</span>.top: <span class="name">window</span>.<span class="name">top</span>
   <span class="name">anchors</span>.bottom: <span class="name">window</span>.<span class="name">bottom</span>
   }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">myRect</span>
   <span class="name">anchors</span>.topMargin: <span class="number">10</span>
   <span class="name">anchors</span>.bottomMargin: <span class="number">10</span>
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reanchored&quot;</span> }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

AnchorChanges can be animated using AnchorAnimation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//animate our anchor changes</span>
   <span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
   <span class="type"><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a></span> {}
   }</pre>

.. raw:: html

   <p>

Changes to anchor margins can be animated using NumberAnimation.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on anchors see Anchor Layouts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnchorChanges -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$anchors -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="anchors-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

anchors group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.left-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.left : AnchorLine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.right-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.right : AnchorLine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.horizontalCenter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.horizontalCenter : AnchorLine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.top-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.top : AnchorLine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.bottom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.bottom : AnchorLine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.verticalCenter-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.verticalCenter : AnchorLine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="anchors.baseline-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

anchors.baseline : AnchorLine

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

These properties change the respective anchors of the item.

.. raw:: html

   </p>

.. raw:: html

   <p>

To reset an anchor you can assign undefined:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">AnchorChanges</a></span> {
   <span class="name">target</span>: <span class="name">myItem</span>
   <span class="name">anchors</span>.left: <span class="name">undefined</span>          <span class="comment">//remove myItem's left anchor</span>
   <span class="name">anchors</span>.right: <span class="name">otherItem</span>.<span class="name">right</span>
   }</pre>

.. raw:: html

   <!-- @@@anchors -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Item

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

This property holds the Item for which the anchor changes will be
applied.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->



QtQuick.Positioner
==================

.. raw:: html

   <p>

Provides attached properties that contain details on where an item
exists in a positioner More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Positioner -->

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

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

index : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isFirstItem : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isLastItem : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Positioner-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

An object of type Positioner is attached to the top-level child item
within a Column, Row, Flow or Grid. It provides properties that allow a
child item to determine where it exists within the layout of its parent
Column, Row, Flow or Grid.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a Grid with 16 child rectangles, as created
through a Repeater. Each Rectangle displays its index in the Grid using
Positioner.index, and the first item is colored differently by taking
Positioner.isFirstItem into account:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Grid {
   Repeater {
   model: <span class="number">16</span>
   Rectangle {
   id: rect
   width: <span class="number">30</span>; height: <span class="number">30</span>
   border<span class="operator">.</span>width: <span class="number">1</span>
   color: Positioner<span class="operator">.</span>isFirstItem <span class="operator">?</span> <span class="string">&quot;yellow&quot;</span> : <span class="string">&quot;lightsteelblue&quot;</span>
   Text { text: rect<span class="operator">.</span>Positioner<span class="operator">.</span>index }
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Positioner -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="index-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Positioner.index : int

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

This property allows the item to determine its index within the
positioner.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isFirstItem-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Positioner.isFirstItem : bool

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

These properties allow the item to determine if it is the first or last
item in the positioner, respectively.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isFirstItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isLastItem-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

Positioner.isLastItem : bool

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

These properties allow the item to determine if it is the first or last
item in the positioner, respectively.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isLastItem -->



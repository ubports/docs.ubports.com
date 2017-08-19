QtQuick.PathAttribute
=====================

.. raw:: html

   <p>

Specifies how to set an attribute at a given position in a Path More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathAttribute -->

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PathAttribute-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The PathAttribute object allows attributes consisting of a name and a
value to be specified for various points along a path. The attributes
are exposed to the delegate as Attached Properties. The value of an
attribute at any particular point along the path is interpolated from
the PathAttributes bounding that point.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below shows a path with the items scaled to 30% with opacity
50% at the top of the path and scaled 100% with opacity 100% at the
bottom. Note the use of the PathView.iconScale and PathView.iconOpacity
attached properties to set the scale and opacity of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">delegate</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">scale</span>: <span class="name">PathView</span>.<span class="name">iconScale</span>
   <span class="name">opacity</span>: <span class="name">PathView</span>.<span class="name">iconOpacity</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">anchors</span>.horizontalCenter: <span class="name">nameText</span>.<span class="name">horizontalCenter</span>; <span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>; <span class="name">source</span>: <span class="name">icon</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">nameText</span>; <span class="name">text</span>: <span class="name">name</span>; <span class="name">font</span>.pointSize: <span class="number">16</span> }
   }
   }
   }
   <span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">ContactModel</span> {}
   <span class="name">delegate</span>: <span class="name">delegate</span>
   <span class="name">path</span>: <span class="name">Path</span> {
   <span class="name">startX</span>: <span class="number">120</span>; <span class="name">startY</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
   <span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">1.0</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">controlX</span>: <span class="number">260</span>; <span class="name">controlY</span>: <span class="number">75</span> }
   <span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconScale&quot;</span>; <span class="name">value</span>: <span class="number">0.3</span> }
   <span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;iconOpacity&quot;</span>; <span class="name">value</span>: <span class="number">0.5</span> }
   <span class="type"><a href="QtQuick.PathQuad.md">PathQuad</a></span> { <span class="name">x</span>: <span class="number">120</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">controlX</span>: -<span class="number">20</span>; <span class="name">controlY</span>: <span class="number">75</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

(see the PathView documentation for the specification of
ContactModel.qml used for ContactModel above.)

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

See also Path.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PathAttribute -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property holds the name of the attribute to change.

.. raw:: html

   </p>

.. raw:: html

   <p>

This attribute will be available to the delegate as PathView.<name>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that using an existing Item property name such as "opacity" as an
attribute is allowed. This is because path attributes add a new Attached
Property which in no way clashes with existing properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : real

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

This property holds the value for the attribute.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value specified can be used to influence the visual appearance of an
item along the path. For example, the following Path specifies an
attribute named itemRotation, which has the value 0 at the beginning of
the path, and the value 90 at the end of the path.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Path.md">Path</a></span> {
   <span class="name">startX</span>: <span class="number">0</span>
   <span class="name">startY</span>: <span class="number">0</span>
   <span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;itemRotation&quot;</span>; <span class="name">value</span>: <span class="number">0</span> }
   <span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span> }
   <span class="type"><a href="index.html">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">&quot;itemRotation&quot;</span>; <span class="name">value</span>: <span class="number">90</span> }
   }</pre>

.. raw:: html

   <p>

In our delegate, we can then bind the rotation property to the Attached
Property PathView.itemRotation created for this attribute.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">10</span>
   <span class="name">rotation</span>: <span class="name">PathView</span>.<span class="name">itemRotation</span>
   }</pre>

.. raw:: html

   <p>

As each item is positioned along the path, it will be rotated
accordingly: an item at the beginning of the path with be not be
rotated, an item at the end of the path will be rotated 90 degrees, and
an item mid-way along the path will be rotated 45 degrees.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->



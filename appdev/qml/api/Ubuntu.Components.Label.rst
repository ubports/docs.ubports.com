Ubuntu.Components.Label
=======================

.. raw:: html

   <p>

Extended Text item with Ubuntu styling. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Label -->

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

Text

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

textSize : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Label-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Label is an extended Text item with Ubuntu styling. It exposes an
additional property that provides adaptive resizing based on the
measurement unit.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
   <span class="type"><a href="index.html">Label</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
   <span class="name">textSize</span>: <span class="name">Label</span>.<span class="name">Large</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@Label -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$textSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="textSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

textSize : enumeration

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

This property holds an abstract size that allows adaptive resizing based
on the measurement unit (see Units). The default value is Label.Medium.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Setting this disables support for the deprecated fontSize
property.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Label.XxSmall - extremely small font size

.. raw:: html

   </li>

.. raw:: html

   <li>

Label.XSmall - very small font size

.. raw:: html

   </li>

.. raw:: html

   <li>

Label.Small - small font size

.. raw:: html

   </li>

.. raw:: html

   <li>

Label.Medium - medium font size

.. raw:: html

   </li>

.. raw:: html

   <li>

Label.Large - large font size

.. raw:: html

   </li>

.. raw:: html

   <li>

Label.XLarge - very large font size

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.3.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@textSize -->



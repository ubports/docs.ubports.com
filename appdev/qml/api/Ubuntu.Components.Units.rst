Ubuntu.Components.Units
=======================

.. raw:: html

   <p>

Units of measurement for sizes, spacing, margin, etc. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Units -->

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

gridUnit : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

real dp(real value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

real gu(real value)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Units-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Units provides facilities for measuring UI elements in a variety of
units other than just pixels.

.. raw:: html

   </p>

.. raw:: html

   <p>

A global instance of Units is exposed as the units context property.
Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
   }</pre>

.. raw:: html

   <p>

See also Resolution Independence.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Units -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$gridUnit -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gridUnit-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

gridUnit : real

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

The number of pixels 1 grid unit corresponds to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gridUnit -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$dp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dp-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

real dp(real value)

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

Returns the number of pixels value density independent pixels correspond
to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dp -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="gu-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

real gu(real value)

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

Returns the number of pixels value grid units correspond to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@gu -->



Ubuntu.Components.ProgressBar
=============================

.. raw:: html

   <p>

The ProgressBar component visually indicates the progress of a process
of determinate or indeterminate duration. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ProgressBar -->

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

indeterminate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumValue : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumValue : real

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

   <!-- $$$ProgressBar-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">ProgressBar</a></span> {
   <span class="name">id</span>: <span class="name">indeterminateBar</span>
   <span class="name">indeterminate</span>: <span class="number">true</span>
   }
   <span class="type"><a href="index.html">ProgressBar</a></span> {
   <span class="name">id</span>: <span class="name">determinateBar</span>
   <span class="name">minimumValue</span>: -<span class="number">3.0</span>
   <span class="name">maximumValue</span>: <span class="number">15</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ProgressBar -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$indeterminate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="indeterminate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

indeterminate : bool

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

Specifies whether the progress interval is unknown. When set, altering
other properties do not have any effect on the component's behavior. By
default the property is set to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@indeterminate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumValue-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumValue : real

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

Specifies the maximum value of the progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumValue -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumValue-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumValue : real

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

Specifies the minimum value of the progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumValue -->

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

Specifies the current value of the progress

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->



Ubuntu.Components.PageColumn
============================

.. raw:: html

   <p>

Component configuring the metrics of a column in AdaptivePageLayout.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageColumn -->

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

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

QtObject

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

fillWidth : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximumWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

minimumWidth : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

preferredWidth : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PageColumn-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PageColumn -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$fillWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fillWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fillWidth : bool

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

Specifies whether the width of the column should fill the available
space of the AdaptivePageLayout column or not. Defaults to false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximumWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximumWidth : real

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

Specifies the maximum width of the column. A maximum value of 0 will be
ignored. Defaults to the maximum positive value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximumWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="minimumWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

minimumWidth : real

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

Specifies the minimum width of the column. Defaults to 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@minimumWidth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="preferredWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

preferredWidth : real

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

Specifies the preferred width of the column when the layout is
initialized. Defaults to 0. AdaptivePageLayout clamps the given value
between minimumWidth and maximumWidth. The value must be set if the
fillWidth and minimumWidth are not set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preferredWidth -->



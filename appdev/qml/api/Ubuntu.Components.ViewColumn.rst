Ubuntu.Components.ViewColumn
============================

.. raw:: html

   <p>

View column metrics configuration for SplitView. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ViewColumn -->

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

import .

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

   <!-- $$$ViewColumn-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The component provides width metrics configuration for SplitView layout
columns. The values are applied on columns by an active SplitViewLayout.
On resizing, the values are preserved for the entire lifetime of the
component, even when the active layout is changed into an other one.
When changed back, the previous values will be used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ViewColumn -->

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

If set, the column width will take the space available after all the
other columns with non-fill width are configured. This means that if
there is more than one column configured to fill width, the reminder
width is split evenly between these columns. If all columns are
configured to fill width, the colum widths will be split evenly between
all the columns.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: When a column configured with fillWidth is resized, the properties
will not be altered, but the fillWidth wioll no longer be taken into
account. Instead, the preferredWidth will drive the width of that column
from that point on.

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

Specifies the maximum width of the column. The number must be a positive
value and bigger than the minimumWidth value.

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

Specifies the minimum width of the column. The number must be a positive
value and less or equal than the maximumWidth value.

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

The property holds the preferred width of the column. The value must be
situated in between minimumWidth and maximumWidth. In case fillWidth is
set, the value will hold the actual width of the column, but setting its
value will not affect the width of the column.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@preferredWidth -->



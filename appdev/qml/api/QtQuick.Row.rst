QtQuick.Row
===========

.. raw:: html

   <p>

Positions its children in a row More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Row -->

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

Item

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

add : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

effectiveLayoutDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

layoutDirection : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

move : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

populate : Transition

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spacing : real

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Row-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Row is a type that positions its child items along a single row. It can
be used as a convenient way to horizontally position a series of items
without using anchors.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a Row that contains three rectangles of various sizes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Row</a></span> {
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
   }</pre>

.. raw:: html

   <p>

The Row automatically positions these items in a horizontal formation,
like this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item within a Row is not visible, or if it has a width or height
of 0, the item will not be laid out and it will not be visible within
the row. Also, since a Row automatically positions its children
horizontally, a child item within a Row should not set its x position or
horizontally anchor itself using the left, right,
anchors.horizontalCenter, fill or centerIn anchors. If you need to
perform these actions, consider positioning the items without the use of
a Row.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that items in a Row can use the Positioner attached property to
access more information about its position within the Row.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on using Row and other related positioner-types,
see Item Positioners.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Column, Grid, Flow, Positioner, RowLayout, and Qt Quick
Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Row -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="add-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

add : Transition

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

This property holds the transition to be run for items that are added to
this positioner. For a positioner, this applies to:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Items that are created or reparented as a child of the positioner after
the positioner has been created

.. raw:: html

   </li>

.. raw:: html

   <li>

Child items that change their Item::visible property from false to true,
and thus are now visible

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The transition can use the ViewTransition property to access more
details about the item that is being added. See the ViewTransition
documentation for more details and examples on using these transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This transition is not applied to the items that already part of
the positioner at the time of its creation. In this case, the populate
transition is applied instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also populate, ViewTransition, and Qt Quick Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@add -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="effectiveLayoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

effectiveLayoutDirection : enumeration

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

This property holds the effective layout direction of the row.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using the attached property LayoutMirroring::enabled for locale
layouts, the visual layout direction of the row positioner will be
mirrored. However, the property layoutDirection will remain unchanged.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Row::layoutDirection and LayoutMirroring.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@effectiveLayoutDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="layoutDirection-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

layoutDirection : enumeration

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

This property holds the layoutDirection of the row.

.. raw:: html

   </p>

.. raw:: html

   <p>

Possible values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.LeftToRight (default) - Items are laid out from left to right. If the
width of the row is explicitly set, the left anchor remains to the left
of the row.

.. raw:: html

   </li>

.. raw:: html

   <li>

Qt.RightToLeft - Items are laid out from right to left. If the width of
the row is explicitly set, the right anchor remains to the right of the
row.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also Grid::layoutDirection, Flow::layoutDirection, and Qt Quick
Examples - Right to Left.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@layoutDirection -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

move : Transition

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

This property holds the transition to run for items that have moved
within the positioner. For a positioner, this applies to:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Child items that move when they are displaced due to the addition,
removal or rearrangement of other items in the positioner

.. raw:: html

   </li>

.. raw:: html

   <li>

Child items that are repositioned due to the resizing of other items in
the positioner

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The transition can use the ViewTransition property to access more
details about the item that is being moved. Note, however, that for this
move transition, the ViewTransition.targetIndexes and
ViewTransition.targetItems lists are only set when this transition is
triggered by the addition of other items in the positioner; in other
cases, these lists will be empty. See the ViewTransition documentation
for more details and examples on using these transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: In Qt Quick 1, this transition was applied to all items that were
part of the positioner at the time of its creation. From QtQuick 2
onwards, positioners apply the populate transition to these items
instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also add, ViewTransition, and Qt Quick Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="populate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

populate : Transition

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

This property holds the transition to be run for items that are part of
this positioner at the time of its creation. The transition is run when
the positioner is first created.

.. raw:: html

   </p>

.. raw:: html

   <p>

The transition can use the ViewTransition property to access more
details about the item that is being added. See the ViewTransition
documentation for more details and examples on using these transitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also add, ViewTransition, and Qt Quick Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@populate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spacing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spacing : real

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

The spacing is the amount in pixels left empty between adjacent items.
The default spacing is 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Grid::spacing.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spacing -->



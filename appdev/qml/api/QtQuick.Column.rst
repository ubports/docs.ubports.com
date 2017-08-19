QtQuick.Column
==============

.. raw:: html

   <p>

Positions its children in a column More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Column -->

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

   <!-- $$$Column-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Column is a type that positions its child items along a single column.
It can be used as a convenient way to vertically position a series of
items without using anchors.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a Column that contains three rectangles of various sizes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Column</a></span> {
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
   }</pre>

.. raw:: html

   <p>

The Column automatically positions these items in a vertical formation,
like this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

If an item within a Column is not visible, or if it has a width or
height of 0, the item will not be laid out and it will not be visible
within the column. Also, since a Column automatically positions its
children vertically, a child item within a Column should not set its y
position or vertically anchor itself using the top, bottom,
anchors.verticalCenter, fill or centerIn anchors. If you need to perform
these actions, consider positioning the items without the use of a
Column.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that items in a Column can use the Positioner attached property to
access more information about its position within the Column.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information on using Column and other related positioner-types,
see Item Positioners.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-transitions">

Using Transitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

A Column animate items using specific transitions when items are added
to or moved within a Column.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Column below sets the move property to a specific
Transition:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Column</a></span> {
   <span class="name">spacing</span>: <span class="number">2</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">id</span>: <span class="name">greenRect</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
   <span class="name">move</span>: <span class="name">Transition</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
   }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onSpacePressed: <span class="name">greenRect</span>.<span class="name">visible</span> <span class="operator">=</span> !<span class="name">greenRect</span>.<span class="name">visible</span>
   }</pre>

.. raw:: html

   <p>

When the Space key is pressed, the visible value of the green Rectangle
is toggled. As it appears and disappears, the blue Rectangle moves
within the Column, and the move transition is automatically applied to
the blue Rectangle:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Row, Grid, Flow, Positioner, ColumnLayout, and Qt Quick
Examples - Positioners.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Column -->

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
part of the positioner at the time of its creation. From Qt Quick 2
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



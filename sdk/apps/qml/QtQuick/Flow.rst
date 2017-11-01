Positions its children side by side, wrapping as necessary

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`add </sdk/apps/qml/QtQuick/Flow#add-prop>`__**** : Transition
-  ****`effectiveLayoutDirection </sdk/apps/qml/QtQuick/Flow#effectiveLayoutDirection-prop>`__****
   : enumeration
-  ****`flow </sdk/apps/qml/QtQuick/Flow#flow-prop>`__**** : enumeration
-  ****`layoutDirection </sdk/apps/qml/QtQuick/Flow#layoutDirection-prop>`__****
   : enumeration
-  ****`move </sdk/apps/qml/QtQuick/Flow#move-prop>`__**** : Transition
-  ****`populate </sdk/apps/qml/QtQuick/Flow#populate-prop>`__**** :
   Transition
-  ****`spacing </sdk/apps/qml/QtQuick/Flow#spacing-prop>`__**** : real

Detailed Description
--------------------

The Flow item positions its child items like words on a page, wrapping
them to create rows or columns of items.

Below is a Flow that contains various
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ items:

.. code:: qml

        Flow {
            anchors.fill: parent
            anchors.margins: 4
            spacing: 10
            Text { text: "Text"; font.pixelSize: 40 }
            Text { text: "items"; font.pixelSize: 40 }
            Text { text: "flowing"; font.pixelSize: 40 }
            Text { text: "inside"; font.pixelSize: 40 }
            Text { text: "a"; font.pixelSize: 40 }
            Text { text: "Flow"; font.pixelSize: 40 }
            Text { text: "item"; font.pixelSize: 40 }
        }

The Flow item automatically positions the child
`Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__ items side by
side, wrapping as necessary:

|image0|

If an item within a Flow is not
`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__, or if it has a
width or height of 0, the item will not be laid out and it will not be
visible within the Flow. Also, since a Flow automatically positions its
children, a child item within a Flow should not set its
`x </sdk/apps/qml/QtQuick/Item#x-prop>`__ or
`y </sdk/apps/qml/QtQuick/Item#y-prop>`__ positions or anchor itself
with any of the `anchor </sdk/apps/qml/QtQuick/Item#anchors-prop>`__
properties.

For more information on using Flow and other related positioner-types,
see `Item
Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`__.

**See also**
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__,
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__,
`Positioner </sdk/apps/qml/QtQuick/Positioner/>`__, and `Qt Quick
Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ add : `Transition </sdk/apps/qml/QtQuick/Transition/>`__        |
+--------------------------------------------------------------------------+

This property holds the transition to be run for items that are added to
this positioner. For a positioner, this applies to:

-  Items that are created or reparented as a child of the positioner
   after the positioner has been created
-  Child items that change their
   `Item::visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ property
   from false to true, and thus are now visible

The transition can use the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property to
access more details about the item that is being added. See the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ documentation
for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part
of the positioner at the time of its creation. In this case, the
`populate </sdk/apps/qml/QtQuick/Flow#populate-prop>`__ transition is
applied instead.

**See also** `populate </sdk/apps/qml/QtQuick/Flow#populate-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ effectiveLayoutDirection : enumeration                          |
+--------------------------------------------------------------------------+

This property holds the effective layout direction of the flow.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
for locale layouts, the visual layout direction of the grid positioner
will be mirrored. However, the property
`layoutDirection </sdk/apps/qml/QtQuick/Flow#layoutDirection-prop>`__
will remain unchanged.

**See also**
`Flow::layoutDirection </sdk/apps/qml/QtQuick/Flow#layoutDirection-prop>`__
and `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

+--------------------------------------------------------------------------+
|        \ flow : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the flow of the layout.

Possible values are:

-  Flow.LeftToRight (default) - Items are positioned next to to each
   other according to the
   `layoutDirection </sdk/apps/qml/QtQuick/Flow#layoutDirection-prop>`__
   until the width of the Flow is exceeded, then wrapped to the next
   line.
-  Flow.TopToBottom - Items are positioned next to each other from top
   to bottom until the height of the Flow is exceeded, then wrapped to
   the next column.

| 

+--------------------------------------------------------------------------+
|        \ layoutDirection : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the layout direction of the layout.

Possible values are:

-  Qt.LeftToRight (default) - Items are positioned from the top to
   bottom, and left to right. The flow direction is dependent on the
   `Flow::flow </sdk/apps/qml/QtQuick/Flow#flow-prop>`__ property.
-  Qt.RightToLeft - Items are positioned from the top to bottom, and
   right to left. The flow direction is dependent on the
   `Flow::flow </sdk/apps/qml/QtQuick/Flow#flow-prop>`__ property.

**See also**
`Grid::layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__,
`Row::layoutDirection </sdk/apps/qml/QtQuick/Row#layoutDirection-prop>`__,
and `Qt Quick Examples - Right to
Left </sdk/apps/qml/QtQuick/righttoleft/>`__.

| 

+--------------------------------------------------------------------------+
|        \ move : `Transition </sdk/apps/qml/QtQuick/Transition/>`__       |
+--------------------------------------------------------------------------+

This property holds the transition to run for items that have moved
within the positioner. For a positioner, this applies to:

-  Child items that move when they are displaced due to the addition,
   removal or rearrangement of other items in the positioner
-  Child items that are repositioned due to the resizing of other items
   in the positioner

The transition can use the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property to
access more details about the item that is being moved. Note, however,
that for this move transition, the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.targetIndexes
and
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.targetItems
lists are only set when this transition is triggered by the addition of
other items in the positioner; in other cases, these lists will be
empty. See the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ documentation
for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that
were part of the positioner at the time of its creation. From `QtQuick
2 </sdk/apps/qml/QtQuick/qtquick-index/>`__ onwards, positioners apply
the `populate </sdk/apps/qml/QtQuick/Flow#populate-prop>`__ transition
to these items instead.

**See also** `add </sdk/apps/qml/QtQuick/Flow#add-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ populate : `Transition </sdk/apps/qml/QtQuick/Transition/>`__   |
+--------------------------------------------------------------------------+

This property holds the transition to be run for items that are part of
this positioner at the time of its creation. The transition is run when
the positioner is first created.

The transition can use the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property to
access more details about the item that is being added. See the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ documentation
for more details and examples on using these transitions.

**See also** `add </sdk/apps/qml/QtQuick/Flow#add-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ spacing : real                                                  |
+--------------------------------------------------------------------------+

spacing is the amount in pixels left empty between each adjacent item,
and defaults to 0.

**See also**
`Grid::spacing </sdk/apps/qml/QtQuick/Grid#spacing-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Flow/images/qml-flow-snippet.png


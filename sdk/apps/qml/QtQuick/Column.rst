Positions its children in a column

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`add </sdk/apps/qml/QtQuick/Column#add-prop>`__**** : Transition
-  ****`move </sdk/apps/qml/QtQuick/Column#move-prop>`__**** :
   Transition
-  ****`populate </sdk/apps/qml/QtQuick/Column#populate-prop>`__**** :
   Transition
-  ****`spacing </sdk/apps/qml/QtQuick/Column#spacing-prop>`__**** :
   real

Detailed Description
--------------------

Column is a type that positions its child items along a single column.
It can be used as a convenient way to vertically position a series of
items without using
`anchors </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`__.

Below is a Column that contains three rectangles of various sizes:

.. code:: qml

    Column {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }

The Column automatically positions these items in a vertical formation,
like this:

|image0|

If an item within a Column is not
`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__, or if it has a
width or height of 0, the item will not be laid out and it will not be
visible within the column. Also, since a Column automatically positions
its children vertically, a child item within a Column should not set its
`y </sdk/apps/qml/QtQuick/Item#y-prop>`__ position or vertically anchor
itself using the `top </sdk/apps/qml/QtQuick/Item#anchors.top-prop>`__,
`bottom </sdk/apps/qml/QtQuick/Item#anchors.bottom-prop>`__,
`anchors.verticalCenter </sdk/apps/qml/QtQuick/Item#anchors.verticalCenter-prop>`__,
`fill </sdk/apps/qml/QtQuick/Item#anchors.fill-prop>`__ or
`centerIn </sdk/apps/qml/QtQuick/Item#anchors.centerIn-prop>`__ anchors.
If you need to perform these actions, consider positioning the items
without the use of a Column.

Note that items in a Column can use the
`Positioner </sdk/apps/qml/QtQuick/Positioner/>`__ attached property to
access more information about its position within the Column.

For more information on using Column and other related positioner-types,
see `Item
Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`__.

Using Transitions
-----------------

A Column animate items using specific transitions when items are added
to or moved within a Column.

For example, the Column below sets the
`move </sdk/apps/qml/QtQuick/Column#move-prop>`__ property to a specific
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__:

.. code:: qml

    Column {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { id: greenRect; color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
        move: Transition {
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
        focus: true
        Keys.onSpacePressed: greenRect.visible = !greenRect.visible
    }

When the Space key is pressed, the
`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ value of the green
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ is toggled. As it
appears and disappears, the blue
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ moves within the
Column, and the `move </sdk/apps/qml/QtQuick/Column#move-prop>`__
transition is automatically applied to the blue
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__:

|image1|

**See also**
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__,
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__,
`Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#flow>`__,
`Positioner </sdk/apps/qml/QtQuick/Positioner/>`__, ColumnLayout, and
`Qt Quick Examples -
Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

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
`populate </sdk/apps/qml/QtQuick/Column#populate-prop>`__ transition is
applied instead.

**See also** `populate </sdk/apps/qml/QtQuick/Column#populate-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

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
were part of the positioner at the time of its creation. From `Qt Quick
2 </sdk/apps/qml/QtQuick/qtquick-index/>`__ onwards, positioners apply
the `populate </sdk/apps/qml/QtQuick/Column#populate-prop>`__ transition
to these items instead.

**See also** `add </sdk/apps/qml/QtQuick/Column#add-prop>`__,
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

**See also** `add </sdk/apps/qml/QtQuick/Column#add-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ spacing : real                                                  |
+--------------------------------------------------------------------------+

The spacing is the amount in pixels left empty between adjacent items.
The default spacing is 0.

**See also**
`Grid::spacing </sdk/apps/qml/QtQuick/Grid#spacing-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Column/images/verticalpositioner_example.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Column/images/verticalpositioner_transition.gif


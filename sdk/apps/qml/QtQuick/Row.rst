Positions its children in a row

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`add </sdk/apps/qml/QtQuick/Row#add-prop>`__**** : Transition
-  ****`effectiveLayoutDirection </sdk/apps/qml/QtQuick/Row#effectiveLayoutDirection-prop>`__****
   : enumeration
-  ****`layoutDirection </sdk/apps/qml/QtQuick/Row#layoutDirection-prop>`__****
   : enumeration
-  ****`move </sdk/apps/qml/QtQuick/Row#move-prop>`__**** : Transition
-  ****`populate </sdk/apps/qml/QtQuick/Row#populate-prop>`__**** :
   Transition
-  ****`spacing </sdk/apps/qml/QtQuick/Row#spacing-prop>`__**** : real

Detailed Description
--------------------

Row is a type that positions its child items along a single row. It can
be used as a convenient way to horizontally position a series of items
without using
`anchors </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`__.

Below is a Row that contains three rectangles of various sizes:

.. code:: qml

    import QtQuick 2.0
    Row {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }

The Row automatically positions these items in a horizontal formation,
like this:

|image0|

If an item within a Row is not
`visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__, or if it has a
width or height of 0, the item will not be laid out and it will not be
visible within the row. Also, since a Row automatically positions its
children horizontally, a child item within a Row should not set its
`x </sdk/apps/qml/QtQuick/Item#x-prop>`__ position or horizontally
anchor itself using the
`left </sdk/apps/qml/QtQuick/Item#anchors.left-prop>`__,
`right </sdk/apps/qml/QtQuick/Item#anchors.right-prop>`__,
`anchors.horizontalCenter </sdk/apps/qml/QtQuick/Item#anchors.horizontalCenter-prop>`__,
`fill </sdk/apps/qml/QtQuick/Item#anchors.fill-prop>`__ or
`centerIn </sdk/apps/qml/QtQuick/Item#anchors.centerIn-prop>`__ anchors.
If you need to perform these actions, consider positioning the items
without the use of a Row.

Note that items in a Row can use the
`Positioner </sdk/apps/qml/QtQuick/Positioner/>`__ attached property to
access more information about its position within the Row.

For more information on using Row and other related positioner-types,
see `Item
Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`__.

**See also**
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__,
`Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#flow>`__,
`Positioner </sdk/apps/qml/QtQuick/Positioner/>`__, RowLayout, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

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
`populate </sdk/apps/qml/QtQuick/Row#populate-prop>`__ transition is
applied instead.

**See also** `populate </sdk/apps/qml/QtQuick/Row#populate-prop>`__,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__, and `Qt
Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`__.

| 

+--------------------------------------------------------------------------+
|        \ effectiveLayoutDirection : enumeration                          |
+--------------------------------------------------------------------------+

This property holds the effective layout direction of the row.

When using the attached property
`LayoutMirroring::enabled </sdk/apps/qml/QtQuick/LayoutMirroring#enabled-prop>`__
for locale layouts, the visual layout direction of the row positioner
will be mirrored. However, the property
`layoutDirection </sdk/apps/qml/QtQuick/Row#layoutDirection-prop>`__
will remain unchanged.

**See also**
`Row::layoutDirection </sdk/apps/qml/QtQuick/Row#layoutDirection-prop>`__
and `LayoutMirroring </sdk/apps/qml/QtQuick/LayoutMirroring/>`__.

| 

+--------------------------------------------------------------------------+
|        \ layoutDirection : enumeration                                   |
+--------------------------------------------------------------------------+

This property holds the layoutDirection of the row.

Possible values:

-  Qt.LeftToRight (default) - Items are laid out from left to right. If
   the width of the row is explicitly set, the left anchor remains to
   the left of the row.
-  Qt.RightToLeft - Items are laid out from right to left. If the width
   of the row is explicitly set, the right anchor remains to the right
   of the row.

**See also**
`Grid::layoutDirection </sdk/apps/qml/QtQuick/Grid#layoutDirection-prop>`__,
`Flow::layoutDirection </sdk/apps/qml/QtQuick/Flow#layoutDirection-prop>`__,
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
the `populate </sdk/apps/qml/QtQuick/Row#populate-prop>`__ transition to
these items instead.

**See also** `add </sdk/apps/qml/QtQuick/Row#add-prop>`__,
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

**See also** `add </sdk/apps/qml/QtQuick/Row#add-prop>`__,
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

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Row/images/horizontalpositioner_example.png


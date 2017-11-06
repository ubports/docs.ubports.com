.. _sdk_qtquick_column:

QtQuick Column
==============

Positions its children in a column

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`add <sdk_qtquick_column_add>` : Transition
-  :ref:`move <sdk_qtquick_column_move>` : Transition
-  :ref:`populate <sdk_qtquick_column_populate>` : Transition
-  :ref:`spacing <sdk_qtquick_column_spacing>` : real

Detailed Description
--------------------

Column is a type that positions its child items along a single column. It can be used as a convenient way to vertically position a series of items without using `anchors </sdk/apps/qml/QtQuick/qtquick-positioning-anchors/>`_ .

Below is a Column that contains three rectangles of various sizes:

.. code:: qml

    Column {
        spacing: 2
        Rectangle { color: "red"; width: 50; height: 50 }
        Rectangle { color: "green"; width: 20; height: 50 }
        Rectangle { color: "blue"; width: 50; height: 20 }
    }

The Column automatically positions these items in a vertical formation, like this:

If an item within a Column is not :ref:`visible <sdk_qtquick_item_visible>`, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Column automatically positions its children vertically, a child item within a Column should not set its :ref:`y <sdk_qtquick_item_y>` position or vertically anchor itself using the :ref:`top <sdk_qtquick_item_anchors.top>`, :ref:`bottom <sdk_qtquick_item_anchors.bottom>`, :ref:`anchors.verticalCenter <sdk_qtquick_item_anchors_verticalCenter>`, :ref:`fill <sdk_qtquick_item_anchors.fill>` or :ref:`centerIn <sdk_qtquick_item_anchors.centerIn>` anchors. If you need to perform these actions, consider positioning the items without the use of a Column.

Note that items in a Column can use the :ref:`Positioner <sdk_qtquick_positioner>` attached property to access more information about its position within the Column.

For more information on using Column and other related positioner-types, see `Item Positioners </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/>`_ .

Using Transitions
-----------------

A Column animate items using specific transitions when items are added to or moved within a Column.

For example, the Column below sets the :ref:`move <sdk_qtquick_column_move>` property to a specific `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ :

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

When the Space key is pressed, the :ref:`visible <sdk_qtquick_item_visible>` value of the green :ref:`Rectangle <sdk_qtquick_rectangle>` is toggled. As it appears and disappears, the blue :ref:`Rectangle <sdk_qtquick_rectangle>` moves within the Column, and the :ref:`move <sdk_qtquick_column_move>` transition is automatically applied to the blue :ref:`Rectangle <sdk_qtquick_rectangle>`:

**See also** `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ , `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ , `Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#flow>`_ , :ref:`Positioner <sdk_qtquick_positioner>`, ColumnLayout, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_column_add:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| add : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-  Items that are created or reparented as a child of the positioner after the positioner has been created
-  Child items that change their :ref:`Item::visible <sdk_qtquick_item_visible>` property from false to true, and thus are now visible

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the :ref:`populate <sdk_qtquick_column_populate>` transition is applied instead.

**See also** :ref:`populate <sdk_qtquick_column_populate>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_column_move:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| move : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-  Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-  Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being moved. Note, however, that for this move transition, the :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetIndexes and :ref:`ViewTransition <sdk_qtquick_viewtransition>`.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From `Qt Quick 2 </sdk/apps/qml/QtQuick/qtquick-index/>`_  onwards, positioners apply the :ref:`populate <sdk_qtquick_column_populate>` transition to these items instead.

**See also** :ref:`add <sdk_qtquick_column_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_column_populate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| populate : :ref:`Transition <sdk_qtquick_transition>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the :ref:`ViewTransition <sdk_qtquick_viewtransition>` property to access more details about the item that is being added. See the :ref:`ViewTransition <sdk_qtquick_viewtransition>` documentation for more details and examples on using these transitions.

**See also** :ref:`add <sdk_qtquick_column_add>`, :ref:`ViewTransition <sdk_qtquick_viewtransition>`, and `Qt Quick Examples - Positioners </sdk/apps/qml/QtQuick/positioners/>`_ .

.. _sdk_qtquick_column_spacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spacing : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.

**See also** :ref:`Grid::spacing <sdk_qtquick_grid_spacing>`.


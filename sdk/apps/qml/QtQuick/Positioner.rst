.. _sdk_qtquick_positioner:

QtQuick Positioner
==================

Provides attached properties that contain details on where an item exists in a positioner

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Attached Properties
-------------------

-  :ref:`index <sdk_qtquick_positioner_index>` : int
-  :ref:`isFirstItem <sdk_qtquick_positioner_isFirstItem>` : bool
-  :ref:`isLastItem <sdk_qtquick_positioner_isLastItem>` : bool

Detailed Description
--------------------

An object of type Positioner is attached to the top-level child item within a Column, Row, Flow or Grid. It provides properties that allow a child item to determine where it exists within the layout of its parent Column, Row, Flow or Grid.

For example, below is a `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_  with 16 child rectangles, as created through a :ref:`Repeater <sdk_qtquick_repeater>`. Each :ref:`Rectangle <sdk_qtquick_rectangle>` displays its index in the Grid using :ref:`Positioner.index <sdk_qtquick_positioner_index>`, and the first item is colored differently by taking :ref:`Positioner.isFirstItem <sdk_qtquick_positioner_isFirstItem>` into account:

.. code:: cpp

    Grid {
        Repeater {
            model: 16
            Rectangle {
                id: rect
                width: 30; height: 30
                border.width: 1
                color: Positioner.isFirstItem ? "yellow" : "lightsteelblue"
                Text { text: rect.Positioner.index }
            }
        }
    }

Attached Property Documentation
-------------------------------

.. _sdk_qtquick_positioner_index:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Positioner.index : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property allows the item to determine its index within the positioner.

.. _sdk_qtquick_positioner_isFirstItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Positioner.isFirstItem : bool                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties allow the item to determine if it is the first or last item in the positioner, respectively.

.. _sdk_qtquick_positioner_isLastItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Positioner.isLastItem : bool                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties allow the item to determine if it is the first or last item in the positioner, respectively.


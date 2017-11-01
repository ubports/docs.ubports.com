Provides attached properties that contain details on where an item
exists in a positioner

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Attached Properties
-------------------

-  ****`index </sdk/apps/qml/QtQuick/Positioner#index-attached-prop>`__****
   : int
-  ****`isFirstItem </sdk/apps/qml/QtQuick/Positioner#isFirstItem-attached-prop>`__****
   : bool
-  ****`isLastItem </sdk/apps/qml/QtQuick/Positioner#isLastItem-attached-prop>`__****
   : bool

Detailed Description
--------------------

An object of type Positioner is attached to the top-level child item
within a Column, Row, Flow or Grid. It provides properties that allow a
child item to determine where it exists within the layout of its parent
Column, Row, Flow or Grid.

For example, below is a
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__ with
16 child rectangles, as created through a
`Repeater </sdk/apps/qml/QtQuick/Repeater/>`__. Each
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ displays its index in
the Grid using
`Positioner.index </sdk/apps/qml/QtQuick/Positioner#index-attached-prop>`__,
and the first item is colored differently by taking
`Positioner.isFirstItem </sdk/apps/qml/QtQuick/Positioner#isFirstItem-attached-prop>`__
into account:

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

|image0|

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ Positioner.index : int                                          |
+--------------------------------------------------------------------------+

This property allows the item to determine its index within the
positioner.

| 

+--------------------------------------------------------------------------+
|        \ Positioner.isFirstItem : bool                                   |
+--------------------------------------------------------------------------+

These properties allow the item to determine if it is the first or last
item in the positioner, respectively.

| 

+--------------------------------------------------------------------------+
|        \ Positioner.isLastItem : bool                                    |
+--------------------------------------------------------------------------+

These properties allow the item to determine if it is the first or last
item in the positioner, respectively.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Positioner/images/positioner-example.png


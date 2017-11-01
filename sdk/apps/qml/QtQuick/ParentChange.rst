Specifies how to reparent an Item in a state change

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`height </sdk/apps/qml/QtQuick/ParentChange#height-prop>`__**** :
   real
-  ****`parent </sdk/apps/qml/QtQuick/ParentChange#parent-prop>`__**** :
   Item
-  ****`rotation </sdk/apps/qml/QtQuick/ParentChange#rotation-prop>`__****
   : real
-  ****`scale </sdk/apps/qml/QtQuick/ParentChange#scale-prop>`__**** :
   real
-  ****`target </sdk/apps/qml/QtQuick/ParentChange#target-prop>`__**** :
   Item
-  ****`width </sdk/apps/qml/QtQuick/ParentChange#width-prop>`__**** :
   real
-  ****`x </sdk/apps/qml/QtQuick/ParentChange#x-prop>`__**** : real
-  ****`y </sdk/apps/qml/QtQuick/ParentChange#y-prop>`__**** : real

Detailed Description
--------------------

`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ reparents an item
while preserving its visual appearance (position, size, rotation, and
scale) on screen. You can then specify a transition to
move/resize/rotate/scale the item to its final intended appearance.

`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ can only preserve
visual appearance if no complex transforms are involved. More
specifically, it will not work if the transform property has been set
for any items involved in the reparenting (i.e. items in the common
ancestor tree for the original and new parent).

The example below displays a large red rectangle and a small blue
rectangle, side by side. When the ``blueRect`` is clicked, it changes to
the "reparented" state: its parent is changed to ``redRect`` and it is
positioned at (10, 10) within the red rectangle, as specified in the
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__.

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 200; height: 100
        Rectangle {
            id: redRect
            width: 100; height: 100
            color: "red"
        }
        Rectangle {
            id: blueRect
            x: redRect.width
            width: 50; height: 50
            color: "blue"
            states: State {
                name: "reparented"
                ParentChange { target: blueRect; parent: redRect; x: 10; y: 10 }
            }
            MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
        }
    }

|image0|

You can specify at which point in a transition you want a
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ to occur by using
a `ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__.

Note that unlike
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__,
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ expects an
Item-based target; it will not work with arbitrary objects (for example,
you couldn't use it to reparent a Timer).

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ height : real                                                   |
+--------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for
the item in this state.

| 

+--------------------------------------------------------------------------+
|        \ parent : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

This property holds the new parent for the item in this state.

| 

+--------------------------------------------------------------------------+
|        \ rotation : real                                                 |
+--------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for
the item in this state.

| 

+--------------------------------------------------------------------------+
|        \ scale : real                                                    |
+--------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for
the item in this state.

| 

+--------------------------------------------------------------------------+
|        \ target : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

This property holds the item to be reparented

| 

+--------------------------------------------------------------------------+
|        \ width : real                                                    |
+--------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for
the item in this state.

| 

+--------------------------------------------------------------------------+
|        \ x : real                                                        |
+--------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for
the item in this state.

| 

+--------------------------------------------------------------------------+
|        \ y : real                                                        |
+--------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for
the item in this state.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/ParentChange/images/parentchange.png


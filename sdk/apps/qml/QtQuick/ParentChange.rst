.. _sdk_qtquick_parentchange:

QtQuick ParentChange
====================

Specifies how to reparent an Item in a state change

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`height <sdk_qtquick_parentchange_height>` : real
-  :ref:`parent <sdk_qtquick_parentchange_parent>` : Item
-  :ref:`rotation <sdk_qtquick_parentchange_rotation>` : real
-  :ref:`scale <sdk_qtquick_parentchange_scale>` : real
-  :ref:`target <sdk_qtquick_parentchange_target>` : Item
-  :ref:`width <sdk_qtquick_parentchange_width>` : real
-  :ref:`x <sdk_qtquick_parentchange_x>` : real
-  :ref:`y <sdk_qtquick_parentchange_y>` : real

Detailed Description
--------------------

:ref:`ParentChange <sdk_qtquick_parentchange>` reparents an item while preserving its visual appearance (position, size, rotation, and scale) on screen. You can then specify a transition to move/resize/rotate/scale the item to its final intended appearance.

:ref:`ParentChange <sdk_qtquick_parentchange>` can only preserve visual appearance if no complex transforms are involved. More specifically, it will not work if the transform property has been set for any items involved in the reparenting (i.e. items in the common ancestor tree for the original and new parent).

The example below displays a large red rectangle and a small blue rectangle, side by side. When the ``blueRect`` is clicked, it changes to the "reparented" state: its parent is changed to ``redRect`` and it is positioned at (10, 10) within the red rectangle, as specified in the :ref:`ParentChange <sdk_qtquick_parentchange>`.

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

You can specify at which point in a transition you want a :ref:`ParentChange <sdk_qtquick_parentchange>` to occur by using a :ref:`ParentAnimation <sdk_qtquick_parentanimation>`.

Note that unlike :ref:`PropertyChanges <sdk_qtquick_propertychanges>`, :ref:`ParentChange <sdk_qtquick_parentchange>` expects an Item-based target; it will not work with arbitrary objects (for example, you couldn't use it to reparent a Timer).

Property Documentation
----------------------

.. _sdk_qtquick_parentchange_height:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| height : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for the item in this state.

.. _sdk_qtquick_parentchange_parent:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| parent : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the new parent for the item in this state.

.. _sdk_qtquick_parentchange_rotation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rotation : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for the item in this state.

.. _sdk_qtquick_parentchange_scale:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| scale : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for the item in this state.

.. _sdk_qtquick_parentchange_target:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the item to be reparented

.. _sdk_qtquick_parentchange_width:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| width : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for the item in this state.

.. _sdk_qtquick_parentchange_x:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| x : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for the item in this state.

.. _sdk_qtquick_parentchange_y:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| y : real                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties hold the new position, size, scale, and rotation for the item in this state.


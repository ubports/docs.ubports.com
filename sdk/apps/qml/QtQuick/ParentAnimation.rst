.. _sdk_qtquick_parentanimation:

QtQuick ParentAnimation
=======================

Animates changes in parent values

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.0                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`newParent <sdk_qtquick_parentanimation_newParent>` : Item
-  :ref:`target <sdk_qtquick_parentanimation_target>` : Item
-  :ref:`via <sdk_qtquick_parentanimation_via>` : Item

Detailed Description
--------------------

:ref:`ParentAnimation <sdk_qtquick_parentanimation>` is used to animate a parent change for an :ref:`Item <sdk_qtquick_item>`.

For example, the following :ref:`ParentChange <sdk_qtquick_parentchange>` changes ``blueRect`` to become a child of ``redRect`` when it is clicked. The inclusion of the :ref:`ParentAnimation <sdk_qtquick_parentanimation>`, which defines a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` to be applied during the transition, ensures the item animates smoothly as it moves to its new parent:

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
            transitions: Transition {
                ParentAnimation {
                    NumberAnimation { properties: "x,y"; duration: 1000 }
                }
            }
            MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
        }
    }

A :ref:`ParentAnimation <sdk_qtquick_parentanimation>` can contain any number of animations. These animations will be run in parallel; to run them sequentially, define them within a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>`.

In some cases, such as when reparenting between items with clipping enabled, it is useful to animate the parent change via another item that does not have clipping enabled. Such an item can be set using the :ref:`via <sdk_qtquick_parentanimation_via>` property.

:ref:`ParentAnimation <sdk_qtquick_parentanimation>` is typically used within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  in conjunction with a :ref:`ParentChange <sdk_qtquick_parentchange>`. When used in this manner, it animates any :ref:`ParentChange <sdk_qtquick_parentchange>` that has occurred during the state change. This can be overridden by setting a specific target item using the :ref:`target <sdk_qtquick_parentanimation_target>` property.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_parentanimation_newParent:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| newParent : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The new parent to animate to.

If the :ref:`ParentAnimation <sdk_qtquick_parentanimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , this value defaults to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ .

.. _sdk_qtquick_parentanimation_target:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The item to reparent.

When used in a transition, if no target is specified, all :ref:`ParentChange <sdk_qtquick_parentchange>` occurrences are animated by the :ref:`ParentAnimation <sdk_qtquick_parentanimation>`.

.. _sdk_qtquick_parentanimation_via:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| via : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The item to reparent via. This provides a way to do an unclipped animation when both the old parent and new parent are clipped.

.. code:: qml

    ParentAnimation {
        target: myItem
        via: topLevelItem
        // ...
    }

**Note:** This only works when the :ref:`ParentAnimation <sdk_qtquick_parentanimation>` is used in a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  in conjunction with a :ref:`ParentChange <sdk_qtquick_parentchange>`.


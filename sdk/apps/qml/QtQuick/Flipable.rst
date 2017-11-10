.. _sdk_qtquick_flipable:

QtQuick Flipable
================

Provides a surface that can be flipped

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`back <sdk_qtquick_flipable_back>` : Item
-  :ref:`front <sdk_qtquick_flipable_front>` : Item
-  :ref:`side <sdk_qtquick_flipable_side>` : enumeration

Detailed Description
--------------------

Flipable is an item that can be visibly "flipped" between its front and back sides, like a card. It may used together with :ref:`Rotation <sdk_qtquick_rotation>`, :ref:`State <sdk_qtquick_state>` and `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  types to produce a flipping effect.

The :ref:`front <sdk_qtquick_flipable_front>` and :ref:`back <sdk_qtquick_flipable_back>` properties are used to hold the items that are shown respectively on the front and back sides of the flipable item.

Example Usage
-------------

The following example shows a Flipable item that flips whenever it is clicked, rotating about the y-axis.

This flipable item has a ``flipped`` boolean property that is toggled whenever the :ref:`MouseArea <sdk_qtquick_mousearea>` within the flipable is clicked. When ``flipped`` is true, the item changes to the "back" state; in this state, the ``angle`` of the :ref:`Rotation <sdk_qtquick_rotation>` item is changed to 180 degrees to produce the flipping effect. When ``flipped`` is false, the item reverts to the default state, in which the ``angle`` value is 0.

.. code:: qml

    import QtQuick 2.0
    Flipable {
        id: flipable
        width: 240
        height: 240
        property bool flipped: false
        front: Image { source: "front.png"; anchors.centerIn: parent }
        back: Image { source: "back.png"; anchors.centerIn: parent }
        transform: Rotation {
            id: rotation
            origin.x: flipable.width/2
            origin.y: flipable.height/2
            axis.x: 0; axis.y: 1; axis.z: 0     // set axis.y to 1 to rotate around y-axis
            angle: 0    // the default angle
        }
        states: State {
            name: "back"
            PropertyChanges { target: rotation; angle: 180 }
            when: flipable.flipped
        }
        transitions: Transition {
            NumberAnimation { target: rotation; property: "angle"; duration: 4000 }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: flipable.flipped = !flipable.flipped
        }
    }

The `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  creates the animation that changes the angle over four seconds. When the item changes between its "back" and default states, the :ref:`NumberAnimation <sdk_qtquick_numberanimation>` animates the angle between its old and new values.

See `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_  for details on state changes and the default state, and `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  for more information on how animations work within transitions.

**See also** `UI Components: Flipable Example </sdk/apps/qml/QtQuick/customitems-flipable/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_flipable_back:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| back : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The front and back sides of the flipable.

.. _sdk_qtquick_flipable_front:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| front : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The front and back sides of the flipable.

.. _sdk_qtquick_flipable_side:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| side : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The side of the Flipable currently visible. Possible values are ``Flipable.Front`` and ``Flipable.Back``.


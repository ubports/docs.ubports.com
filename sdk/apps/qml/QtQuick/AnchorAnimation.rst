.. _sdk_qtquick_anchoranimation:

QtQuick AnchorAnimation
=======================

Animates changes in anchor values

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`duration <sdk_qtquick_anchoranimation_duration>` : int
-  :ref:`easing <sdk_qtquick_anchoranimation_easing>`

   -  :ref:`easing.type <sdk_qtquick_anchoranimation_easing_type>` : enumeration
   -  :ref:`easing.amplitude <sdk_qtquick_anchoranimation_easing_amplitude>` : real
   -  :ref:`easing.overshoot <sdk_qtquick_anchoranimation_easing_overshoot>` : real
   -  :ref:`easing.period <sdk_qtquick_anchoranimation_easing_period>` : real

-  :ref:`targets <sdk_qtquick_anchoranimation_targets>` : list<Item>

Detailed Description
--------------------

:ref:`AnchorAnimation <sdk_qtquick_anchoranimation>` is used to animate an anchor change.

In the following snippet we animate the addition of a right anchor to a :ref:`Rectangle <sdk_qtquick_rectangle>`:

.. code:: qml

    import QtQuick 2.0
    Item {
        id: container
        width: 200; height: 200
        Rectangle {
            id: myRect
            width: 100; height: 100
            color: "red"
        }
        states: State {
            name: "reanchored"
            AnchorChanges { target: myRect; anchors.right: container.right }
        }
        transitions: Transition {
            // smoothly reanchor myRect and move into new position
            AnchorAnimation { duration: 1000 }
        }
        Component.onCompleted: container.state = "reanchored"
    }

When an :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>` is used in a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , it will animate any :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` that have occurred during the state change. This can be overridden by setting a specific target item using the :ref:`AnchorChanges.target <sdk_qtquick_anchorchanges_target>` property.

**Note:** :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>` can only be used in a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  and in conjunction with an AnchorChange. It cannot be used in behaviors and other types of animations.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and :ref:`AnchorChanges <sdk_qtquick_anchorchanges>`.

Property Documentation
----------------------

.. _sdk_qtquick_anchoranimation_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the duration of the animation, in milliseconds.

The default value is 250.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **easing group**                                                                                                                                                                                                                                                                                             |
+==============================================================================================================================================================================================================================================================================================================+
| easing.type : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| easing.amplitude : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| easing.overshoot : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| easing.period : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot. The default easing curve is Linear.

.. code:: qml

    AnchorAnimation { easing.type: Easing.InOutQuad }

See the :ref:`PropertyAnimation::easing.type <sdk_qtquick_propertyanimation_easing_type>` documentation for information about the different types of easing curves.

.. _sdk_qtquick_anchoranimation_targets:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| targets : list<:ref:`Item <sdk_qtquick_item>`>                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The items to reanchor.

If no targets are specified all :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` will be animated by the :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>`.


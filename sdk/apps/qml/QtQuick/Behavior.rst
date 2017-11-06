.. _sdk_qtquick_behavior:

QtQuick Behavior
================

Defines a default animation for a property change

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`animation <sdk_qtquick_behavior_animation>` : Animation
-  :ref:`enabled <sdk_qtquick_behavior_enabled>` : bool

Detailed Description
--------------------

A Behavior defines the default animation to be applied whenever a particular property value changes.

For example, the following Behavior defines a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` to be run whenever the :ref:`Rectangle <sdk_qtquick_rectangle>`'s ``width`` value changes. When the :ref:`MouseArea <sdk_qtquick_mousearea>` is clicked, the ``width`` is changed, triggering the behavior's animation:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        Behavior on width {
            NumberAnimation { duration: 1000 }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: rect.width = 50
        }
    }

Note that a property cannot have more than one assigned Behavior. To provide multiple animations within a Behavior, use :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` or :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>`.

If a `state change </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_  has a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  that matches the same property as a Behavior, the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  animation overrides the Behavior for that state change. For general advice on using Behaviors to animate state changes, see `Using Qt Quick Behaviors with States </sdk/apps/qml/QtQuick/qtquick-statesanimations-behaviors/>`_ .

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ , `Behavior example </sdk/apps/qml/QtQuick/animation/#behaviors>`_ , and Qt QML.

Property Documentation
----------------------

.. _sdk_qtquick_behavior_animation:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] animation : :ref:`Animation <sdk_qtquick_animation>`                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the animation to run when the behavior is triggered.

.. _sdk_qtquick_behavior_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the behavior will be triggered when the tracked property changes value.

By default a Behavior is enabled.


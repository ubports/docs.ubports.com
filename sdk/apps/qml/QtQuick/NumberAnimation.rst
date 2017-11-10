.. _sdk_qtquick_numberanimation:

QtQuick NumberAnimation
=======================

Animates changes in qreal-type values

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`PropertyAnimation <sdk_qtquick_propertyanimation>`                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` and :ref:`SpringAnimation <sdk_qtquick_springanimation>`.                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`from <sdk_qtquick_numberanimation_from>` : real
-  :ref:`to <sdk_qtquick_numberanimation_to>` : real

Detailed Description
--------------------

:ref:`NumberAnimation <sdk_qtquick_numberanimation>` is a specialized `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  that defines an animation to be applied when a numerical value changes.

Here is a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` applied to the ``x`` property of a :ref:`Rectangle <sdk_qtquick_rectangle>` as a property value source. It animates the ``x`` value from its current value to a value of 50, over 1000 milliseconds:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        NumberAnimation on x { to: 50; duration: 1000 }
    }

Like any other animation type, a :ref:`NumberAnimation <sdk_qtquick_numberanimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

Note that :ref:`NumberAnimation <sdk_qtquick_numberanimation>` may not animate smoothly if there are irregular changes in the number value that it is tracking. If this is the case, use :ref:`SmoothedAnimation <sdk_qtquick_smoothedanimation>` instead.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_numberanimation_from:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| from : real                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the starting value for the animation.

For example, the following animation is not applied until the ``x`` value has reached 100:

.. code:: qml

    Item {
        states: [
            // ...
        ]
        transition: Transition {
            NumberAnimation { properties: "x"; from: 100; duration: 200 }
        }
    }

If the :ref:`NumberAnimation <sdk_qtquick_numberanimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the starting state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the current value of the property at the moment the :ref:`Behavior <sdk_qtquick_behavior>` is triggered.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

.. _sdk_qtquick_numberanimation_to:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| to : real                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the end value for the animation.

If the :ref:`NumberAnimation <sdk_qtquick_numberanimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the value of the property change that triggered the :ref:`Behavior <sdk_qtquick_behavior>`.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .


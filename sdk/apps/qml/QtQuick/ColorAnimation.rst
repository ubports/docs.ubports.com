.. _sdk_qtquick_coloranimation:

QtQuick ColorAnimation
======================

Animates changes in color values

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`PropertyAnimation <sdk_qtquick_propertyanimation>`                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`from <sdk_qtquick_coloranimation_from>` : color
-  :ref:`to <sdk_qtquick_coloranimation_to>` : color

Detailed Description
--------------------

`ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  is a specialized `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  that defines an animation to be applied when a color value changes.

Here is a `ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  applied to the ``color`` property of a :ref:`Rectangle <sdk_qtquick_rectangle>` as a property value source. It animates the ``color`` property's value from its current value to a value of "red", over 1000 milliseconds:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100; height: 100
        color: "red"
        ColorAnimation on color { to: "yellow"; duration: 1000 }
    }

Like any other animation type, a `ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

For convenience, when a `ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  is used in a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , it will animate any ``color`` properties that have been modified during the state change. If a :ref:`property <sdk_qtquick_propertyanimation_property>` or :ref:`properties <sdk_qtquick_propertyanimation_properties>` are explicitly set for the animation, then those are used instead.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_coloranimation_from:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| from : color                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the color value at which the animation should begin.

For example, the following animation is not applied until a color value has reached "#c0c0c0":

.. code:: qml

    Item {
        states: [
            // States are defined here...
        ]
        transition: Transition {
            ColorAnimation { from: "#c0c0c0"; duration: 2000 }
        }
    }

If the `ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the starting state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the current value of the property at the moment the :ref:`Behavior <sdk_qtquick_behavior>` is triggered.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

.. _sdk_qtquick_coloranimation_to:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| to : color                                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the color value at which the animation should end.

If the `ColorAnimation </sdk/apps/qml/QtQuick/animation/#coloranimation>`_  is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the value of the property change that triggered the :ref:`Behavior <sdk_qtquick_behavior>`.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .


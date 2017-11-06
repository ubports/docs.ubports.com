.. _sdk_qtquick_vector3danimation:

QtQuick Vector3dAnimation
=========================

Animates changes in QVector3d values

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`PropertyAnimation <sdk_qtquick_propertyanimation>`                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`from <sdk_qtquick_vector3danimation_from>` : real
-  :ref:`to <sdk_qtquick_vector3danimation_to>` : real

Detailed Description
--------------------

:ref:`Vector3dAnimation <sdk_qtquick_vector3danimation>` is a specialized `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  that defines an animation to be applied when a Vector3d value changes.

Like any other animation type, a :ref:`Vector3dAnimation <sdk_qtquick_vector3danimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_vector3danimation_from:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| from : real                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the starting value for the animation.

If the :ref:`Vector3dAnimation <sdk_qtquick_vector3danimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the starting state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the current value of the property at the moment the :ref:`Behavior <sdk_qtquick_behavior>` is triggered.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

.. _sdk_qtquick_vector3danimation_to:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| to : real                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the end value for the animation.

If the :ref:`Vector3dAnimation <sdk_qtquick_vector3danimation>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the value of the property change that triggered the :ref:`Behavior <sdk_qtquick_behavior>`.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .


.. _sdk_qtquick_pathanimation:

QtQuick PathAnimation
=====================

Animates an item along a path

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.0                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`anchorPoint <sdk_qtquick_pathanimation_anchorPoint>` : point
-  :ref:`duration <sdk_qtquick_pathanimation_duration>` : int
-  :ref:`easing <sdk_qtquick_pathanimation_easing>`

   -  :ref:`easing.type <sdk_qtquick_pathanimation_easing_type>` : enumeration
   -  :ref:`easing.amplitude <sdk_qtquick_pathanimation_easing_amplitude>` : real
   -  :ref:`easing.bezierCurve <sdk_qtquick_pathanimation_easing_bezierCurve>` : list<real>
   -  :ref:`easing.overshoot <sdk_qtquick_pathanimation_easing_overshoot>` : real
   -  :ref:`easing.period <sdk_qtquick_pathanimation_easing_period>` : real

-  :ref:`endRotation <sdk_qtquick_pathanimation_endRotation>` : real
-  :ref:`orientation <sdk_qtquick_pathanimation_orientation>` : enumeration
-  :ref:`orientationEntryDuration <sdk_qtquick_pathanimation_orientationEntryDuration>` : real
-  :ref:`orientationExitDuration <sdk_qtquick_pathanimation_orientationExitDuration>` : real
-  :ref:`path <sdk_qtquick_pathanimation_path>` : Path
-  :ref:`target <sdk_qtquick_pathanimation_target>` : Item

Detailed Description
--------------------

When used in a transition, the path can be specified without start or end points, for example:

.. code:: qml

    PathAnimation {
        path: Path {
            //no startX, startY
            PathCurve { x: 100; y: 100}
            PathCurve {}    //last element is empty with no end point specified
        }
    }

In the above case, the path start will be the item's current position, and the path end will be the item's target position in the target state.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and `PathInterpolator </sdk/apps/qml/QtQuick/animation/#pathinterpolator>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_pathanimation_anchorPoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchorPoint : point                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the anchor point for the item being animated.

By default, the upper-left corner of the target (its 0,0 point) will be anchored to (or follow) the path. The anchorPoint property can be used to specify a different point for anchoring. For example, specifying an anchorPoint of 5,5 for a 10x10 item means the center of the item will follow the path.

.. _sdk_qtquick_pathanimation_duration:

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
| easing.bezierCurve : list<real>                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| easing.overshoot : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| easing.period : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

the easing curve used for the animation.

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period, overshoot or custom bezierCurve data. The default easing curve is ``Easing.Linear``.

See the :ref:`PropertyAnimation::easing.type <sdk_qtquick_propertyanimation_easing_type>` documentation for information about the different types of easing curves.

.. _sdk_qtquick_pathanimation_endRotation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| endRotation : real                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the ending rotation for the target.

If an orientation has been specified for the `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ , and the path doesn't end with the item at the desired rotation, the endRotation property can be used to manually specify an end rotation.

This property is typically used with :ref:`orientationExitDuration <sdk_qtquick_pathanimation_orientationExitDuration>`, as specifying an endRotation without an :ref:`orientationExitDuration <sdk_qtquick_pathanimation_orientationExitDuration>` may cause a jump to the final rotation, rather than a smooth transition.

.. _sdk_qtquick_pathanimation_orientation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orientation : enumeration                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property controls the rotation of the item as it animates along the path.

If a value other than ``Fixed`` is specified, the `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_  will rotate the item to achieve the specified orientation as it travels along the path.

-  `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .Fixed (default) - the `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_  will not control the rotation of the item.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .RightFirst - The right side of the item will lead along the path.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .LeftFirst - The left side of the item will lead along the path.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .BottomFirst - The bottom of the item will lead along the path.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ .TopFirst - The top of the item will lead along the path.

.. _sdk_qtquick_pathanimation_orientationEntryDuration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orientationEntryDuration : real                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the duration (in milliseconds) of the transition in to the orientation.

If an orientation has been specified for the `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ , and the starting rotation of the item does not match that given by the orientation, orientationEntryDuration can be used to smoothly transition from the item's starting rotation to the rotation given by the path orientation.

.. _sdk_qtquick_pathanimation_orientationExitDuration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orientationExitDuration : real                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the duration (in milliseconds) of the transition out of the orientation.

If an orientation and :ref:`endRotation <sdk_qtquick_pathanimation_endRotation>` have been specified for the `PathAnimation </sdk/apps/qml/QtQuick/animation/#pathanimation>`_ , orientationExitDuration can be used to smoothly transition from the rotation given by the path orientation to the specified :ref:`endRotation <sdk_qtquick_pathanimation_endRotation>`.

.. _sdk_qtquick_pathanimation_path:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| path : :ref:`Path <sdk_qtquick_path>`                                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the path to animate along.

For more information on defining a path see the :ref:`Path <sdk_qtquick_path>` documentation.

.. _sdk_qtquick_pathanimation_target:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the item to animate.


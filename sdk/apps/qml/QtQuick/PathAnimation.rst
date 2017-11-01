Animates an item along a path

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.0                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`anchorPoint </sdk/apps/qml/QtQuick/PathAnimation#anchorPoint-prop>`__****
   : point
-  ****`duration </sdk/apps/qml/QtQuick/PathAnimation#duration-prop>`__****
   : int
-  ****`easing </sdk/apps/qml/QtQuick/PathAnimation#easing-prop>`__****

   -  ****`easing.type </sdk/apps/qml/QtQuick/PathAnimation#easing.type-prop>`__****
      : enumeration
   -  ****`easing.amplitude </sdk/apps/qml/QtQuick/PathAnimation#easing.amplitude-prop>`__****
      : real
   -  ****`easing.bezierCurve </sdk/apps/qml/QtQuick/PathAnimation#easing.bezierCurve-prop>`__****
      : list<real>
   -  ****`easing.overshoot </sdk/apps/qml/QtQuick/PathAnimation#easing.overshoot-prop>`__****
      : real
   -  ****`easing.period </sdk/apps/qml/QtQuick/PathAnimation#easing.period-prop>`__****
      : real

-  ****`endRotation </sdk/apps/qml/QtQuick/PathAnimation#endRotation-prop>`__****
   : real
-  ****`orientation </sdk/apps/qml/QtQuick/PathAnimation#orientation-prop>`__****
   : enumeration
-  ****`orientationEntryDuration </sdk/apps/qml/QtQuick/PathAnimation#orientationEntryDuration-prop>`__****
   : real
-  ****`orientationExitDuration </sdk/apps/qml/QtQuick/PathAnimation#orientationExitDuration-prop>`__****
   : real
-  ****`path </sdk/apps/qml/QtQuick/PathAnimation#path-prop>`__**** :
   Path
-  ****`target </sdk/apps/qml/QtQuick/PathAnimation#target-prop>`__****
   : Item

Detailed Description
--------------------

When used in a transition, the path can be specified without start or
end points, for example:

.. code:: qml

    PathAnimation {
        path: Path {
            //no startX, startY
            PathCurve { x: 100; y: 100}
            PathCurve {}    //last element is empty with no end point specified
        }
    }

In the above case, the path start will be the item's current position,
and the path end will be the item's target position in the target state.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and
`PathInterpolator </sdk/apps/qml/QtQuick/animation#pathinterpolator>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ anchorPoint : point                                             |
+--------------------------------------------------------------------------+

This property holds the anchor point for the item being animated.

By default, the upper-left corner of the target (its 0,0 point) will be
anchored to (or follow) the path. The anchorPoint property can be used
to specify a different point for anchoring. For example, specifying an
anchorPoint of 5,5 for a 10x10 item means the center of the item will
follow the path.

| 

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration of the animation, in milliseconds.

The default value is 250.

| 

+--------------------------------------------------------------------------+
|        \ **easing group**                                                |
+==========================================================================+
|        \ easing.type : enumeration                                       |
+--------------------------------------------------------------------------+
|        \ easing.amplitude : real                                         |
+--------------------------------------------------------------------------+
|        \ easing.bezierCurve : list<real>                                 |
+--------------------------------------------------------------------------+
|        \ easing.overshoot : real                                         |
+--------------------------------------------------------------------------+
|        \ easing.period : real                                            |
+--------------------------------------------------------------------------+

the easing curve used for the animation.

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period, overshoot or custom
bezierCurve data. The default easing curve is ``Easing.Linear``.

See the
`PropertyAnimation::easing.type </sdk/apps/qml/QtQuick/PropertyAnimation#easing.type-prop>`__
documentation for information about the different types of easing
curves.

| 

+--------------------------------------------------------------------------+
|        \ endRotation : real                                              |
+--------------------------------------------------------------------------+

This property holds the ending rotation for the target.

If an orientation has been specified for the
`PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__, and
the path doesn't end with the item at the desired rotation, the
endRotation property can be used to manually specify an end rotation.

This property is typically used with
`orientationExitDuration </sdk/apps/qml/QtQuick/PathAnimation#orientationExitDuration-prop>`__,
as specifying an endRotation without an
`orientationExitDuration </sdk/apps/qml/QtQuick/PathAnimation#orientationExitDuration-prop>`__
may cause a jump to the final rotation, rather than a smooth transition.

| 

+--------------------------------------------------------------------------+
|        \ orientation : enumeration                                       |
+--------------------------------------------------------------------------+

This property controls the rotation of the item as it animates along the
path.

If a value other than ``Fixed`` is specified, the
`PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__ will
rotate the item to achieve the specified orientation as it travels along
the path.

-  `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__.Fixed
   (default) - the
   `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__
   will not control the rotation of the item.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__.RightFirst
   - The right side of the item will lead along the path.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__.LeftFirst
   - The left side of the item will lead along the path.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__.BottomFirst
   - The bottom of the item will lead along the path.
-  `PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__.TopFirst
   - The top of the item will lead along the path.

| 

+--------------------------------------------------------------------------+
|        \ orientationEntryDuration : real                                 |
+--------------------------------------------------------------------------+

This property holds the duration (in milliseconds) of the transition in
to the orientation.

If an orientation has been specified for the
`PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__, and
the starting rotation of the item does not match that given by the
orientation, orientationEntryDuration can be used to smoothly transition
from the item's starting rotation to the rotation given by the path
orientation.

| 

+--------------------------------------------------------------------------+
|        \ orientationExitDuration : real                                  |
+--------------------------------------------------------------------------+

This property holds the duration (in milliseconds) of the transition out
of the orientation.

If an orientation and
`endRotation </sdk/apps/qml/QtQuick/PathAnimation#endRotation-prop>`__
have been specified for the
`PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__,
orientationExitDuration can be used to smoothly transition from the
rotation given by the path orientation to the specified
`endRotation </sdk/apps/qml/QtQuick/PathAnimation#endRotation-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ path : `Path </sdk/apps/qml/QtQuick/Path/>`__                   |
+--------------------------------------------------------------------------+

This property holds the path to animate along.

For more information on defining a path see the
`Path </sdk/apps/qml/QtQuick/Path/>`__ documentation.

| 

+--------------------------------------------------------------------------+
|        \ target : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

This property holds the item to animate.

| 

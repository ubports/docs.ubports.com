Singleton defining standard Ubuntu durations and easing for animations
that should be used to ensure that Ubuntu applications are consistent in
their animations.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`BriskDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#BriskDuration-prop>`__****
   : int
-  ****`FastDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#FastDuration-prop>`__****
   : int
-  ****`SleepyDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#SleepyDuration-prop>`__****
   : int
-  ****`SlowDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#SlowDuration-prop>`__****
   : int
-  ****`SnapDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#SnapDuration-prop>`__****
   : int
-  ****`StandardEasing </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#StandardEasing-prop>`__****
   : QEasingCurve
-  ****`StandardEasingReverse </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#StandardEasingReverse-prop>`__****
   : QEasingCurve

Detailed Description
--------------------

Example of use:

.. code:: qml

    RotationAnimation {
       duration: UbuntuAnimation.SlowDuration
       easing: UbuntuAnimation.StandardEasing
    }

Animation durations should be selected depending on the frequency and
disruptiveness of the animation. The more frequent an animation is, the
faster it should be. The more disruptive an animation is, the slower it
should be. Rule of thumb to select durations:

-  `SnapDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#SnapDuration-prop>`__:
   very frequent, non-disruptive.
-  `FastDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#FastDuration-prop>`__:
   frequent, non-disruptive.
-  `SlowDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#SlowDuration-prop>`__:
   less frequent, non-disruptive.
-  `SleepyDuration </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#SleepyDuration-prop>`__:
   disruptive.

Note that
`UbuntuNumberAnimation </sdk/apps/qml/Ubuntu.Components/UbuntuNumberAnimation/>`__
provides a standard
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ for Ubuntu
applications.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ BriskDuration : int                                             |
+--------------------------------------------------------------------------+

Used for frequent and non-disruptive transitions. Used when objects have
more distance to travel or when they are larger in size.

The value is 333ms.

| 

+--------------------------------------------------------------------------+
|        \ FastDuration : int                                              |
+--------------------------------------------------------------------------+

Used for frequent and non-disruptive transitions.

The value is 165ms.

| 

+--------------------------------------------------------------------------+
|        \ SleepyDuration : int                                            |
+--------------------------------------------------------------------------+

Used for disruptive transitions.

The value is 1000ms.

| 

+--------------------------------------------------------------------------+
|        \ SlowDuration : int                                              |
+--------------------------------------------------------------------------+

Used for delay after key press and for less frequent and non-disruptive
transitions.

The value is 500ms.

| 

+--------------------------------------------------------------------------+
|        \ SnapDuration : int                                              |
+--------------------------------------------------------------------------+

Used for very frequent and non-disruptive transitions on small objects.
The user would perceive the change as instant but smooth.

The value is 100ms.

| 

+--------------------------------------------------------------------------+
|        \ StandardEasing : QEasingCurve                                   |
+--------------------------------------------------------------------------+

Used for animations trigerred by user actions.

| 

+--------------------------------------------------------------------------+
|        \ StandardEasingReverse : QEasingCurve                            |
+--------------------------------------------------------------------------+

StandardEasingReverse is mainly used in combination with
`StandardEasing </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#StandardEasing-prop>`__.
For example, if animating an object that bounces, you will want the
object to slow down as it reaches the apex of its bounce and slowly
speed back up as it descends.

StandardEasingReverse should not be used to introduce a new object or
screen to the user. In general, it should only be used if
`StandardEasing </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#StandardEasing-prop>`__
is visually inappropriate and even so, will usually be proceeded by
`StandardEasing </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation#StandardEasing-prop>`__.

| 

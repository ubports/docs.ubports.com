.. _sdk_ubuntu_components_ubuntuanimation:
Ubuntu.Components UbuntuAnimation
=================================

Singleton defining standard Ubuntu durations and easing for animations
that should be used to ensure that Ubuntu applications are consistent in
their animations.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`BriskDuration <sdk_ubuntu_components_ubuntuanimation_BriskDuration-prop>`
   : int
-  :ref:`FastDuration <sdk_ubuntu_components_ubuntuanimation_FastDuration-prop>`
   : int
-  :ref:`SleepyDuration <sdk_ubuntu_components_ubuntuanimation_SleepyDuration-prop>`
   : int
-  :ref:`SlowDuration <sdk_ubuntu_components_ubuntuanimation_SlowDuration-prop>`
   : int
-  :ref:`SnapDuration <sdk_ubuntu_components_ubuntuanimation_SnapDuration-prop>`
   : int
-  :ref:`StandardEasing <sdk_ubuntu_components_ubuntuanimation_StandardEasing-prop>`
   : QEasingCurve
-  :ref:`StandardEasingReverse <sdk_ubuntu_components_ubuntuanimation_StandardEasingReverse-prop>`
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

-  :ref:`SnapDuration <sdk_ubuntu_components_ubuntuanimation#SnapDuration-prop>`:
   very frequent, non-disruptive.
-  :ref:`FastDuration <sdk_ubuntu_components_ubuntuanimation#FastDuration-prop>`:
   frequent, non-disruptive.
-  :ref:`SlowDuration <sdk_ubuntu_components_ubuntuanimation#SlowDuration-prop>`:
   less frequent, non-disruptive.
-  :ref:`SleepyDuration <sdk_ubuntu_components_ubuntuanimation#SleepyDuration-prop>`:
   disruptive.

Note that
:ref:`UbuntuNumberAnimation <sdk_ubuntu_components_ubuntunumberanimation>`
provides a standard :ref:`NumberAnimation <sdk_qtquick_numberanimation>`
for Ubuntu applications.

Property Documentation
----------------------

.. _sdk_ubuntu_components_ubuntuanimation_BriskDuration-prop:

+--------------------------------------------------------------------------+
|        \ BriskDuration : int                                             |
+--------------------------------------------------------------------------+

Used for frequent and non-disruptive transitions. Used when objects have
more distance to travel or when they are larger in size.

The value is 333ms.

| 

.. _sdk_ubuntu_components_ubuntuanimation_FastDuration-prop:

+--------------------------------------------------------------------------+
|        \ FastDuration : int                                              |
+--------------------------------------------------------------------------+

Used for frequent and non-disruptive transitions.

The value is 165ms.

| 

.. _sdk_ubuntu_components_ubuntuanimation_SleepyDuration-prop:

+--------------------------------------------------------------------------+
|        \ SleepyDuration : int                                            |
+--------------------------------------------------------------------------+

Used for disruptive transitions.

The value is 1000ms.

| 

.. _sdk_ubuntu_components_ubuntuanimation_SlowDuration-prop:

+--------------------------------------------------------------------------+
|        \ SlowDuration : int                                              |
+--------------------------------------------------------------------------+

Used for delay after key press and for less frequent and non-disruptive
transitions.

The value is 500ms.

| 

.. _sdk_ubuntu_components_ubuntuanimation_SnapDuration-prop:

+--------------------------------------------------------------------------+
|        \ SnapDuration : int                                              |
+--------------------------------------------------------------------------+

Used for very frequent and non-disruptive transitions on small objects.
The user would perceive the change as instant but smooth.

The value is 100ms.

| 

.. _sdk_ubuntu_components_ubuntuanimation_StandardEasing-prop:

+--------------------------------------------------------------------------+
|        \ StandardEasing : QEasingCurve                                   |
+--------------------------------------------------------------------------+

Used for animations trigerred by user actions.

| 

.. _sdk_ubuntu_components_ubuntuanimation_StandardEasingReverse-prop:

+--------------------------------------------------------------------------+
|        \ StandardEasingReverse : QEasingCurve                            |
+--------------------------------------------------------------------------+

StandardEasingReverse is mainly used in combination with
:ref:`StandardEasing <sdk_ubuntu_components_ubuntuanimation#StandardEasing-prop>`.
For example, if animating an object that bounces, you will want the
object to slow down as it reaches the apex of its bounce and slowly
speed back up as it descends.

StandardEasingReverse should not be used to introduce a new object or
screen to the user. In general, it should only be used if
:ref:`StandardEasing <sdk_ubuntu_components_ubuntuanimation#StandardEasing-prop>`
is visually inappropriate and even so, will usually be proceeded by
:ref:`StandardEasing <sdk_ubuntu_components_ubuntuanimation#StandardEasing-prop>`.

| 

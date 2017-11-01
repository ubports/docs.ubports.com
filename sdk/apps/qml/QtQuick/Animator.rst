Is the base of all QML animators.

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.2               |
+---------------------+----------------------+

Properties
----------

-  ****`duration </sdk/apps/qml/QtQuick/Animator#duration-prop>`__**** :
   int
-  ****`easing </sdk/apps/qml/QtQuick/Animator#easing-prop>`__****

   -  ****`easing.type </sdk/apps/qml/QtQuick/Animator#easing.type-prop>`__****
      : enumeration
   -  ****`easing.amplitude </sdk/apps/qml/QtQuick/Animator#easing.amplitude-prop>`__****
      : real
   -  ****`easing.overshoot </sdk/apps/qml/QtQuick/Animator#easing.overshoot-prop>`__****
      : real
   -  ****`easing.period </sdk/apps/qml/QtQuick/Animator#easing.period-prop>`__****
      : real
   -  ****`easing.bezierCurve </sdk/apps/qml/QtQuick/Animator#easing.bezierCurve-prop>`__****
      : list<real>

-  ****`from </sdk/apps/qml/QtQuick/Animator#from-prop>`__**** : real
-  ****`target </sdk/apps/qml/QtQuick/Animator#target-prop>`__**** :
   QtQuick::Item
-  ****`to </sdk/apps/qml/QtQuick/Animator#to-prop>`__**** : real

Detailed Description
--------------------

Animator types are a special type of animation which operate directly on
Qt Quick's scene graph, rather than the QML objects and their properties
like regular Animation types do. This has the benefit that Animator
based animations can animate on the `scene graph's rendering
thread </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph#threaded-render-loop>`__
even when the UI thread is blocked.

The value of the QML property will be updated after the animation has
finished. The property is not updated while the animation is running.

The Animator types can be used just like any other Animation type.

.. code:: qml

    Rectangle {
        id: mixBox
        width: 50
        height: 50
        ParallelAnimation {
            ColorAnimation {
                target: mixBox
                property: "color"
                from: "forestgreen"
                to: "lightsteelblue";
                duration: 1000
            }
            ScaleAnimator {
                target: mixBox
                from: 2
                to: 1
                duration: 1000
            }
            running: true
        }
    }

If all sub-animations of
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ and
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ are
Animator types, the
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ and
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
will also be treated as an Animator and be run on the scene graph's
rendering thread when possible.

The Animator types can be used for animations during transitions, but
they do not support the
`reversible </sdk/apps/qml/QtQuick/Transition#reversible-prop>`__
property.

The Animator type cannot be used directly in a QML file. It exists to
provide a set of common properties and methods, available across all the
other animator types that inherit from it. Attempting to use the
Animator type directly will result in an error.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration of the animation in milliseconds.

The default value is 250.

| 

+--------------------------------------------------------------------------+
|        \ **easing group**                                                |
+==========================================================================+
|        \ easing.type : enumeration                                       |
+--------------------------------------------------------------------------+
|        \ easing.amplitude : real                                         |
+--------------------------------------------------------------------------+
|        \ easing.overshoot : real                                         |
+--------------------------------------------------------------------------+
|        \ easing.period : real                                            |
+--------------------------------------------------------------------------+
|        \ easing.bezierCurve : list<real>                                 |
+--------------------------------------------------------------------------+

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period and/or overshoot
(more details provided after the table). The default easing curve is
``Easing.Linear``.

.. code:: qml

    PropertyAnimation { properties: "y"; easing.type: Easing.InOutElastic; easing.amplitude: 2.0; easing.period: 1.5 }

Available types are:

+--------------------------+--------------------------+--------------------------+
| ``Easing.Linear``        | Easing curve for a       | |image0|                 |
|                          | linear (t) function:     |                          |
|                          | velocity is constant.    |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InQuad``        | Easing curve for a       | |image1|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: accelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutQuad``       | Easing curve for a       | |image2|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: decelerating   |                          |
|                          | to zero velocity.        |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutQuad``     | Easing curve for a       | |image3|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInQuad``     | Easing curve for a       | |image4|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InCubic``       | Easing curve for a cubic | |image5|                 |
|                          | (t^3) function:          |                          |
|                          | accelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutCubic``      | Easing curve for a cubic | |image6|                 |
|                          | (t^3) function:          |                          |
|                          | decelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutCubic``    | Easing curve for a cubic | |image7|                 |
|                          | (t^3) function:          |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInCubic``    | Easing curve for a cubic | |image8|                 |
|                          | (t^3) function:          |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InQuart``       | Easing curve for a       | |image9|                 |
|                          | quartic (t^4) function:  |                          |
|                          | accelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutQuart``      | Easing curve for a       | |image10|                |
|                          | quartic (t^4) function:  |                          |
|                          | decelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutQuart``    | Easing curve for a       | |image11|                |
|                          | quartic (t^4) function:  |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInQuart``    | Easing curve for a       | |image12|                |
|                          | quartic (t^4) function:  |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InQuint``       | Easing curve for a       | |image13|                |
|                          | quintic (t^5) function:  |                          |
|                          | accelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutQuint``      | Easing curve for a       | |image14|                |
|                          | quintic (t^5) function:  |                          |
|                          | decelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutQuint``    | Easing curve for a       | |image15|                |
|                          | quintic (t^5) function:  |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInQuint``    | Easing curve for a       | |image16|                |
|                          | quintic (t^5) function:  |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InSine``        | Easing curve for a       | |image17|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: accelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutSine``       | Easing curve for a       | |image18|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: decelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutSine``     | Easing curve for a       | |image19|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInSine``     | Easing curve for a       | |image20|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InExpo``        | Easing curve for an      | |image21|                |
|                          | exponential (2^t)        |                          |
|                          | function: accelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutExpo``       | Easing curve for an      | |image22|                |
|                          | exponential (2^t)        |                          |
|                          | function: decelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutExpo``     | Easing curve for an      | |image23|                |
|                          | exponential (2^t)        |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInExpo``     | Easing curve for an      | |image24|                |
|                          | exponential (2^t)        |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InCirc``        | Easing curve for a       | |image25|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: accelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutCirc``       | Easing curve for a       | |image26|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: decelerating   |                          |
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutCirc``     | Easing curve for a       | |image27|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInCirc``     | Easing curve for a       | |image28|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InElastic``     | Easing curve for an      | |image29|                |
|                          | elastic (exponentially   |                          |
|                          | decaying sine wave)      |                          |
|                          | function: accelerating   |                          |
|                          | from zero velocity.      |                          |
|                          | The peak amplitude can   |                          |
|                          | be set with the          |                          |
|                          | *amplitude* parameter,   |                          |
|                          | and the period of decay  |                          |
|                          | by the *period*          |                          |
|                          | parameter.               |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutElastic``    | Easing curve for an      | |image30|                |
|                          | elastic (exponentially   |                          |
|                          | decaying sine wave)      |                          |
|                          | function: decelerating   |                          |
|                          | from zero velocity.      |                          |
|                          | The peak amplitude can   |                          |
|                          | be set with the          |                          |
|                          | *amplitude* parameter,   |                          |
|                          | and the period of decay  |                          |
|                          | by the *period*          |                          |
|                          | parameter.               |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutElastic``  | Easing curve for an      | |image31|                |
|                          | elastic (exponentially   |                          |
|                          | decaying sine wave)      |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInElastic``  | Easing curve for an      | |image32|                |
|                          | elastic (exponentially   |                          |
|                          | decaying sine wave)      |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InBack``        | Easing curve for a back  | |image33|                |
|                          | (overshooting cubic      |                          |
|                          | function: (s+1)\*t^3 -   |                          |
|                          | s\*t^2) easing in:       |                          |
|                          | accelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutBack``       | Easing curve for a back  | |image34|                |
|                          | (overshooting cubic      |                          |
|                          | function: (s+1)\*t^3 -   |                          |
|                          | s\*t^2) easing out:      |                          |
|                          | decelerating to zero     |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutBack``     | Easing curve for a back  | |image35|                |
|                          | (overshooting cubic      |                          |
|                          | function: (s+1)\*t^3 -   |                          |
|                          | s\*t^2) easing in/out:   |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInBack``     | Easing curve for a back  | |image36|                |
|                          | (overshooting cubic      |                          |
|                          | easing: (s+1)\*t^3 -     |                          |
|                          | s\*t^2) easing out/in:   |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InBounce``      | Easing curve for a       | |image37|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function:        |                          |
|                          | accelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutBounce``     | Easing curve for a       | |image38|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function:        |                          |
|                          | decelerating from zero   |                          |
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutBounce``   | Easing curve for a       | |image39|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function easing  |                          |
|                          | in/out: acceleration     |                          |
|                          | until halfway, then      |                          |
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInBounce``   | Easing curve for a       | |image40|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function easing  |                          |
|                          | out/in: deceleration     |                          |
|                          | until halfway, then      |                          |
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.Bezier``        | Custom easing curve      |                          |
|                          | defined by the           |                          |
|                          | easing.bezierCurve       |                          |
|                          | property.                |                          |
+--------------------------+--------------------------+--------------------------+

``easing.amplitude`` is only applicable for bounce and elastic curves
(curves of type ``Easing.InBounce``, ``Easing.OutBounce``,
``Easing.InOutBounce``, ``Easing.OutInBounce``, ``Easing.InElastic``,
``Easing.OutElastic``, ``Easing.InOutElastic`` or
``Easing.OutInElastic``).

``easing.overshoot`` is only applicable if ``easing.type`` is:
``Easing.InBack``, ``Easing.OutBack``, ``Easing.InOutBack`` or
``Easing.OutInBack``.

``easing.period`` is only applicable if easing.type is:
``Easing.InElastic``, ``Easing.OutElastic``, ``Easing.InOutElastic`` or
``Easing.OutInElastic``.

``easing.bezierCurve`` is only applicable if easing.type is:
``Easing.Bezier``. This property is a list<real> containing groups of
three points defining a curve from 0,0 to 1,1 - control1, control2, end
point: [cx1, cy1, cx2, cy2, endx, endy, ...]. The last point must be
1,1.

See the `Easing
Curves </sdk/apps/qml/QtQuick/animation#easing-curves>`__ for a
demonstration of the different easing settings.

| 

+--------------------------------------------------------------------------+
|        \ from : real                                                     |
+--------------------------------------------------------------------------+

This property holds the starting value for the animation.

If the Animator is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the starting state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the current value of the property at the moment the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__ is triggered.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

+--------------------------------------------------------------------------+
|        \ target : `QtQuick::Item </sdk/apps/qml/QtQuick/Item/>`__        |
+--------------------------------------------------------------------------+

This property holds the target item of the animator.

**Note:** Animator targets must be Item based types.

| 

+--------------------------------------------------------------------------+
|        \ to : real                                                       |
+--------------------------------------------------------------------------+

This property holds the end value for the animation.

If the Animator is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the value of the property change that triggered the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-linear.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inquad.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outquad.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutquad.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinquad.png
.. |image5| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-incubic.png
.. |image6| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outcubic.png
.. |image7| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutcubic.png
.. |image8| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outincubic.png
.. |image9| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inquart.png
.. |image10| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outquart.png
.. |image11| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutquart.png
.. |image12| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinquart.png
.. |image13| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inquint.png
.. |image14| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outquint.png
.. |image15| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutquint.png
.. |image16| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinquint.png
.. |image17| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-insine.png
.. |image18| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outsine.png
.. |image19| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutsine.png
.. |image20| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinsine.png
.. |image21| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inexpo.png
.. |image22| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outexpo.png
.. |image23| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutexpo.png
.. |image24| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinexpo.png
.. |image25| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-incirc.png
.. |image26| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outcirc.png
.. |image27| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutcirc.png
.. |image28| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outincirc.png
.. |image29| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inelastic.png
.. |image30| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outelastic.png
.. |image31| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutelastic.png
.. |image32| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinelastic.png
.. |image33| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inback.png
.. |image34| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outback.png
.. |image35| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutback.png
.. |image36| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinback.png
.. |image37| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inbounce.png
.. |image38| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outbounce.png
.. |image39| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-inoutbounce.png
.. |image40| image:: /media/sdk/apps/qml/QtQuick/Animator/images/qeasingcurve-outinbounce.png


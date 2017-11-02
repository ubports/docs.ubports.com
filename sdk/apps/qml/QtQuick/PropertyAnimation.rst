.. _sdk_qtquick_propertyanimation:
QtQuick PropertyAnimation
=========================

Animates changes in property values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Animation <sdk_qtquick_animation>`_ |
|                                      | _                                    |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`ColorAnimation <sdk_qtquick_coloran |
|                                      | imation>`_ ,                         |
|                                      | :ref:`NumberAnimation <sdk_qtquick_number |
|                                      | animation>`_ ,                       |
|                                      | :ref:`RotationAnimation <sdk_qtquick_rota |
|                                      | tionanimation>`_ ,                   |
|                                      | and                                  |
|                                      | :ref:`Vector3dAnimation <sdk_qtquick_vect |
|                                      | or3danimation>`_ .                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`duration <sdk_qtquick_propertyanimation_duration-prop>` :
   int
-  :ref:`easing <sdk_qtquick_propertyanimation_easing-prop>`

   -  :ref:`easing.type <sdk_qtquick_propertyanimation_easing.type-prop>`
      : enumeration
   -  :ref:`easing.amplitude <sdk_qtquick_propertyanimation_easing.amplitude-prop>`
      : real
   -  :ref:`easing.overshoot <sdk_qtquick_propertyanimation_easing.overshoot-prop>`
      : real
   -  :ref:`easing.period <sdk_qtquick_propertyanimation_easing.period-prop>`
      : real
   -  :ref:`easing.bezierCurve <sdk_qtquick_propertyanimation_easing.bezierCurve-prop>`
      : list<real>

-  :ref:`exclude <sdk_qtquick_propertyanimation_exclude-prop>` :
   list<Object>
-  :ref:`from <sdk_qtquick_propertyanimation_from-prop>` : variant
-  :ref:`properties <sdk_qtquick_propertyanimation_properties-prop>`
   : string
-  :ref:`property <sdk_qtquick_propertyanimation_property-prop>` :
   string
-  :ref:`target <sdk_qtquick_propertyanimation_target-prop>` :
   Object
-  :ref:`targets <sdk_qtquick_propertyanimation_targets-prop>` :
   list<Object>
-  :ref:`to <sdk_qtquick_propertyanimation_to-prop>` : variant

Detailed Description
--------------------

`PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_ 
provides a way to animate changes to a property's value.

It can be used to define animations in a number of ways:

-  In a
   `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ 

   For example, to animate any objects that have changed their ``x`` or
   ``y`` properties as a result of a state change, using an
   ``InOutQuad`` easing curve:

   .. code:: qml

       Rectangle {
           id: rect
           width: 100; height: 100
           color: "red"
           states: State {
               name: "moved"
               PropertyChanges { target: rect; x: 50 }
           }
           transitions: Transition {
               PropertyAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
           }
       }

-  In a :ref:`Behavior <sdk_qtquick_behavior>`

   For example, to animate all changes to a rectangle's ``x`` property:

   .. code:: qml

       Rectangle {
           width: 100; height: 100
           color: "red"
           Behavior on x { PropertyAnimation {} }
           MouseArea { anchors.fill: parent; onClicked: parent.x = 50 }
       }

-  As a property value source

   For example, to repeatedly animate the rectangle's ``x`` property:

   .. code:: qml

       Rectangle {
           width: 100; height: 100
           color: "red"
           SequentialAnimation on x {
               loops: Animation.Infinite
               PropertyAnimation { to: 50 }
               PropertyAnimation { to: 0 }
           }
       }

-  In a signal handler

   For example, to fade out ``theObject`` when clicked:

   .. code:: qml

       MouseArea {
           anchors.fill: theObject
           onClicked: PropertyAnimation { target: theObject; property: "opacity"; to: 0 }
       }

-  Standalone

   For example, to animate ``rect``'s ``width`` property over 500ms,
   from its current width to 30:

   .. code:: qml

       Rectangle {
           id: theRect
           width: 100; height: 100
           color: "red"
           // this is a standalone animation, it's not running by default
           PropertyAnimation { id: animation; target: theRect; property: "width"; to: 30; duration: 500 }
           MouseArea { anchors.fill: parent; onClicked: animation.running = true }
       }

Depending on how the animation is used, the set of properties normally
used will be different. For more information see the individual property
documentation, as well as the `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ 
introduction.

Note that
`PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_ 
inherits the abstract :ref:`Animation <sdk_qtquick_animation>` type. This
includes additional properties and methods for controlling the
animation.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ 
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_propertyanimation_duration-prop:

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration of the animation, in milliseconds.

The default value is 250.

| 

.. _sdk_qtquick_propertyanimation_**easing group**-prop:

+--------------------------------------------------------------------------+
|        \ **easing group**                                                |
+==========================================================================+
.. _sdk_qtquick_propertyanimation_easing.amplitude-prop:
|        \ easing.type : enumeration                                       |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_propertyanimation_easing.overshoot-prop:
|        \ easing.amplitude : real                                         |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_propertyanimation_easing.period-prop:
|        \ easing.overshoot : real                                         |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_propertyanimation_easing.bezierCurve-prop:
|        \ easing.period : real                                            |
+--------------------------------------------------------------------------+
|        \ easing.bezierCurve : list<real>                                 |
+--------------------------------------------------------------------------+

//! propertyanimation.easing

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period and/or overshoot
(more details provided after the table). The default easing curve is
``Easing.Linear``.

.. code:: qml

    PropertyAnimation { properties: "y"; easing.type: Easing.InOutElastic; easing.amplitude: 2.0; easing.period: 1.5 }

Available types are:

.. _sdk_qtquick_propertyanimation_``Easing.Linear``         Easing curve for a        image0-prop:

+--------------------------+--------------------------+--------------------------+
| ``Easing.Linear``        | Easing curve for a       | |image0|                 |
|                          | linear (t) function:     |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InQuad``         Easing curve for a        image1-prop:
|                          | velocity is constant.    |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InQuad``        | Easing curve for a       | |image1|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: accelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutQuad``        Easing curve for a        image2-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutQuad``       | Easing curve for a       | |image2|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: decelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutQuad``      Easing curve for a        image3-prop:
|                          | to zero velocity.        |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutQuad``     | Easing curve for a       | |image3|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInQuad``      Easing curve for a        image4-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInQuad``     | Easing curve for a       | |image4|                 |
|                          | quadratic (t^2)          |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InCubic``        Easing curve for a cubic  image5-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InCubic``       | Easing curve for a cubic | |image5|                 |
|                          | (t^3) function:          |                          |
|                          | accelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutCubic``       Easing curve for a cubic  image6-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutCubic``      | Easing curve for a cubic | |image6|                 |
|                          | (t^3) function:          |                          |
|                          | decelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutCubic``     Easing curve for a cubic  image7-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutCubic``    | Easing curve for a cubic | |image7|                 |
|                          | (t^3) function:          |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInCubic``     Easing curve for a cubic  image8-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInCubic``    | Easing curve for a cubic | |image8|                 |
|                          | (t^3) function:          |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InQuart``        Easing curve for a        image9-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InQuart``       | Easing curve for a       | |image9|                 |
|                          | quartic (t^4) function:  |                          |
|                          | accelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutQuart``       Easing curve for a        image10-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutQuart``      | Easing curve for a       | |image10|                |
|                          | quartic (t^4) function:  |                          |
|                          | decelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutQuart``     Easing curve for a        image11-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutQuart``    | Easing curve for a       | |image11|                |
|                          | quartic (t^4) function:  |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInQuart``     Easing curve for a        image12-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInQuart``    | Easing curve for a       | |image12|                |
|                          | quartic (t^4) function:  |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InQuint``        Easing curve for a        image13-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InQuint``       | Easing curve for a       | |image13|                |
|                          | quintic (t^5) function:  |                          |
|                          | accelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutQuint``       Easing curve for a        image14-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutQuint``      | Easing curve for a       | |image14|                |
|                          | quintic (t^5) function:  |                          |
|                          | decelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutQuint``     Easing curve for a        image15-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutQuint``    | Easing curve for a       | |image15|                |
|                          | quintic (t^5) function:  |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInQuint``     Easing curve for a        image16-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInQuint``    | Easing curve for a       | |image16|                |
|                          | quintic (t^5) function:  |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InSine``         Easing curve for a        image17-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InSine``        | Easing curve for a       | |image17|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: accelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutSine``        Easing curve for a        image18-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutSine``       | Easing curve for a       | |image18|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: decelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutSine``      Easing curve for a        image19-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutSine``     | Easing curve for a       | |image19|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInSine``      Easing curve for a        image20-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInSine``     | Easing curve for a       | |image20|                |
|                          | sinusoidal (sin(t))      |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InExpo``         Easing curve for an       image21-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InExpo``        | Easing curve for an      | |image21|                |
|                          | exponential (2^t)        |                          |
|                          | function: accelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutExpo``        Easing curve for an       image22-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutExpo``       | Easing curve for an      | |image22|                |
|                          | exponential (2^t)        |                          |
|                          | function: decelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutExpo``      Easing curve for an       image23-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutExpo``     | Easing curve for an      | |image23|                |
|                          | exponential (2^t)        |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInExpo``      Easing curve for an       image24-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInExpo``     | Easing curve for an      | |image24|                |
|                          | exponential (2^t)        |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InCirc``         Easing curve for a        image25-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InCirc``        | Easing curve for a       | |image25|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: accelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutCirc``        Easing curve for a        image26-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutCirc``       | Easing curve for a       | |image26|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: decelerating   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutCirc``      Easing curve for a        image27-prop:
|                          | from zero velocity.      |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutCirc``     | Easing curve for a       | |image27|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInCirc``      Easing curve for a        image28-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInCirc``     | Easing curve for a       | |image28|                |
|                          | circular (sqrt(1-t^2))   |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InElastic``      Easing curve for an       image29-prop:
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
.. _sdk_qtquick_propertyanimation_``Easing.OutElastic``     Easing curve for an       image30-prop:
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
.. _sdk_qtquick_propertyanimation_``Easing.InOutElastic``   Easing curve for an       image31-prop:
|                          | parameter.               |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutElastic``  | Easing curve for an      | |image31|                |
|                          | elastic (exponentially   |                          |
|                          | decaying sine wave)      |                          |
|                          | function: acceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInElastic``   Easing curve for an       image32-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInElastic``  | Easing curve for an      | |image32|                |
|                          | elastic (exponentially   |                          |
|                          | decaying sine wave)      |                          |
|                          | function: deceleration   |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InBack``         Easing curve for a back   image33-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InBack``        | Easing curve for a back  | |image33|                |
|                          | (overshooting cubic      |                          |
|                          | function: (s+1)\*t^3 -   |                          |
|                          | s\*t^2) easing in:       |                          |
|                          | accelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutBack``        Easing curve for a back   image34-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutBack``       | Easing curve for a back  | |image34|                |
|                          | (overshooting cubic      |                          |
|                          | function: (s+1)\*t^3 -   |                          |
|                          | s\*t^2) easing out:      |                          |
|                          | decelerating to zero     |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutBack``      Easing curve for a back   image35-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutBack``     | Easing curve for a back  | |image35|                |
|                          | (overshooting cubic      |                          |
|                          | function: (s+1)\*t^3 -   |                          |
|                          | s\*t^2) easing in/out:   |                          |
|                          | acceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInBack``      Easing curve for a back   image36-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInBack``     | Easing curve for a back  | |image36|                |
|                          | (overshooting cubic      |                          |
|                          | easing: (s+1)\*t^3 -     |                          |
|                          | s\*t^2) easing out/in:   |                          |
|                          | deceleration until       |                          |
|                          | halfway, then            |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InBounce``       Easing curve for a        image37-prop:
|                          | acceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InBounce``      | Easing curve for a       | |image37|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function:        |                          |
|                          | accelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutBounce``      Easing curve for a        image38-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutBounce``     | Easing curve for a       | |image38|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function:        |                          |
|                          | decelerating from zero   |                          |
.. _sdk_qtquick_propertyanimation_``Easing.InOutBounce``    Easing curve for a        image39-prop:
|                          | velocity.                |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.InOutBounce``   | Easing curve for a       | |image39|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function easing  |                          |
|                          | in/out: acceleration     |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.OutInBounce``    Easing curve for a        image40-prop:
|                          | deceleration.            |                          |
+--------------------------+--------------------------+--------------------------+
| ``Easing.OutInBounce``   | Easing curve for a       | |image40|                |
|                          | bounce (exponentially    |                          |
|                          | decaying parabolic       |                          |
|                          | bounce) function easing  |                          |
|                          | out/in: deceleration     |                          |
|                          | until halfway, then      |                          |
.. _sdk_qtquick_propertyanimation_``Easing.Bezier``         Custom easing curve-prop:
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
Curves </sdk/apps/qml/QtQuick/animation/#easing-curves>`_  for a
demonstration of the different easing settings. //!
propertyanimation.easing

| 

.. _sdk_qtquick_propertyanimation_exclude-prop:

+--------------------------------------------------------------------------+
|        \ exclude : list<Object>                                          |
+--------------------------------------------------------------------------+

This property holds the items not to be affected by this animation.

**See also**
:ref:`PropertyAnimation::targets <sdk_qtquick_propertyanimation#targets-prop>`.

| 

.. _sdk_qtquick_propertyanimation_from-prop:

+--------------------------------------------------------------------------+
|        \ from : variant                                                  |
+--------------------------------------------------------------------------+

This property holds the starting value for the animation.

If the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_ 
is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ 
or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value
defined in the starting state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ ,
or the current value of the property at the moment the
:ref:`Behavior <sdk_qtquick_behavior>` is triggered.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 

.. _sdk_qtquick_propertyanimation_properties-prop:

+--------------------------------------------------------------------------+
|        \ properties : string                                             |
+--------------------------------------------------------------------------+

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. code:: qml

    NumberAnimation { target: theItem; property: "x"; to: 500 }

has the same meaning as

.. code:: qml

    NumberAnimation { targets: theItem; properties: "x"; to: 500 }

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

The ``targets`` property allows multiple targets to be set. For example,
this animates the ``x`` property of both ``itemA`` and ``itemB``:

.. code:: qml

    NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. _sdk_qtquick_propertyanimation_Value Source / Behavior               When an animation is used as a value-prop:

+--------------------------------------+--------------------------------------+
| Value Source / Behavior              | When an animation is used as a value |
|                                      | source or in a Behavior, the default |
|                                      | target and property name to be       |
|                                      | animated can both be inferred.       |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            NumberAnimation on x { to |
|                                      | : 500; loops: Animation.Infinite } / |
|                                      | /animate theRect's x property        |
|                                      |            Behavior on y { NumberAni |
|                                      | mation {} } //animate theRect's y pr |
|                                      | operty                               |
.. _sdk_qtquick_propertyanimation_Transition                            When used in a transition, a-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Transition                           | When used in a transition, a         |
|                                      | property animation is assumed to     |
|                                      | match *all* targets but *no*         |
|                                      | properties. In practice, that means  |
|                                      | you need to specify at least the     |
|                                      | properties in order for the          |
|                                      | animation to do anything.            |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            Item { id: uselessItem }  |
|                                      |            states: State {           |
|                                      |                name: "state1"        |
|                                      |                PropertyChanges { tar |
|                                      | get: theRect; x: 200; y: 200; z: 4 } |
|                                      |                PropertyChanges { tar |
|                                      | get: uselessItem; x: 10; y: 10; z: 2 |
|                                      |  }                                   |
|                                      |            }                         |
|                                      |            transitions: Transition { |
|                                      |                //animate both theRec |
|                                      | t's and uselessItem's x and y to the |
|                                      | ir final values                      |
|                                      |                NumberAnimation { pro |
|                                      | perties: "x,y" }                     |
|                                      |                //animate theRect's z |
|                                      |  to its final value                  |
|                                      |                NumberAnimation { tar |
|                                      | get: theRect; property: "z" }        |
|                                      |            }                         |
.. _sdk_qtquick_propertyanimation_Standalone                            When an animation is used-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Standalone                           | When an animation is used            |
|                                      | standalone, both the target and      |
|                                      | property need to be explicitly       |
|                                      | specified.                           |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            //need to explicitly spec |
|                                      | ify target and property              |
|                                      |            NumberAnimation { id: the |
|                                      | Anim; target: theRect; property: "x" |
|                                      | ; to: 500 }                          |
|                                      |            MouseArea {               |
|                                      |                anchors.fill: parent  |
|                                      |                onClicked: theAnim.st |
|                                      | art()                                |
|                                      |            }                         |
|                                      |        }                             |
+--------------------------------------+--------------------------------------+

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

**See also** :ref:`exclude <sdk_qtquick_propertyanimation#exclude-prop>`
and `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 

.. _sdk_qtquick_propertyanimation_property-prop:

+--------------------------------------------------------------------------+
|        \ property : string                                               |
+--------------------------------------------------------------------------+

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. code:: qml

    NumberAnimation { target: theItem; property: "x"; to: 500 }

has the same meaning as

.. code:: qml

    NumberAnimation { targets: theItem; properties: "x"; to: 500 }

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

The ``targets`` property allows multiple targets to be set. For example,
this animates the ``x`` property of both ``itemA`` and ``itemB``:

.. code:: qml

    NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. _sdk_qtquick_propertyanimation_Value Source / Behavior               When an animation is used as a value-prop:

+--------------------------------------+--------------------------------------+
| Value Source / Behavior              | When an animation is used as a value |
|                                      | source or in a Behavior, the default |
|                                      | target and property name to be       |
|                                      | animated can both be inferred.       |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            NumberAnimation on x { to |
|                                      | : 500; loops: Animation.Infinite } / |
|                                      | /animate theRect's x property        |
|                                      |            Behavior on y { NumberAni |
|                                      | mation {} } //animate theRect's y pr |
|                                      | operty                               |
.. _sdk_qtquick_propertyanimation_Transition                            When used in a transition, a-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Transition                           | When used in a transition, a         |
|                                      | property animation is assumed to     |
|                                      | match *all* targets but *no*         |
|                                      | properties. In practice, that means  |
|                                      | you need to specify at least the     |
|                                      | properties in order for the          |
|                                      | animation to do anything.            |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            Item { id: uselessItem }  |
|                                      |            states: State {           |
|                                      |                name: "state1"        |
|                                      |                PropertyChanges { tar |
|                                      | get: theRect; x: 200; y: 200; z: 4 } |
|                                      |                PropertyChanges { tar |
|                                      | get: uselessItem; x: 10; y: 10; z: 2 |
|                                      |  }                                   |
|                                      |            }                         |
|                                      |            transitions: Transition { |
|                                      |                //animate both theRec |
|                                      | t's and uselessItem's x and y to the |
|                                      | ir final values                      |
|                                      |                NumberAnimation { pro |
|                                      | perties: "x,y" }                     |
|                                      |                //animate theRect's z |
|                                      |  to its final value                  |
|                                      |                NumberAnimation { tar |
|                                      | get: theRect; property: "z" }        |
|                                      |            }                         |
.. _sdk_qtquick_propertyanimation_Standalone                            When an animation is used-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Standalone                           | When an animation is used            |
|                                      | standalone, both the target and      |
|                                      | property need to be explicitly       |
|                                      | specified.                           |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            //need to explicitly spec |
|                                      | ify target and property              |
|                                      |            NumberAnimation { id: the |
|                                      | Anim; target: theRect; property: "x" |
|                                      | ; to: 500 }                          |
|                                      |            MouseArea {               |
|                                      |                anchors.fill: parent  |
|                                      |                onClicked: theAnim.st |
|                                      | art()                                |
|                                      |            }                         |
|                                      |        }                             |
+--------------------------------------+--------------------------------------+

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

**See also** :ref:`exclude <sdk_qtquick_propertyanimation#exclude-prop>`
and `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 

.. _sdk_qtquick_propertyanimation_target-prop:

+--------------------------------------------------------------------------+
|        \ target : Object                                                 |
+--------------------------------------------------------------------------+

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. code:: qml

    NumberAnimation { target: theItem; property: "x"; to: 500 }

has the same meaning as

.. code:: qml

    NumberAnimation { targets: theItem; properties: "x"; to: 500 }

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

The ``targets`` property allows multiple targets to be set. For example,
this animates the ``x`` property of both ``itemA`` and ``itemB``:

.. code:: qml

    NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. _sdk_qtquick_propertyanimation_Value Source / Behavior               When an animation is used as a value-prop:

+--------------------------------------+--------------------------------------+
| Value Source / Behavior              | When an animation is used as a value |
|                                      | source or in a Behavior, the default |
|                                      | target and property name to be       |
|                                      | animated can both be inferred.       |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            NumberAnimation on x { to |
|                                      | : 500; loops: Animation.Infinite } / |
|                                      | /animate theRect's x property        |
|                                      |            Behavior on y { NumberAni |
|                                      | mation {} } //animate theRect's y pr |
|                                      | operty                               |
.. _sdk_qtquick_propertyanimation_Transition                            When used in a transition, a-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Transition                           | When used in a transition, a         |
|                                      | property animation is assumed to     |
|                                      | match *all* targets but *no*         |
|                                      | properties. In practice, that means  |
|                                      | you need to specify at least the     |
|                                      | properties in order for the          |
|                                      | animation to do anything.            |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            Item { id: uselessItem }  |
|                                      |            states: State {           |
|                                      |                name: "state1"        |
|                                      |                PropertyChanges { tar |
|                                      | get: theRect; x: 200; y: 200; z: 4 } |
|                                      |                PropertyChanges { tar |
|                                      | get: uselessItem; x: 10; y: 10; z: 2 |
|                                      |  }                                   |
|                                      |            }                         |
|                                      |            transitions: Transition { |
|                                      |                //animate both theRec |
|                                      | t's and uselessItem's x and y to the |
|                                      | ir final values                      |
|                                      |                NumberAnimation { pro |
|                                      | perties: "x,y" }                     |
|                                      |                //animate theRect's z |
|                                      |  to its final value                  |
|                                      |                NumberAnimation { tar |
|                                      | get: theRect; property: "z" }        |
|                                      |            }                         |
.. _sdk_qtquick_propertyanimation_Standalone                            When an animation is used-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Standalone                           | When an animation is used            |
|                                      | standalone, both the target and      |
|                                      | property need to be explicitly       |
|                                      | specified.                           |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            //need to explicitly spec |
|                                      | ify target and property              |
|                                      |            NumberAnimation { id: the |
|                                      | Anim; target: theRect; property: "x" |
|                                      | ; to: 500 }                          |
|                                      |            MouseArea {               |
|                                      |                anchors.fill: parent  |
|                                      |                onClicked: theAnim.st |
|                                      | art()                                |
|                                      |            }                         |
|                                      |        }                             |
+--------------------------------------+--------------------------------------+

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

**See also** :ref:`exclude <sdk_qtquick_propertyanimation#exclude-prop>`
and `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 

.. _sdk_qtquick_propertyanimation_targets-prop:

+--------------------------------------------------------------------------+
|        \ targets : list<Object>                                          |
+--------------------------------------------------------------------------+

These properties are used as a set to determine which properties should
be animated. The singular and plural forms are functionally identical,
e.g.

.. code:: qml

    NumberAnimation { target: theItem; property: "x"; to: 500 }

has the same meaning as

.. code:: qml

    NumberAnimation { targets: theItem; properties: "x"; to: 500 }

The singular forms are slightly optimized, so if you do have only a
single target/property to animate you should try to use them.

The ``targets`` property allows multiple targets to be set. For example,
this animates the ``x`` property of both ``itemA`` and ``itemB``:

.. code:: qml

    NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }

In many cases these properties do not need to be explicitly specified,
as they can be inferred from the animation framework:

.. _sdk_qtquick_propertyanimation_Value Source / Behavior               When an animation is used as a value-prop:

+--------------------------------------+--------------------------------------+
| Value Source / Behavior              | When an animation is used as a value |
|                                      | source or in a Behavior, the default |
|                                      | target and property name to be       |
|                                      | animated can both be inferred.       |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            NumberAnimation on x { to |
|                                      | : 500; loops: Animation.Infinite } / |
|                                      | /animate theRect's x property        |
|                                      |            Behavior on y { NumberAni |
|                                      | mation {} } //animate theRect's y pr |
|                                      | operty                               |
.. _sdk_qtquick_propertyanimation_Transition                            When used in a transition, a-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Transition                           | When used in a transition, a         |
|                                      | property animation is assumed to     |
|                                      | match *all* targets but *no*         |
|                                      | properties. In practice, that means  |
|                                      | you need to specify at least the     |
|                                      | properties in order for the          |
|                                      | animation to do anything.            |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            Item { id: uselessItem }  |
|                                      |            states: State {           |
|                                      |                name: "state1"        |
|                                      |                PropertyChanges { tar |
|                                      | get: theRect; x: 200; y: 200; z: 4 } |
|                                      |                PropertyChanges { tar |
|                                      | get: uselessItem; x: 10; y: 10; z: 2 |
|                                      |  }                                   |
|                                      |            }                         |
|                                      |            transitions: Transition { |
|                                      |                //animate both theRec |
|                                      | t's and uselessItem's x and y to the |
|                                      | ir final values                      |
|                                      |                NumberAnimation { pro |
|                                      | perties: "x,y" }                     |
|                                      |                //animate theRect's z |
|                                      |  to its final value                  |
|                                      |                NumberAnimation { tar |
|                                      | get: theRect; property: "z" }        |
|                                      |            }                         |
.. _sdk_qtquick_propertyanimation_Standalone                            When an animation is used-prop:
|                                      |        }                             |
+--------------------------------------+--------------------------------------+
| Standalone                           | When an animation is used            |
|                                      | standalone, both the target and      |
|                                      | property need to be explicitly       |
|                                      | specified.                           |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |        Rectangle {                   |
|                                      |            id: theRect               |
|                                      |            width: 100; height: 100   |
|                                      |            color: Qt.rgba(0,0,1)     |
|                                      |            //need to explicitly spec |
|                                      | ify target and property              |
|                                      |            NumberAnimation { id: the |
|                                      | Anim; target: theRect; property: "x" |
|                                      | ; to: 500 }                          |
|                                      |            MouseArea {               |
|                                      |                anchors.fill: parent  |
|                                      |                onClicked: theAnim.st |
|                                      | art()                                |
|                                      |            }                         |
|                                      |        }                             |
+--------------------------------------+--------------------------------------+

As seen in the above example, properties is specified as a
comma-separated string of property names to animate.

**See also** :ref:`exclude <sdk_qtquick_propertyanimation#exclude-prop>`
and `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 

.. _sdk_qtquick_propertyanimation_to-prop:

+--------------------------------------------------------------------------+
|        \ to : variant                                                    |
+--------------------------------------------------------------------------+

This property holds the end value for the animation.

If the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_ 
is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ 
or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value
defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ ,
or the value of the property change that triggered the
:ref:`Behavior <sdk_qtquick_behavior>`.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

| 

.. |image0| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-linear.png
.. |image1| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inquad.png
.. |image2| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outquad.png
.. |image3| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutquad.png
.. |image4| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinquad.png
.. |image5| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-incubic.png
.. |image6| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outcubic.png
.. |image7| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutcubic.png
.. |image8| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outincubic.png
.. |image9| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inquart.png
.. |image10| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outquart.png
.. |image11| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutquart.png
.. |image12| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinquart.png
.. |image13| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inquint.png
.. |image14| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outquint.png
.. |image15| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutquint.png
.. |image16| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinquint.png
.. |image17| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-insine.png
.. |image18| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outsine.png
.. |image19| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutsine.png
.. |image20| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinsine.png
.. |image21| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inexpo.png
.. |image22| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outexpo.png
.. |image23| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutexpo.png
.. |image24| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinexpo.png
.. |image25| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-incirc.png
.. |image26| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outcirc.png
.. |image27| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutcirc.png
.. |image28| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outincirc.png
.. |image29| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inelastic.png
.. |image30| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outelastic.png
.. |image31| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutelastic.png
.. |image32| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinelastic.png
.. |image33| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inback.png
.. |image34| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outback.png
.. |image35| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutback.png
.. |image36| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinback.png
.. |image37| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inbounce.png
.. |image38| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outbounce.png
.. |image39| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-inoutbounce.png
.. |image40| image:: /mediasdk_qtquick_propertyanimationimages/qeasingcurve-outinbounce.png


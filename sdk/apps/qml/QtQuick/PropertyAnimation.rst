Animates changes in property values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `ColorAnimation </sdk/apps/qml/QtQui |
|                                      | ck/ColorAnimation/>`__,              |
|                                      | `NumberAnimation </sdk/apps/qml/QtQu |
|                                      | ick/NumberAnimation/>`__,            |
|                                      | `RotationAnimation </sdk/apps/qml/Qt |
|                                      | Quick/RotationAnimation/>`__,        |
|                                      | and                                  |
|                                      | `Vector3dAnimation </sdk/apps/qml/Qt |
|                                      | Quick/Vector3dAnimation/>`__.        |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`duration </sdk/apps/qml/QtQuick/PropertyAnimation#duration-prop>`__****
   : int
-  ****`easing </sdk/apps/qml/QtQuick/PropertyAnimation#easing-prop>`__****

   -  ****`easing.type </sdk/apps/qml/QtQuick/PropertyAnimation#easing.type-prop>`__****
      : enumeration
   -  ****`easing.amplitude </sdk/apps/qml/QtQuick/PropertyAnimation#easing.amplitude-prop>`__****
      : real
   -  ****`easing.overshoot </sdk/apps/qml/QtQuick/PropertyAnimation#easing.overshoot-prop>`__****
      : real
   -  ****`easing.period </sdk/apps/qml/QtQuick/PropertyAnimation#easing.period-prop>`__****
      : real
   -  ****`easing.bezierCurve </sdk/apps/qml/QtQuick/PropertyAnimation#easing.bezierCurve-prop>`__****
      : list<real>

-  ****`exclude </sdk/apps/qml/QtQuick/PropertyAnimation#exclude-prop>`__****
   : list<Object>
-  ****`from </sdk/apps/qml/QtQuick/PropertyAnimation#from-prop>`__****
   : variant
-  ****`properties </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__****
   : string
-  ****`property </sdk/apps/qml/QtQuick/PropertyAnimation#property-prop>`__****
   : string
-  ****`target </sdk/apps/qml/QtQuick/PropertyAnimation#target-prop>`__****
   : Object
-  ****`targets </sdk/apps/qml/QtQuick/PropertyAnimation#targets-prop>`__****
   : list<Object>
-  ****`to </sdk/apps/qml/QtQuick/PropertyAnimation#to-prop>`__**** :
   variant

Detailed Description
--------------------

`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
provides a way to animate changes to a property's value.

It can be used to define animations in a number of ways:

-  In a
   `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__

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

-  In a `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__

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
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
introduction.

Note that
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
inherits the abstract `Animation </sdk/apps/qml/QtQuick/Animation/>`__
type. This includes additional properties and methods for controlling
the animation.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

Property Documentation
----------------------

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
|        \ easing.overshoot : real                                         |
+--------------------------------------------------------------------------+
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
demonstration of the different easing settings. //!
propertyanimation.easing

| 

+--------------------------------------------------------------------------+
|        \ exclude : list<Object>                                          |
+--------------------------------------------------------------------------+

This property holds the items not to be affected by this animation.

**See also**
`PropertyAnimation::targets </sdk/apps/qml/QtQuick/PropertyAnimation#targets-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ from : variant                                                  |
+--------------------------------------------------------------------------+

This property holds the starting value for the animation.

If the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
is defined within a
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

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAnimation#exclude-prop>`__ and
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

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

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAnimation#exclude-prop>`__ and
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

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

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAnimation#exclude-prop>`__ and
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

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

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAnimation#exclude-prop>`__ and
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

+--------------------------------------------------------------------------+
|        \ to : variant                                                    |
+--------------------------------------------------------------------------+

This property holds the end value for the animation.

If the
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
is defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the value of the property change that triggered the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-linear.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inquad.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outquad.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutquad.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinquad.png
.. |image5| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-incubic.png
.. |image6| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outcubic.png
.. |image7| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutcubic.png
.. |image8| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outincubic.png
.. |image9| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inquart.png
.. |image10| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outquart.png
.. |image11| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutquart.png
.. |image12| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinquart.png
.. |image13| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inquint.png
.. |image14| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outquint.png
.. |image15| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutquint.png
.. |image16| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinquint.png
.. |image17| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-insine.png
.. |image18| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outsine.png
.. |image19| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutsine.png
.. |image20| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinsine.png
.. |image21| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inexpo.png
.. |image22| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outexpo.png
.. |image23| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutexpo.png
.. |image24| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinexpo.png
.. |image25| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-incirc.png
.. |image26| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outcirc.png
.. |image27| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutcirc.png
.. |image28| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outincirc.png
.. |image29| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inelastic.png
.. |image30| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outelastic.png
.. |image31| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutelastic.png
.. |image32| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinelastic.png
.. |image33| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inback.png
.. |image34| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outback.png
.. |image35| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutback.png
.. |image36| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinback.png
.. |image37| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inbounce.png
.. |image38| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outbounce.png
.. |image39| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-inoutbounce.png
.. |image40| image:: /media/sdk/apps/qml/QtQuick/PropertyAnimation/images/qeasingcurve-outinbounce.png


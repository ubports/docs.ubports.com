Is the base of all QML animations

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `AnchorAnimation </sdk/apps/qml/QtQu |
|                                      | ick/AnchorAnimation/>`__,            |
|                                      | `ParallelAnimation </sdk/apps/qml/Qt |
|                                      | Quick/ParallelAnimation/>`__,        |
|                                      | `ParentAnimation </sdk/apps/qml/QtQu |
|                                      | ick/ParentAnimation/>`__,            |
|                                      | `PathAnimation </sdk/apps/qml/QtQuic |
|                                      | k/PathAnimation/>`__,                |
|                                      | `PauseAnimation </sdk/apps/qml/QtQui |
|                                      | ck/PauseAnimation/>`__,              |
|                                      | `PropertyAction </sdk/apps/qml/QtQui |
|                                      | ck/PropertyAction/>`__,              |
|                                      | `PropertyAnimation </sdk/apps/qml/Qt |
|                                      | Quick/PropertyAnimation/>`__,        |
|                                      | `ScriptAction </sdk/apps/qml/QtQuick |
|                                      | /ScriptAction/>`__,                  |
|                                      | and                                  |
|                                      | `SequentialAnimation </sdk/apps/qml/ |
|                                      | QtQuick/SequentialAnimation/>`__.    |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`alwaysRunToEnd </sdk/apps/qml/QtQuick/Animation#alwaysRunToEnd-prop>`__****
   : bool
-  ****`loops </sdk/apps/qml/QtQuick/Animation#loops-prop>`__**** : int
-  ****`paused </sdk/apps/qml/QtQuick/Animation#paused-prop>`__**** :
   bool
-  ****`running </sdk/apps/qml/QtQuick/Animation#running-prop>`__**** :
   bool

Signals
-------

-  ****`started </sdk/apps/qml/QtQuick/Animation#started-signal>`__****\ ()
-  ****`stopped </sdk/apps/qml/QtQuick/Animation#stopped-signal>`__****\ ()

Methods
-------

-  ****`complete </sdk/apps/qml/QtQuick/Animation#complete-method>`__****\ ()
-  ****`pause </sdk/apps/qml/QtQuick/Animation#pause-method>`__****\ ()
-  ****`restart </sdk/apps/qml/QtQuick/Animation#restart-method>`__****\ ()
-  ****`resume </sdk/apps/qml/QtQuick/Animation#resume-method>`__****\ ()
-  ****`start </sdk/apps/qml/QtQuick/Animation#start-method>`__****\ ()
-  ****`stop </sdk/apps/qml/QtQuick/Animation#stop-method>`__****\ ()

Detailed Description
--------------------

The Animation type cannot be used directly in a QML file. It exists to
provide a set of common properties and methods, available across all the
other animation types that inherit from it. Attempting to use the
Animation type directly will result in an error.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ alwaysRunToEnd : bool                                           |
+--------------------------------------------------------------------------+

This property holds whether the animation should run to completion when
it is stopped.

If this true the animation will complete its current iteration when it
is stopped - either by setting the ``running`` property to false, or by
calling the ``stop()`` method. The ``complete()`` method is not effected
by this value.

This behavior is most useful when the ``loops`` property is set, as the
animation will finish playing normally but not restart.

By default, the alwaysRunToEnd property is not set.

**Note:** alwaysRunToEnd has no effect on animations in a Transition.

| 

+--------------------------------------------------------------------------+
|        \ loops : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of times the animation should play.

By default, ``loops`` is 1: the animation will play through once and
then stop.

If set to Animation.Infinite, the animation will continuously repeat
until it is explicitly stopped - either by setting the ``running``
property to false, or by calling the ``stop()`` method.

In the following example, the rectangle will spin indefinitely.

.. code:: cpp

    Rectangle {
        width: 100; height: 100; color: "green"
        RotationAnimation on rotation {
            loops: Animation.Infinite
            from: 0
            to: 360
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ paused : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the animation is currently paused.

The ``paused`` property can be set to declaratively control whether or
not an animation is paused.

Animations can also be paused and resumed imperatively from JavaScript
using the ``pause()`` and ``resume()`` methods.

By default, animations are not paused.

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

This property holds whether the animation is currently running.

The ``running`` property can be set to declaratively control whether or
not an animation is running. The following example will animate a
rectangle whenever the `MouseArea </sdk/apps/qml/QtQuick/MouseArea/>`__
is pressed.

.. code:: cpp

    Rectangle {
        width: 100; height: 100
        NumberAnimation on x {
            running: myMouse.pressed
            from: 0; to: 100
        }
        MouseArea { id: myMouse }
    }

Likewise, the ``running`` property can be read to determine if the
animation is running. In the following example the Text item will
indicate whether or not the animation is running.

.. code:: cpp

    NumberAnimation { id: myAnimation }
    Text { text: myAnimation.running ? "Animation is running" : "Animation is not running" }

Animations can also be started and stopped imperatively from JavaScript
using the ``start()`` and ``stop()`` methods.

By default, animations are not running. Though, when the animations are
assigned to properties, as property value sources using the *on* syntax,
they are set to running by default.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ started()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the animation begins.

It is only triggered for top-level, standalone animations. It will not
be triggered for animations in a Behavior or Transition, or animations
that are part of an animation group.

The corresponding handler is ``onStarted``.

| 

+--------------------------------------------------------------------------+
|        \ stopped()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the animation ends.

The animation may have been stopped manually, or may have run to
completion.

It is only triggered for top-level, standalone animations. It will not
be triggered for animations in a Behavior or Transition, or animations
that are part of an animation group.

If
`alwaysRunToEnd </sdk/apps/qml/QtQuick/Animation#alwaysRunToEnd-prop>`__
is true, this signal will not be emitted until the animation has
completed its current iteration.

The corresponding handler is ``onStopped``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ complete()                                                      |
+--------------------------------------------------------------------------+

Stops the animation, jumping to the final property values

If the animation is not running, calling this method has no effect. The
``running`` property will be false following a call to ``complete()``.

Unlike ``stop()``, ``complete()`` immediately fast-forwards the
animation to its end. In the following example,

.. code:: cpp

    Rectangle {
        NumberAnimation on x { from: 0; to: 100; duration: 500 }
    }

calling ``stop()`` at time 250ms will result in the ``x`` property
having a value of 50, while calling ``complete()`` will set the ``x``
property to 100, exactly as though the animation had played the whole
way through.

| 

+--------------------------------------------------------------------------+
|        \ pause()                                                         |
+--------------------------------------------------------------------------+

Pauses the animation

If the animation is already paused or not ``running``, calling this
method has no effect. The ``paused`` property will be true following a
call to ``pause()``.

| 

+--------------------------------------------------------------------------+
|        \ restart()                                                       |
+--------------------------------------------------------------------------+

Restarts the animation

This is a convenience method, and is equivalent to calling ``stop()``
and then ``start()``.

| 

+--------------------------------------------------------------------------+
|        \ resume()                                                        |
+--------------------------------------------------------------------------+

Resumes a paused animation

If the animation is not paused or not ``running``, calling this method
has no effect. The ``paused`` property will be false following a call to
``resume()``.

| 

+--------------------------------------------------------------------------+
|        \ start()                                                         |
+--------------------------------------------------------------------------+

Starts the animation

If the animation is already running, calling this method has no effect.
The ``running`` property will be true following a call to ``start()``.

| 

+--------------------------------------------------------------------------+
|        \ stop()                                                          |
+--------------------------------------------------------------------------+

Stops the animation

If the animation is not running, calling this method has no effect. Both
the ``running`` and ``paused`` properties will be false following a call
to ``stop()``.

Normally ``stop()`` stops the animation immediately, and the animation
has no further influence on property values. In this example animation

.. code:: cpp

    Rectangle {
        NumberAnimation on x { from: 0; to: 100; duration: 500 }
    }

was stopped at time 250ms, the ``x`` property will have a value of 50.

However, if the ``alwaysRunToEnd`` property is set, the animation will
continue running until it completes and then stop. The ``running``
property will still become false immediately.

| 

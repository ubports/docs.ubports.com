Enables manual control of animations

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`animation </sdk/apps/qml/QtQuick/AnimationController#animation-prop>`__****
   : Animation
-  ****`progress </sdk/apps/qml/QtQuick/AnimationController#progress-prop>`__****
   : real

Methods
-------

-  ****`completeToBeginning </sdk/apps/qml/QtQuick/AnimationController#completeToBeginning-method>`__****\ ()
-  ****`completeToEnd </sdk/apps/qml/QtQuick/AnimationController#completeToEnd-method>`__****\ ()
-  ****`reload </sdk/apps/qml/QtQuick/AnimationController#reload-method>`__****\ ()

Detailed Description
--------------------

Normally animations are driven by an internal timer, but the
`AnimationController </sdk/apps/qml/QtQuick/AnimationController/>`__
allows the given *animation* to be driven by a *progress* value
explicitly.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] animation :                                           |
| `Animation </sdk/apps/qml/QtQuick/Animation/>`__                         |
+--------------------------------------------------------------------------+

This property holds the animation to be controlled by the
`AnimationController </sdk/apps/qml/QtQuick/AnimationController/>`__.

Note:An animation controlled by
`AnimationController </sdk/apps/qml/QtQuick/AnimationController/>`__
will always have its ``running`` and ``paused`` properties set to true.
It can not be manually started or stopped (much like an animation in a
Behavior can not be manually started or stopped).

| 

+--------------------------------------------------------------------------+
|        \ progress : real                                                 |
+--------------------------------------------------------------------------+

This property holds the animation progress value.

The valid ``progress`` value is 0.0 to 1.0, setting values less than 0
will be converted to 0, setting values great than 1 will be converted to
1.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ completeToBeginning()                                           |
+--------------------------------------------------------------------------+

Finishes running the controlled animation in a backwards direction.

After calling this method, the animation runs normally from the current
progress point in a backwards direction to the beginning state.

The animation controller's progress value will be automatically updated
while the animation is running.

**See also**
`completeToEnd() </sdk/apps/qml/QtQuick/AnimationController#completeToEnd-method>`__
and
`progress </sdk/apps/qml/QtQuick/AnimationController#progress-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ completeToEnd()                                                 |
+--------------------------------------------------------------------------+

Finishes running the controlled animation in a forwards direction.

After calling this method, the animation runs normally from the current
progress point in a forwards direction to the end state.

The animation controller's progress value will be automatically updated
while the animation is running.

**See also**
`completeToBeginning() </sdk/apps/qml/QtQuick/AnimationController#completeToBeginning-method>`__
and
`progress </sdk/apps/qml/QtQuick/AnimationController#progress-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ reload()                                                        |
+--------------------------------------------------------------------------+

Reloads the animation properties

If the animation properties changed, calling this method to reload the
animation definations.

| 

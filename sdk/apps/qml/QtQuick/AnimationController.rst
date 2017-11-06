.. _sdk_qtquick_animationcontroller:

QtQuick AnimationController
===========================

Enables manual control of animations

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`animation <sdk_qtquick_animationcontroller_animation>` : Animation
-  :ref:`progress <sdk_qtquick_animationcontroller_progress>` : real

Methods
-------

-  :ref:`completeToBeginning <sdk_qtquick_animationcontroller_completeToBeginning>`\ ()
-  :ref:`completeToEnd <sdk_qtquick_animationcontroller_completeToEnd>`\ ()
-  :ref:`reload <sdk_qtquick_animationcontroller_reload>`\ ()

Detailed Description
--------------------

Normally animations are driven by an internal timer, but the :ref:`AnimationController <sdk_qtquick_animationcontroller>` allows the given *animation* to be driven by a *progress* value explicitly.

Property Documentation
----------------------

.. _sdk_qtquick_animationcontroller_animation:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] animation : :ref:`Animation <sdk_qtquick_animation>`                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the animation to be controlled by the :ref:`AnimationController <sdk_qtquick_animationcontroller>`.

Note:An animation controlled by :ref:`AnimationController <sdk_qtquick_animationcontroller>` will always have its ``running`` and ``paused`` properties set to true. It can not be manually started or stopped (much like an animation in a Behavior can not be manually started or stopped).

.. _sdk_qtquick_animationcontroller_progress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| progress : real                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the animation progress value.

The valid ``progress`` value is 0.0 to 1.0, setting values less than 0 will be converted to 0, setting values great than 1 will be converted to 1.

Method Documentation
--------------------

.. _sdk_qtquick_animationcontroller_completeToBeginning:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| completeToBeginning()                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Finishes running the controlled animation in a backwards direction.

After calling this method, the animation runs normally from the current progress point in a backwards direction to the beginning state.

The animation controller's progress value will be automatically updated while the animation is running.

**See also** :ref:`completeToEnd() <sdk_qtquick_animationcontroller_completeToEnd>` and :ref:`progress <sdk_qtquick_animationcontroller_progress>`.

.. _sdk_qtquick_animationcontroller_completeToEnd:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| completeToEnd()                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Finishes running the controlled animation in a forwards direction.

After calling this method, the animation runs normally from the current progress point in a forwards direction to the end state.

The animation controller's progress value will be automatically updated while the animation is running.

**See also** :ref:`completeToBeginning() <sdk_qtquick_animationcontroller_completeToBeginning>` and :ref:`progress <sdk_qtquick_animationcontroller_progress>`.

.. _sdk_qtquick_animationcontroller_reload:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| reload()                                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Reloads the animation properties

If the animation properties changed, calling this method to reload the animation definations.


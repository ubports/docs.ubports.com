.. _sdk_qtfeedback_feedbackeffect:

QtFeedback FeedbackEffect
=========================

The FeedbackEffect element is the base class for all feedback effects.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import .                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | FileEffect and `HapticsEffect </sdk/apps/qml/QtFeedback/hapticseffect/>`_ .                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`duration <sdk_qtfeedback_feedbackeffect_duration>` : int
-  :ref:`error <sdk_qtfeedback_feedbackeffect_error>` : Feedback::ErrorType
-  :ref:`paused <sdk_qtfeedback_feedbackeffect_paused>` : bool
-  :ref:`running <sdk_qtfeedback_feedbackeffect_running>` : bool
-  :ref:`state <sdk_qtfeedback_feedbackeffect_state>` : FeedbackEffect::State

Detailed Description
--------------------

You can't create one of these elements directly, but several other elements inherit the methods and properties of these elements.

There are several predefined enumerations and constants provided in this class:

1. Duration This enum describes the possible predefined duration types. Generally a specific value in milliseconds can be supplied instead of one of these values.

-  Feedback.Infinite - Infinite effect duration

2. State This enum describes the state of the effect. An effect will be in one of these states.

-  Feedback.Stopped - The effect is not running. This is the initial state.
-  Feedback.Paused - The effect is paused.
-  Feedback.Running - The effect is running.
-  Feedback.Loading - The effect is loading.

3. ErrorType This enum describes the possible errors happening on the effect.

-  Feedback.UnknownError - An unknown error occurred.
-  Feedback.DeviceBusy - The feedback could not start because the device is busy, the device could be busy if a higher-priority client is using the haptics/actuator device.

**See also** FileEffect, ThemeEffect, HapticsEffect, and QFeedbackEffect.

Property Documentation
----------------------

.. _sdk_qtfeedback_feedbackeffect_duration:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| duration : int                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The duration of the effect, in milliseconds. This is 0 for effects of unknown duration, or Feedback.Infinite for effects that don't stop.

**See also** Feedback.

.. _sdk_qtfeedback_feedbackeffect_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error : Feedback::ErrorType                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the error status of the :ref:`FeedbackEffect <sdk_qtfeedback_feedbackeffect>`. The error is one of the following values:

-  Feedback.UnknownError - An unknown error occurred.
-  Feedback.DeviceBusy - The device resource is already being used.

**See also** Feedback and QFeedbackEffect::ErrorType.

.. _sdk_qtfeedback_feedbackeffect_paused:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| paused : bool                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is true if this feedback effect is paused.

.. _sdk_qtfeedback_feedbackeffect_running:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| running : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is true if this feedback effect is running.

.. _sdk_qtfeedback_feedbackeffect_state:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| state : FeedbackEffect::State                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This is the current state of the effect. It is one of:

-  Feedback.Stopped - the effect is not playing.
-  Feedback.Loading - the effect is being loaded.
-  Feedback.Running - the effect is playing.
-  Feedback.Paused - the effect was being played, but is now paused.

**See also** Feedback.


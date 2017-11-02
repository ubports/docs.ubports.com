.. _sdk_qtfeedback_hapticseffect:
QtFeedback hapticseffect
========================

The HapticsEffect element represents a custom haptic feedback effect.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import .                             |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`FeedbackEffect <sdk_qtfeedback_feed |
|                                      | backeffect>`_                        |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`actuator <sdk_qtfeedback_hapticseffect_actuator-prop>` :
   Actuator
-  :ref:`attackIntensity <sdk_qtfeedback_hapticseffect_attackIntensity-prop>`
   : double
-  :ref:`attackTime <sdk_qtfeedback_hapticseffect_attackTime-prop>`
   : int
-  :ref:`availableActuators <sdk_qtfeedback_hapticseffect_availableActuators-prop>`
   : list<Actuator>
-  :ref:`fadeIntensity <sdk_qtfeedback_hapticseffect_fadeIntensity-prop>`
   : double
-  :ref:`fadeTime <sdk_qtfeedback_hapticseffect_fadeTime-prop>` :
   int
-  :ref:`intensity <sdk_qtfeedback_hapticseffect_intensity-prop>` :
   double
-  :ref:`period <sdk_qtfeedback_hapticseffect_period-prop>` : int

Detailed Description
--------------------

This class closely corresponds to the C++ QFeedbackHapticsEffect class.

.. code:: qml

    import QtFeedback 5.0
    HapticsEffect {
        id: rumbleEffect
        attackIntensity: 0.0
        attackTime: 250
        intensity: 1.0
        duration: 100
        fadeTime: 250
        fadeIntensity: 0.0
    }
    MouseArea {
        onClicked: {
        rumbleEffect.start();  // plays a rumble effect
    }

**See also** Actuator and QFeedbackHapticsEffect.

Property Documentation
----------------------

.. _sdk_qtfeedback_hapticseffect_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ actuator : `Actuator <sdk_qtfeedback_actuator>`            |
+--------------------------------------------------------------------------+

The actuator that is used for playing this effect.

**See also** :ref:`Actuator <sdk_qtfeedback_actuator>`.

| 

.. _sdk_qtfeedback_hapticseffect_attackIntensity-prop:

+--------------------------------------------------------------------------+
|        \ attackIntensity : double                                        |
+--------------------------------------------------------------------------+

The intensity of the attack (fade-in) part of the haptics effect, from
0.0 to 1.0.

| 

.. _sdk_qtfeedback_hapticseffect_attackTime-prop:

+--------------------------------------------------------------------------+
|        \ attackTime : int                                                |
+--------------------------------------------------------------------------+

The duration of the attack (fade-in) part of the haptics effect.

| 

.. _sdk_qtfeedback_hapticseffect_availableActuators-prop:

+--------------------------------------------------------------------------+
|        \ availableActuators :                                            |
| list<:ref:`Actuator <sdk_qtfeedback_actuator>`>                             |
+--------------------------------------------------------------------------+

This property holds a list of available actuators. This property is read
only.

**See also** :ref:`Actuator <sdk_qtfeedback_actuator>`.

| 

.. _sdk_qtfeedback_hapticseffect_fadeIntensity-prop:

+--------------------------------------------------------------------------+
|        \ fadeIntensity : double                                          |
+--------------------------------------------------------------------------+

The intensity of the fade-out part of the haptics effect, from 0.0 to
1.0.

| 

.. _sdk_qtfeedback_hapticseffect_fadeTime-prop:

+--------------------------------------------------------------------------+
|        \ fadeTime : int                                                  |
+--------------------------------------------------------------------------+

The duration of the fade-out part of the haptics effect.

| 

.. _sdk_qtfeedback_hapticseffect_intensity-prop:

+--------------------------------------------------------------------------+
|        \ intensity : double                                              |
+--------------------------------------------------------------------------+

The intensity of the main part of the haptics effect, from 0.0 to 1.0.

| 

.. _sdk_qtfeedback_hapticseffect_period-prop:

+--------------------------------------------------------------------------+
|        \ period : int                                                    |
+--------------------------------------------------------------------------+

The period of the haptics effect. If the period is zero, the effect will
not repeat. If it is non-zero, the effect will repeat every period
milliseconds.


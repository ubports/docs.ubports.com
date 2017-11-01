The HapticsEffect element represents a custom haptic feedback effect.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import .                             |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `FeedbackEffect </sdk/apps/qml/QtFee |
|                                      | dback/FeedbackEffect/>`__            |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`actuator </sdk/apps/qml/QtFeedback/hapticseffect#actuator-prop>`__****
   : Actuator
-  ****`attackIntensity </sdk/apps/qml/QtFeedback/hapticseffect#attackIntensity-prop>`__****
   : double
-  ****`attackTime </sdk/apps/qml/QtFeedback/hapticseffect#attackTime-prop>`__****
   : int
-  ****`availableActuators </sdk/apps/qml/QtFeedback/hapticseffect#availableActuators-prop>`__****
   : list<Actuator>
-  ****`fadeIntensity </sdk/apps/qml/QtFeedback/hapticseffect#fadeIntensity-prop>`__****
   : double
-  ****`fadeTime </sdk/apps/qml/QtFeedback/hapticseffect#fadeTime-prop>`__****
   : int
-  ****`intensity </sdk/apps/qml/QtFeedback/hapticseffect#intensity-prop>`__****
   : double
-  ****`period </sdk/apps/qml/QtFeedback/hapticseffect#period-prop>`__****
   : int

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

+--------------------------------------------------------------------------+
|        \ actuator : `Actuator </sdk/apps/qml/QtFeedback/actuator/>`__    |
+--------------------------------------------------------------------------+

The actuator that is used for playing this effect.

**See also** `Actuator </sdk/apps/qml/QtFeedback/actuator/>`__.

| 

+--------------------------------------------------------------------------+
|        \ attackIntensity : double                                        |
+--------------------------------------------------------------------------+

The intensity of the attack (fade-in) part of the haptics effect, from
0.0 to 1.0.

| 

+--------------------------------------------------------------------------+
|        \ attackTime : int                                                |
+--------------------------------------------------------------------------+

The duration of the attack (fade-in) part of the haptics effect.

| 

+--------------------------------------------------------------------------+
|        \ availableActuators :                                            |
| list<`Actuator </sdk/apps/qml/QtFeedback/actuator/>`__>                  |
+--------------------------------------------------------------------------+

This property holds a list of available actuators. This property is read
only.

**See also** `Actuator </sdk/apps/qml/QtFeedback/actuator/>`__.

| 

+--------------------------------------------------------------------------+
|        \ fadeIntensity : double                                          |
+--------------------------------------------------------------------------+

The intensity of the fade-out part of the haptics effect, from 0.0 to
1.0.

| 

+--------------------------------------------------------------------------+
|        \ fadeTime : int                                                  |
+--------------------------------------------------------------------------+

The duration of the fade-out part of the haptics effect.

| 

+--------------------------------------------------------------------------+
|        \ intensity : double                                              |
+--------------------------------------------------------------------------+

The intensity of the main part of the haptics effect, from 0.0 to 1.0.

| 

+--------------------------------------------------------------------------+
|        \ period : int                                                    |
+--------------------------------------------------------------------------+

The period of the haptics effect. If the period is zero, the effect will
not repeat. If it is non-zero, the effect will repeat every period
milliseconds.


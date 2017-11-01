The Actuator element represents a feedback actuator.

+---------------------+---------------------+
| Import Statement:   | import .            |
+---------------------+---------------------+
| Instantiates:       | QFeedbackActuator   |
+---------------------+---------------------+

Properties
----------

-  ****`actuatorId </sdk/apps/qml/QtFeedback/actuator#actuatorId-prop>`__****
   : int
-  ****`enabled </sdk/apps/qml/QtFeedback/actuator#enabled-prop>`__****
   : bool
-  ****`name </sdk/apps/qml/QtFeedback/actuator#name-prop>`__**** :
   string
-  ****`state </sdk/apps/qml/QtFeedback/actuator#state-prop>`__**** :
   enumeration
-  ****`valid </sdk/apps/qml/QtFeedback/actuator#valid-prop>`__**** :
   bool

Methods
-------

-  bool
   ****`isCapabilitySupported </sdk/apps/qml/QtFeedback/actuator#isCapabilitySupported-method>`__****\ (enumeration
   *capability*)

Detailed Description
--------------------

The Actuator class maps directly to the QFeedbackActuator C++ class, and
can be used with HapticsEffect elements.

There are several predefined enumerations and constants provided in this
object:

1. Capability

-  Envelope - Value specifying that the device can bound its intensity
   by an envelope.
-  Period - Value specifying that the device can play periodic effects.

2. State

-  Busy - The actuator is busy.
-  Ready - The actuator is ready to play an effect.
-  Unknown - The actuator is in an unknown state.

**See also** HapticsEffect and QFeedbackActuator.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ actuatorId : int                                                |
+--------------------------------------------------------------------------+

This property holds the id of the feedback actuator. This property is
read only.

| 

+--------------------------------------------------------------------------+
|        \ enabled : bool                                                  |
+--------------------------------------------------------------------------+

This property is true if the feedback actuator is enabled.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the feedback actuator. This property is
read only.

| 

+--------------------------------------------------------------------------+
|        \ state : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the state of the feedback actuator. This property is
read only.

| 

+--------------------------------------------------------------------------+
|        \ valid : bool                                                    |
+--------------------------------------------------------------------------+

This property is true if the actuator is valid. This property is read
only.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool isCapabilitySupported(enumeration *capability*)            |
+--------------------------------------------------------------------------+

Returns if the actuator supports the supplied *capability*, available
capabilities are:

-  Envelope - Value specifying that the device can bound its intensity
   by an Envelope.
-  Period - Value specifying that the device can play periodic effects.


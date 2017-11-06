.. _sdk_qtfeedback_actuator:

QtFeedback Actuator
===================

The Actuator element represents a feedback actuator.

+---------------------+---------------------+
| Import Statement:   | import .            |
+---------------------+---------------------+
| Instantiates:       | QFeedbackActuator   |
+---------------------+---------------------+

Properties
----------

-  `actuatorId </sdk/apps/qml/QtFeedback/actuator/#actuatorId-prop>`_  : int
-  `enabled </sdk/apps/qml/QtFeedback/actuator/#enabled-prop>`_  : bool
-  `name </sdk/apps/qml/QtFeedback/actuator/#name-prop>`_  : string
-  `state </sdk/apps/qml/QtFeedback/actuator/#state-prop>`_  : enumeration
-  `valid </sdk/apps/qml/QtFeedback/actuator/#valid-prop>`_  : bool

Methods
-------

-  bool `isCapabilitySupported </sdk/apps/qml/QtFeedback/actuator/#isCapabilitySupported-method>`_ \ (enumeration *capability*)

Detailed Description
--------------------

The Actuator class maps directly to the QFeedbackActuator C++ class, and can be used with HapticsEffect elements.

There are several predefined enumerations and constants provided in this object:

1. Capability

-  Envelope - Value specifying that the device can bound its intensity by an envelope.
-  Period - Value specifying that the device can play periodic effects.

2. State

-  Busy - The actuator is busy.
-  Ready - The actuator is ready to play an effect.
-  Unknown - The actuator is in an unknown state.

**See also** HapticsEffect and QFeedbackActuator.

Property Documentation
----------------------

.. _sdk_qtfeedback_actuator_actuatorId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| actuatorId : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the id of the feedback actuator. This property is read only.

.. _sdk_qtfeedback_actuator_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is true if the feedback actuator is enabled.

.. _sdk_qtfeedback_actuator_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the feedback actuator. This property is read only.

.. _sdk_qtfeedback_actuator_state:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| state : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the state of the feedback actuator. This property is read only.

.. _sdk_qtfeedback_actuator_valid:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| valid : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property is true if the actuator is valid. This property is read only.

Method Documentation
--------------------

.. _sdk_qtfeedback_actuator_isCapabilitySupported:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool isCapabilitySupported(enumeration *capability*)                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns if the actuator supports the supplied *capability*, available capabilities are:

-  Envelope - Value specifying that the device can bound its intensity by an Envelope.
-  Period - Value specifying that the device can play periodic effects.


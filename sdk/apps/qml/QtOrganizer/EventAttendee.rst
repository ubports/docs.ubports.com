.. _sdk_qtorganizer_eventattendee:

QtOrganizer EventAttendee
=========================

The EventAttendee element contains information about an attendee of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`attendeeId <sdk_qtorganizer_eventattendee_attendeeId>` : variant
-  :ref:`emailAddress <sdk_qtorganizer_eventattendee_emailAddress>` : variant
-  :ref:`name <sdk_qtorganizer_eventattendee_name>` : variant
-  :ref:`participationRole <sdk_qtorganizer_eventattendee_participationRole>` : variant
-  :ref:`participationStatus <sdk_qtorganizer_eventattendee_participationStatus>` : variant

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_eventattendee_onDetailChanged>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.FieldName
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.FieldEmailAddress
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.FieldAddendeeId
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.FieldParticipationStatus
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.FieldParticipationRole

**See also** QOrganizerEventAttendee.

Property Documentation
----------------------

.. _sdk_qtorganizer_eventattendee_attendeeId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| attendeeId : variant                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the unique identifier of the attendee.

.. _sdk_qtorganizer_eventattendee_emailAddress:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| emailAddress : variant                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the email address of the attendee.

.. _sdk_qtorganizer_eventattendee_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : variant                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the attendee.

.. _sdk_qtorganizer_eventattendee_participationRole:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| participationRole : variant                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the participation role of the attendee of the event.The value can be one of:

-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleUnknown
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleOrganizer
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleChairperson
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleHost
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleRequiredParticipant
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleOptionalParticipant
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.RoleNonParticipant

.. _sdk_qtorganizer_eventattendee_participationStatus:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| participationStatus : variant                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the participation status of the attendee of the event. The value can be one of:

-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusUnknown
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusAccepted
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusDeclined
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusTentative
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusDelegated
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusInProcess
-  :ref:`EventAttendee <sdk_qtorganizer_eventattendee>`.StatusCompleted

Signal Documentation
--------------------

.. _sdk_qtorganizer_eventattendee_onDetailChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onDetailChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`Detail::onDetailChanged <sdk_qtorganizer_detail_onDetailChanged>`.


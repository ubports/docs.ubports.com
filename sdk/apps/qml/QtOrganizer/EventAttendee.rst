The EventAttendee element contains information about an attendee of an
event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`attendeeId </sdk/apps/qml/QtOrganizer/EventAttendee#attendeeId-prop>`__****
   : variant
-  ****`emailAddress </sdk/apps/qml/QtOrganizer/EventAttendee#emailAddress-prop>`__****
   : variant
-  ****`name </sdk/apps/qml/QtOrganizer/EventAttendee#name-prop>`__****
   : variant
-  ****`participationRole </sdk/apps/qml/QtOrganizer/EventAttendee#participationRole-prop>`__****
   : variant
-  ****`participationStatus </sdk/apps/qml/QtOrganizer/EventAttendee#participationStatus-prop>`__****
   : variant

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/EventAttendee#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.FieldName
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.FieldEmailAddress
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.FieldAddendeeId
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.FieldParticipationStatus
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.FieldParticipationRole

**See also** QOrganizerEventAttendee.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ attendeeId : variant                                            |
+--------------------------------------------------------------------------+

This property holds the unique identifier of the attendee.

| 

+--------------------------------------------------------------------------+
|        \ emailAddress : variant                                          |
+--------------------------------------------------------------------------+

This property holds the email address of the attendee.

| 

+--------------------------------------------------------------------------+
|        \ name : variant                                                  |
+--------------------------------------------------------------------------+

This property holds the name of the attendee.

| 

+--------------------------------------------------------------------------+
|        \ participationRole : variant                                     |
+--------------------------------------------------------------------------+

This property holds the participation role of the attendee of the
event.The value can be one of:

-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleUnknown
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleOrganizer
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleChairperson
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleHost
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleRequiredParticipant
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleOptionalParticipant
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.RoleNonParticipant

| 

+--------------------------------------------------------------------------+
|        \ participationStatus : variant                                   |
+--------------------------------------------------------------------------+

This property holds the participation status of the attendee of the
event. The value can be one of:

-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusUnknown
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusAccepted
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusDeclined
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusTentative
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusDelegated
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusInProcess
-  `EventAttendee </sdk/apps/qml/QtOrganizer/EventAttendee/>`__.StatusCompleted

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

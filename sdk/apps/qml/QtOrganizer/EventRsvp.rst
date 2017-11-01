The EventRsvp element contains Rsvp-information of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`organizerEmail </sdk/apps/qml/QtOrganizer/EventRsvp#organizerEmail-prop>`__****
   : variant
-  ****`organizerName </sdk/apps/qml/QtOrganizer/EventRsvp#organizerName-prop>`__****
   : variant
-  ****`participationRole </sdk/apps/qml/QtOrganizer/EventRsvp#participationRole-prop>`__****
   : variant
-  ****`participationStatus </sdk/apps/qml/QtOrganizer/EventRsvp#participationStatus-prop>`__****
   : variant
-  ****`responseDate </sdk/apps/qml/QtOrganizer/EventRsvp#responseDate-prop>`__****
   : variant
-  ****`responseDeadline </sdk/apps/qml/QtOrganizer/EventRsvp#responseDeadline-prop>`__****
   : variant
-  ****`responseRequirement </sdk/apps/qml/QtOrganizer/EventRsvp#responseRequirement-prop>`__****
   : variant

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/EventRsvp#onDetailChanged-signal>`__****\ ()

Methods
-------

-  bool
   ****`setValue </sdk/apps/qml/QtOrganizer/EventRsvp#setValue-method>`__****\ (field,
   value)
-  variant
   ****`value </sdk/apps/qml/QtOrganizer/EventRsvp#value-method>`__****\ (field)

Detailed Description
--------------------

`EventRsvp </sdk/apps/qml/QtOrganizer/EventRsvp/>`__ detail contains
user specific information about calendar event like participation status
and role, information about response dates and information about
organizer of the event. See more details from the properties themselves
and the QOrganizerEventRsvp.

**See also** QOrganizerEventRsvp.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ organizerEmail : variant                                        |
+--------------------------------------------------------------------------+

This property holds organizer's email of the event.

| 

+--------------------------------------------------------------------------+
|        \ organizerName : variant                                         |
+--------------------------------------------------------------------------+

This property holds organizer's name of the event.

| 

+--------------------------------------------------------------------------+
|        \ participationRole : variant                                     |
+--------------------------------------------------------------------------+

This property holds the calendar user's participation role related to
the event. See
`EventAttendee::participationRole </sdk/apps/qml/QtOrganizer/EventAttendee#participationRole-prop>`__
for more details.

**See also**
`EventAttendee::participationRole </sdk/apps/qml/QtOrganizer/EventAttendee#participationRole-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ participationStatus : variant                                   |
+--------------------------------------------------------------------------+

This property holds the calendar user's participation status related to
the event. See
`EventAttendee::participationStatus </sdk/apps/qml/QtOrganizer/EventAttendee#participationStatus-prop>`__
for more details.

**See also**
`EventAttendee::participationStatus </sdk/apps/qml/QtOrganizer/EventAttendee#participationStatus-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ responseDate : variant                                          |
+--------------------------------------------------------------------------+

This property holds the date when user responded to the event.

| 

+--------------------------------------------------------------------------+
|        \ responseDeadline : variant                                      |
+--------------------------------------------------------------------------+

This property holds the last date for responding the event.

| 

+--------------------------------------------------------------------------+
|        \ responseRequirement : variant                                   |
+--------------------------------------------------------------------------+

This property holds the response requirement of the event. The value can
be one of:

-  `EventRsvp </sdk/apps/qml/QtOrganizer/EventRsvp/>`__.ResponseNotRequired
-  `EventRsvp </sdk/apps/qml/QtOrganizer/EventRsvp/>`__.ResponseRequired

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

**See also**
`Detail::setValue </sdk/apps/qml/QtOrganizer/Detail#setValue-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

**See also**
`Detail::value </sdk/apps/qml/QtOrganizer/Detail#value-method>`__.

| 

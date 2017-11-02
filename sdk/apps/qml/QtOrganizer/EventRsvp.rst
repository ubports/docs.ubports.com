.. _sdk_qtorganizer_eventrsvp:
QtOrganizer EventRsvp
=====================

The EventRsvp element contains Rsvp-information of an event.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`organizerEmail <sdk_qtorganizer_eventrsvp_organizerEmail-prop>`
   : variant
-  :ref:`organizerName <sdk_qtorganizer_eventrsvp_organizerName-prop>`
   : variant
-  :ref:`participationRole <sdk_qtorganizer_eventrsvp_participationRole-prop>`
   : variant
-  :ref:`participationStatus <sdk_qtorganizer_eventrsvp_participationStatus-prop>`
   : variant
-  :ref:`responseDate <sdk_qtorganizer_eventrsvp_responseDate-prop>`
   : variant
-  :ref:`responseDeadline <sdk_qtorganizer_eventrsvp_responseDeadline-prop>`
   : variant
-  :ref:`responseRequirement <sdk_qtorganizer_eventrsvp_responseRequirement-prop>`
   : variant

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_eventrsvp_onDetailChanged-signal>`\ ()

Methods
-------

-  bool
   **:ref:`setValue <sdk_qtorganizer_eventrsvp#setValue-method>`**\ (field,
   value)
-  variant
   **:ref:`value <sdk_qtorganizer_eventrsvp#value-method>`**\ (field)

Detailed Description
--------------------

:ref:`EventRsvp <sdk_qtorganizer_eventrsvp>` detail contains user specific
information about calendar event like participation status and role,
information about response dates and information about organizer of the
event. See more details from the properties themselves and the
QOrganizerEventRsvp.

**See also** QOrganizerEventRsvp.

Property Documentation
----------------------

.. _sdk_qtorganizer_eventrsvp_organizerEmail-prop:

+--------------------------------------------------------------------------+
|        \ organizerEmail : variant                                        |
+--------------------------------------------------------------------------+

This property holds organizer's email of the event.

| 

.. _sdk_qtorganizer_eventrsvp_organizerName-prop:

+--------------------------------------------------------------------------+
|        \ organizerName : variant                                         |
+--------------------------------------------------------------------------+

This property holds organizer's name of the event.

| 

.. _sdk_qtorganizer_eventrsvp_participationRole-prop:

+--------------------------------------------------------------------------+
|        \ participationRole : variant                                     |
+--------------------------------------------------------------------------+

This property holds the calendar user's participation role related to
the event. See
:ref:`EventAttendee::participationRole <sdk_qtorganizer_eventattendee#participationRole-prop>`
for more details.

**See also**
:ref:`EventAttendee::participationRole <sdk_qtorganizer_eventattendee#participationRole-prop>`.

| 

.. _sdk_qtorganizer_eventrsvp_participationStatus-prop:

+--------------------------------------------------------------------------+
|        \ participationStatus : variant                                   |
+--------------------------------------------------------------------------+

This property holds the calendar user's participation status related to
the event. See
:ref:`EventAttendee::participationStatus <sdk_qtorganizer_eventattendee#participationStatus-prop>`
for more details.

**See also**
:ref:`EventAttendee::participationStatus <sdk_qtorganizer_eventattendee#participationStatus-prop>`.

| 

.. _sdk_qtorganizer_eventrsvp_responseDate-prop:

+--------------------------------------------------------------------------+
|        \ responseDate : variant                                          |
+--------------------------------------------------------------------------+

This property holds the date when user responded to the event.

| 

.. _sdk_qtorganizer_eventrsvp_responseDeadline-prop:

+--------------------------------------------------------------------------+
|        \ responseDeadline : variant                                      |
+--------------------------------------------------------------------------+

This property holds the last date for responding the event.

| 

.. _sdk_qtorganizer_eventrsvp_responseRequirement-prop:

+--------------------------------------------------------------------------+
|        \ responseRequirement : variant                                   |
+--------------------------------------------------------------------------+

This property holds the response requirement of the event. The value can
be one of:

-  :ref:`EventRsvp <sdk_qtorganizer_eventrsvp>`.ResponseNotRequired
-  :ref:`EventRsvp <sdk_qtorganizer_eventrsvp>`.ResponseRequired

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_eventrsvp_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 

Method Documentation
--------------------

.. _sdk_qtorganizer_eventrsvp_bool setValue-method:

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::setValue <sdk_qtorganizer_detail#setValue-method>`.

| 

.. _sdk_qtorganizer_eventrsvp_variant value-method:

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

**See also** :ref:`Detail::value <sdk_qtorganizer_detail#value-method>`.

| 

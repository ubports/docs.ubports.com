The Reminder element contains information about when and how the user
wants to reminded of the item.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtOrganizer 5.0               |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `AudibleReminder </sdk/apps/qml/QtOr |
|                                      | ganizer/AudibleReminder/>`__,        |
|                                      | `EmailReminder </sdk/apps/qml/QtOrga |
|                                      | nizer/EmailReminder/>`__,            |
|                                      | and                                  |
|                                      | `VisualReminder </sdk/apps/qml/QtOrg |
|                                      | anizer/VisualReminder/>`__.          |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`reminderType </sdk/apps/qml/QtOrganizer/Reminder#reminderType-prop>`__****
   : enumeration
-  ****`repetitionCount </sdk/apps/qml/QtOrganizer/Reminder#repetitionCount-prop>`__****
   : int
-  ****`repetitionDelay </sdk/apps/qml/QtOrganizer/Reminder#repetitionDelay-prop>`__****
   : int
-  ****`secondsBeforeStart </sdk/apps/qml/QtOrganizer/Reminder#secondsBeforeStart-prop>`__****
   : int

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/Reminder#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  Reminder.FieldRepetitionCount
-  Reminder.FieldRepetitionDelay
-  Reminder.FieldSecondsBeforeStart

**See also** QOrganizerItemReminder.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ reminderType : enumeration                                      |
+--------------------------------------------------------------------------+

This property holds the reminder type of this reminder for an organizer
item. The value can be one of:

-  Reminder.NoReminder
-  Reminder.\ `VisualReminder </sdk/apps/qml/QtOrganizer/VisualReminder/>`__
-  Reminder.\ `AudibleReminder </sdk/apps/qml/QtOrganizer/AudibleReminder/>`__
-  Reminder.\ `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__

| 

+--------------------------------------------------------------------------+
|        \ repetitionCount : int                                           |
+--------------------------------------------------------------------------+

This property holds the number of times the user should be reminded of
the item.

| 

+--------------------------------------------------------------------------+
|        \ repetitionDelay : int                                           |
+--------------------------------------------------------------------------+

This property holds the delay (in seconds) between each repetition of
the reminder.

| 

+--------------------------------------------------------------------------+
|        \ secondsBeforeStart : int                                        |
+--------------------------------------------------------------------------+

This property holds the number of seconds prior to the activation of the
item at which the user wants to be reminded of the item.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

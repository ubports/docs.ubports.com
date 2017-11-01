The EmailReminder element contains information about an email reminder
of an item.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtOrganizer 5.0               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Reminder </sdk/apps/qml/QtOrganizer |
|                                      | /Reminder/>`__                       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`attachments </sdk/apps/qml/QtOrganizer/EmailReminder#attachments-prop>`__****
   : list<variant>
-  ****`body </sdk/apps/qml/QtOrganizer/EmailReminder#body-prop>`__****
   : string
-  ****`recipients </sdk/apps/qml/QtOrganizer/EmailReminder#recipients-prop>`__****
   : list<string>
-  ****`subject </sdk/apps/qml/QtOrganizer/EmailReminder#subject-prop>`__****
   : string

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/EmailReminder#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldRepetitionCount
-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldRepetitionDelay
-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldSecondsBeforeStart
-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldSubject
-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldBody
-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldRecipients
-  `EmailReminder </sdk/apps/qml/QtOrganizer/EmailReminder/>`__.FieldAttachments

**See also** `Reminder </sdk/apps/qml/QtOrganizer/Reminder/>`__ and
QOrganizerItemEmailReminder.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ attachments : list<variant>                                     |
+--------------------------------------------------------------------------+

This property holds the attachments of the email.

| 

+--------------------------------------------------------------------------+
|        \ body : string                                                   |
+--------------------------------------------------------------------------+

This property holds the body of the email.

| 

+--------------------------------------------------------------------------+
|        \ recipients : list<string>                                       |
+--------------------------------------------------------------------------+

This property holds the list of recipients that the user wishes to be
sent an email as part of the reminder.

| 

+--------------------------------------------------------------------------+
|        \ subject : string                                                |
+--------------------------------------------------------------------------+

This property holds the subject of the email.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

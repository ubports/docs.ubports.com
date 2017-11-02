.. _sdk_qtorganizer_emailreminder:
QtOrganizer EmailReminder
=========================

The EmailReminder element contains information about an email reminder
of an item.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtOrganizer 5.0               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Reminder <sdk_qtorganizer_reminder> |
|                                      | `_                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`attachments <sdk_qtorganizer_emailreminder_attachments-prop>`
   : list<variant>
-  :ref:`body <sdk_qtorganizer_emailreminder_body-prop>` : string
-  :ref:`recipients <sdk_qtorganizer_emailreminder_recipients-prop>`
   : list<string>
-  :ref:`subject <sdk_qtorganizer_emailreminder_subject-prop>` :
   string

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_emailreminder_onDetailChanged-signal>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldRepetitionCount
-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldRepetitionDelay
-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldSecondsBeforeStart
-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldSubject
-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldBody
-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldRecipients
-  :ref:`EmailReminder <sdk_qtorganizer_emailreminder>`.FieldAttachments

**See also** :ref:`Reminder <sdk_qtorganizer_reminder>` and
QOrganizerItemEmailReminder.

Property Documentation
----------------------

.. _sdk_qtorganizer_emailreminder_attachments-prop:

+--------------------------------------------------------------------------+
|        \ attachments : list<variant>                                     |
+--------------------------------------------------------------------------+

This property holds the attachments of the email.

| 

.. _sdk_qtorganizer_emailreminder_body-prop:

+--------------------------------------------------------------------------+
|        \ body : string                                                   |
+--------------------------------------------------------------------------+

This property holds the body of the email.

| 

.. _sdk_qtorganizer_emailreminder_recipients-prop:

+--------------------------------------------------------------------------+
|        \ recipients : list<string>                                       |
+--------------------------------------------------------------------------+

This property holds the list of recipients that the user wishes to be
sent an email as part of the reminder.

| 

.. _sdk_qtorganizer_emailreminder_subject-prop:

+--------------------------------------------------------------------------+
|        \ subject : string                                                |
+--------------------------------------------------------------------------+

This property holds the subject of the email.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_emailreminder_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 

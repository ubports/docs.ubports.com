.. _sdk_qtorganizer_audiblereminder:
QtOrganizer AudibleReminder
===========================

The AudibleReminder element contains information about an audible
reminder of an item.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtOrganizer 5.0               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Reminder <sdk_qtorganizer_reminder> |
|                                      | `_                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`dataUrl <sdk_qtorganizer_audiblereminder_dataUrl-prop>` :
   url

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_audiblereminder_onDetailChanged-signal>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`.FieldRepetitionCount
-  :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`.FieldRepetitionDelay
-  :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`.FieldSecondsBeforeStart
-  :ref:`AudibleReminder <sdk_qtorganizer_audiblereminder>`.FieldDataUrl

**See also** :ref:`Reminder <sdk_qtorganizer_reminder>` and
QOrganizerItemAudibleReminder.

Property Documentation
----------------------

.. _sdk_qtorganizer_audiblereminder_dataUrl-prop:

+--------------------------------------------------------------------------+
|        \ dataUrl : url                                                   |
+--------------------------------------------------------------------------+

This property holds the url of the audible data to play.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_audiblereminder_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 

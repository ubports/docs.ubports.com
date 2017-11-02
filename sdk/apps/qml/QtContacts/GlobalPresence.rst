.. _sdk_qtcontacts_globalpresence:
QtContacts GlobalPresence
=========================

The GlobalPresence element provides aggregated presence information for
a contact, synthesized or supplied by the backend.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`customMessage <sdk_qtcontacts_globalpresence_customMessage-prop>`
   : string
-  :ref:`imageUrl <sdk_qtcontacts_globalpresence_imageUrl-prop>` :
   url
-  :ref:`nickname <sdk_qtcontacts_globalpresence_nickname-prop>` :
   string
-  :ref:`state <sdk_qtcontacts_globalpresence_state-prop>` :
   enumeration
-  :ref:`stateText <sdk_qtcontacts_globalpresence_stateText-prop>`
   : string
-  :ref:`timestamp <sdk_qtcontacts_globalpresence_timestamp-prop>`
   : date

Detailed Description
--------------------

:ref:`GlobalPresence <sdk_qtcontacts_globalpresence>` element contains the
following field types:

-  :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.Timestamp
-  :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.Nickname
-  :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.State
-  :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.StateText
-  :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.ImageUrl
-  :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.CustomMessage

This element is part of the **QtContacts** module.

Property Documentation
----------------------

.. _sdk_qtcontacts_globalpresence_customMessage-prop:

+--------------------------------------------------------------------------+
|        \ customMessage : string                                          |
+--------------------------------------------------------------------------+

This property holds the custom status message from the contact for the
online account about which this detail stores presence information.

| 

.. _sdk_qtcontacts_globalpresence_imageUrl-prop:

+--------------------------------------------------------------------------+
|        \ imageUrl : url                                                  |
+--------------------------------------------------------------------------+

This property holds the last-known status image url of the contact for
the online account about which this detail stores presence information.

| 

.. _sdk_qtcontacts_globalpresence_nickname-prop:

+--------------------------------------------------------------------------+
|        \ nickname : string                                               |
+--------------------------------------------------------------------------+

This property holds the nickname value of the
:ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.

| 

.. _sdk_qtcontacts_globalpresence_state-prop:

+--------------------------------------------------------------------------+
|        \ state : enumeration                                             |
+--------------------------------------------------------------------------+

This property holds the presence state enumeration value.

-  Presence.Unknown - Signifies that the presence state of the contact
   is not currently known (default).
-  Presence.Available - Signifies that the contact is available.
-  Presence.Hidden - Signifies that the contact is hidden.
-  Presence.Busy - Signifies that the contact is busy.
-  Presence.Away - Signifies that the contact is away.
-  Presence.ExtendedAway - Signifies that the contact is away for an
   extended period of time.
-  Presence.Offline - Signifies that the contact is offline.

| 

.. _sdk_qtcontacts_globalpresence_stateText-prop:

+--------------------------------------------------------------------------+
|        \ stateText : string                                              |
+--------------------------------------------------------------------------+

This property holds the text corresponding to the current presence
state.

| 

.. _sdk_qtcontacts_globalpresence_timestamp-prop:

+--------------------------------------------------------------------------+
|        \ timestamp : date                                                |
+--------------------------------------------------------------------------+

This property holds the timestamp value of the
:ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`.

| 

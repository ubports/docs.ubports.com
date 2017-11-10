.. _sdk_qtcontacts_presence:

QtContacts Presence
===================

The Presence element provides presence information for an online account of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`customMessage <sdk_qtcontacts_presence_customMessage>` : string
-  :ref:`imageUrl <sdk_qtcontacts_presence_imageUrl>` : url
-  :ref:`nickname <sdk_qtcontacts_presence_nickname>` : string
-  :ref:`state <sdk_qtcontacts_presence_state>` : enumeration
-  :ref:`stateText <sdk_qtcontacts_presence_stateText>` : string
-  :ref:`timestamp <sdk_qtcontacts_presence_timestamp>` : date

Detailed Description
--------------------

Presence element contains the following field types:

-  Presence.Timestamp
-  Presence.Nickname
-  Presence.State
-  Presence.StateText
-  Presence.ImageUrl
-  Presence.CustomMessage

This element is part of the **QtContacts** module.

Property Documentation
----------------------

.. _sdk_qtcontacts_presence_customMessage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| customMessage : string                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the custom status message from the contact for the online account about which this detail stores presence information.

.. _sdk_qtcontacts_presence_imageUrl:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageUrl : url                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the last-known status image url of the contact for the online account about which this detail stores presence information.

.. _sdk_qtcontacts_presence_nickname:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| nickname : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the nickname value of the Presence.

.. _sdk_qtcontacts_presence_state:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| state : enumeration                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the presence state enumeration value.

-  Presence.Unknown - Signifies that the presence state of the contact is not currently known (default).
-  Presence.Available - Signifies that the contact is available.
-  Presence.Hidden - Signifies that the contact is hidden.
-  Presence.Busy - Signifies that the contact is busy.
-  Presence.Away - Signifies that the contact is away.
-  Presence.ExtendedAway - Signifies that the contact is away for an extended period of time.
-  Presence.Offline - Signifies that the contact is offline.

.. _sdk_qtcontacts_presence_stateText:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| stateText : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the text corresponding to the current presence state.

.. _sdk_qtcontacts_presence_timestamp:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| timestamp : date                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the timestamp value of the Presence.


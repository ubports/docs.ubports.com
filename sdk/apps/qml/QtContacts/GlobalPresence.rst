The GlobalPresence element provides aggregated presence information for
a contact, synthesized or supplied by the backend.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`customMessage </sdk/apps/qml/QtContacts/GlobalPresence#customMessage-prop>`__****
   : string
-  ****`imageUrl </sdk/apps/qml/QtContacts/GlobalPresence#imageUrl-prop>`__****
   : url
-  ****`nickname </sdk/apps/qml/QtContacts/GlobalPresence#nickname-prop>`__****
   : string
-  ****`state </sdk/apps/qml/QtContacts/GlobalPresence#state-prop>`__****
   : enumeration
-  ****`stateText </sdk/apps/qml/QtContacts/GlobalPresence#stateText-prop>`__****
   : string
-  ****`timestamp </sdk/apps/qml/QtContacts/GlobalPresence#timestamp-prop>`__****
   : date

Detailed Description
--------------------

`GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__ element
contains the following field types:

-  `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.Timestamp
-  `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.Nickname
-  `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.State
-  `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.StateText
-  `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.ImageUrl
-  `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.CustomMessage

This element is part of the **QtContacts** module.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ customMessage : string                                          |
+--------------------------------------------------------------------------+

This property holds the custom status message from the contact for the
online account about which this detail stores presence information.

| 

+--------------------------------------------------------------------------+
|        \ imageUrl : url                                                  |
+--------------------------------------------------------------------------+

This property holds the last-known status image url of the contact for
the online account about which this detail stores presence information.

| 

+--------------------------------------------------------------------------+
|        \ nickname : string                                               |
+--------------------------------------------------------------------------+

This property holds the nickname value of the
`GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.

| 

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

+--------------------------------------------------------------------------+
|        \ stateText : string                                              |
+--------------------------------------------------------------------------+

This property holds the text corresponding to the current presence
state.

| 

+--------------------------------------------------------------------------+
|        \ timestamp : date                                                |
+--------------------------------------------------------------------------+

This property holds the timestamp value of the
`GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__.

| 

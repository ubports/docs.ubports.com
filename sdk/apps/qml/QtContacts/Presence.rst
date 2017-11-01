The Presence element provides presence information for an online account
of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`customMessage </sdk/apps/qml/QtContacts/Presence#customMessage-prop>`__****
   : string
-  ****`imageUrl </sdk/apps/qml/QtContacts/Presence#imageUrl-prop>`__****
   : url
-  ****`nickname </sdk/apps/qml/QtContacts/Presence#nickname-prop>`__****
   : string
-  ****`state </sdk/apps/qml/QtContacts/Presence#state-prop>`__**** :
   enumeration
-  ****`stateText </sdk/apps/qml/QtContacts/Presence#stateText-prop>`__****
   : string
-  ****`timestamp </sdk/apps/qml/QtContacts/Presence#timestamp-prop>`__****
   : date

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

This property holds the nickname value of the Presence.

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

This property holds the timestamp value of the Presence.

| 

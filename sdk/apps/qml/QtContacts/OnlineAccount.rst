The OnlineAccount element contains a note associated with a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`accountUri </sdk/apps/qml/QtContacts/OnlineAccount#accountUri-prop>`__****
   : string
-  ****`capabilities </sdk/apps/qml/QtContacts/OnlineAccount#capabilities-prop>`__****
   : list<string>
-  ****`protocol </sdk/apps/qml/QtContacts/OnlineAccount#protocol-prop>`__****
   : enumeration
-  ****`serviceProvider </sdk/apps/qml/QtContacts/OnlineAccount#serviceProvider-prop>`__****
   : string
-  ****`subTypes </sdk/apps/qml/QtContacts/OnlineAccount#subTypes-prop>`__****
   : list<variant>

Detailed Description
--------------------

`OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__ element
contains the following field types:

-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.AccountUri
   - the account uri value.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.ServiceProvider
   - the account service provider name.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Protocol
   - the account protocol value.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Capabilities
   - the account capabilities value.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.SubTypes
   - the sub types of an online account.

This element is part of the **QtContacts** module.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ accountUri : string                                             |
+--------------------------------------------------------------------------+

This property holds the value of the account uri.

| 

+--------------------------------------------------------------------------+
|        \ capabilities : list<string>                                     |
+--------------------------------------------------------------------------+

This property holds the value of the account capabilities.

| 

+--------------------------------------------------------------------------+
|        \ protocol : enumeration                                          |
+--------------------------------------------------------------------------+

This property holds the protocol enumeration value.

-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Unknown -
   indicates this online account is for one unsupported protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Aim -
   indicates this online account is for the AIM protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Icq -
   indicates this online account is for the ICQ protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Irc -
   indicates this online account is for the IRC protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Jabber -
   indicates this online account is for the jabber protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Msn -
   indicates this online account is for the MSN protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Qq -
   indicates this online account is for the QQ protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Skype -
   indicates this online account is for the Skype protocol.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Yahoo -
   indicates this online account is for the Yahoo protocol.

| 

+--------------------------------------------------------------------------+
|        \ serviceProvider : string                                        |
+--------------------------------------------------------------------------+

This property holds the value of the account service provider name.

| 

+--------------------------------------------------------------------------+
|        \ subTypes : list<variant>                                        |
+--------------------------------------------------------------------------+

This property holds the value of the sub types of an online account.

-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Unknown
   (default)
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Sip -
   indicating this online account supports SIP.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.SipVoip -
   indicating this online account supports SIP based VOIP.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.Impp -
   indicating this online account supports IMPP.
-  `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__.VideoShare
   - indicating this online account supports VideoShare.

| 

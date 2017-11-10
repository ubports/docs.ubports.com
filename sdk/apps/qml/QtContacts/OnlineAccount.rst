.. _sdk_qtcontacts_onlineaccount:

QtContacts OnlineAccount
========================

The OnlineAccount element contains a note associated with a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`accountUri <sdk_qtcontacts_onlineaccount_accountUri>` : string
-  :ref:`capabilities <sdk_qtcontacts_onlineaccount_capabilities>` : list<string>
-  :ref:`protocol <sdk_qtcontacts_onlineaccount_protocol>` : enumeration
-  :ref:`serviceProvider <sdk_qtcontacts_onlineaccount_serviceProvider>` : string
-  :ref:`subTypes <sdk_qtcontacts_onlineaccount_subTypes>` : list<variant>

Detailed Description
--------------------

:ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>` element contains the following field types:

-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.AccountUri - the account uri value.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.ServiceProvider - the account service provider name.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Protocol - the account protocol value.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Capabilities - the account capabilities value.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.SubTypes - the sub types of an online account.

This element is part of the **QtContacts** module.

Property Documentation
----------------------

.. _sdk_qtcontacts_onlineaccount_accountUri:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| accountUri : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value of the account uri.

.. _sdk_qtcontacts_onlineaccount_capabilities:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| capabilities : list<string>                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value of the account capabilities.

.. _sdk_qtcontacts_onlineaccount_protocol:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| protocol : enumeration                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the protocol enumeration value.

-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Unknown - indicates this online account is for one unsupported protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Aim - indicates this online account is for the AIM protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Icq - indicates this online account is for the ICQ protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Irc - indicates this online account is for the IRC protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Jabber - indicates this online account is for the jabber protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Msn - indicates this online account is for the MSN protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Qq - indicates this online account is for the QQ protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Skype - indicates this online account is for the Skype protocol.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Yahoo - indicates this online account is for the Yahoo protocol.

.. _sdk_qtcontacts_onlineaccount_serviceProvider:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| serviceProvider : string                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value of the account service provider name.

.. _sdk_qtcontacts_onlineaccount_subTypes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| subTypes : list<variant>                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value of the sub types of an online account.

-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Unknown (default)
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Sip - indicating this online account supports SIP.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.SipVoip - indicating this online account supports SIP based VOIP.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.Impp - indicating this online account supports IMPP.
-  :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`.VideoShare - indicating this online account supports VideoShare.


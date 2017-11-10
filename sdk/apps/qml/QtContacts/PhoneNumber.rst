.. _sdk_qtcontacts_phonenumber:

QtContacts PhoneNumber
======================

The PhoneNumber element provides a phone number of a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`number <sdk_qtcontacts_phonenumber_number>` : string
-  :ref:`subTypes <sdk_qtcontacts_phonenumber_subTypes>` : list<variant>

Detailed Description
--------------------

:ref:`PhoneNumber <sdk_qtcontacts_phonenumber>` element contains the following field types:

-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Number
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.SubTypes

This element is part of the **QtContacts** module.

Property Documentation
----------------------

.. _sdk_qtcontacts_phonenumber_number:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| number : string                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value of the phone number.

.. _sdk_qtcontacts_phonenumber_subTypes:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| subTypes : list<variant>                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the sub types of a :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.

-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Unknown - indicating this phone number type is unknown(default).
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Landline - indicating this phone number is a landline number.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Mobile - ndicating this phone number is a mobile (cellular) number.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Fax - indicating this phone number is a fax number.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Pager - indicating this phone number is a pager number.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Voice - indicating this phone number supports voice transmission.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Modem - indicating this phone number supports data transmission.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Video - indicating this phone number supports video transmission.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Car - indicating this phone number is a car phone.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.BulletinBoardSystem - indicating this phone number is a bulletin board system.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.MessagingCapable - indicating this phone number supports messaging services.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.Assistant - indicating this phone number is the number of an assistant.
-  :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`.DtmfMenu - indicating this phone number supports DTMF-controlled voice menu navigation.


.. _sdk_qtcontacts_contactdetail:

QtContacts ContactDetail
========================

The ContactDetail element represents a single, complete detail about a contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`contexts <sdk_qtcontacts_contactdetail_contexts>` : list<int>
-  :ref:`detailUri <sdk_qtcontacts_contactdetail_detailUri>` : string
-  :ref:`fields <sdk_qtcontacts_contactdetail_fields>` : list<int>
-  :ref:`linkedDetailUris <sdk_qtcontacts_contactdetail_linkedDetailUris>` : list<string>
-  :ref:`readOnly <sdk_qtcontacts_contactdetail_readOnly>` : bool
-  :ref:`removable <sdk_qtcontacts_contactdetail_removable>` : bool
-  :ref:`type <sdk_qtcontacts_contactdetail_type>` : enumeration

Detailed Description
--------------------

The ContactDetail element is part of the **QtContacts** module.

**See also** QContactDetail.

Property Documentation
----------------------

.. _sdk_qtcontacts_contactdetail_contexts:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contexts : list<int>                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds one or more contexts that this detail is associated with.

.. _sdk_qtcontacts_contactdetail_detailUri:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detailUri : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the unique URI of the detail if one exists.

.. _sdk_qtcontacts_contactdetail_fields:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| fields : list<int>                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of all fields which this detail supports.

This property is read only.

.. _sdk_qtcontacts_contactdetail_linkedDetailUris:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| linkedDetailUris : list<string>                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of detail URIs to which this detail is linked.

.. _sdk_qtcontacts_contactdetail_readOnly:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| readOnly : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether or not this detail is writable. This property is read only.

.. _sdk_qtcontacts_contactdetail_removable:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removable : bool                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether or not this detail is removale. This property is read only.

.. _sdk_qtcontacts_contactdetail_type:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| type : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of the detail.

-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Address
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Anniversary
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Avatar
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Birthday
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.\ :ref:`DisplayLabel <sdk_qtcontacts_displaylabel>`
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Email
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.\ :ref:`ExtendedDetail <sdk_qtcontacts_extendeddetail>`
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Family
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Favorite
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Gender
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Geolocation
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.\ :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Guid
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Hobby
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Name
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.NickName
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Note
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.\ :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Organization
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.\ :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Presence
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Ringtone
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.\ :ref:`SyncTarget <sdk_qtcontacts_synctarget>`
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Tag
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Timestamp
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Url
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Version
-  :ref:`ContactDetail <sdk_qtcontacts_contactdetail>`.Unknown

This property is read only.


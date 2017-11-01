The ContactDetail element represents a single, complete detail about a
contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`contexts </sdk/apps/qml/QtContacts/ContactDetail#contexts-prop>`__****
   : list<int>
-  ****`detailUri </sdk/apps/qml/QtContacts/ContactDetail#detailUri-prop>`__****
   : string
-  ****`fields </sdk/apps/qml/QtContacts/ContactDetail#fields-prop>`__****
   : list<int>
-  ****`linkedDetailUris </sdk/apps/qml/QtContacts/ContactDetail#linkedDetailUris-prop>`__****
   : list<string>
-  ****`readOnly </sdk/apps/qml/QtContacts/ContactDetail#readOnly-prop>`__****
   : bool
-  ****`removable </sdk/apps/qml/QtContacts/ContactDetail#removable-prop>`__****
   : bool
-  ****`type </sdk/apps/qml/QtContacts/ContactDetail#type-prop>`__**** :
   enumeration

Detailed Description
--------------------

The ContactDetail element is part of the **QtContacts** module.

**See also** QContactDetail.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contexts : list<int>                                            |
+--------------------------------------------------------------------------+

This property holds one or more contexts that this detail is associated
with.

| 

+--------------------------------------------------------------------------+
|        \ detailUri : string                                              |
+--------------------------------------------------------------------------+

This property holds the unique URI of the detail if one exists.

| 

+--------------------------------------------------------------------------+
|        \ fields : list<int>                                              |
+--------------------------------------------------------------------------+

This property holds the list of all fields which this detail supports.

This property is read only.

| 

+--------------------------------------------------------------------------+
|        \ linkedDetailUris : list<string>                                 |
+--------------------------------------------------------------------------+

This property holds a list of detail URIs to which this detail is
linked.

| 

+--------------------------------------------------------------------------+
|        \ readOnly : bool                                                 |
+--------------------------------------------------------------------------+

This property indicates whether or not this detail is writable. This
property is read only.

| 

+--------------------------------------------------------------------------+
|        \ removable : bool                                                |
+--------------------------------------------------------------------------+

This property indicates whether or not this detail is removale. This
property is read only.

| 

+--------------------------------------------------------------------------+
|        \ type : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the type of the detail.

-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Address
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Anniversary
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Avatar
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Birthday
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.\ `DisplayLabel </sdk/apps/qml/QtContacts/DisplayLabel/>`__
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Email
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.\ `ExtendedDetail </sdk/apps/qml/QtContacts/ExtendedDetail/>`__
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Family
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Favorite
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Gender
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Geolocation
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.\ `GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Guid
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Hobby
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Name
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.NickName
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Note
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.\ `OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Organization
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.\ `PhoneNumber </sdk/apps/qml/QtContacts/PhoneNumber/>`__
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Presence
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Ringtone
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.\ `SyncTarget </sdk/apps/qml/QtContacts/SyncTarget/>`__
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Tag
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Timestamp
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Url
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Version
-  `ContactDetail </sdk/apps/qml/QtContacts/ContactDetail/>`__.Unknown

This property is read only.

| 

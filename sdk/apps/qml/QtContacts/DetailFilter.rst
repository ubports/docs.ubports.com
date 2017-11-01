The DetailFilter element provides a filter based around a detail value
criterion.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`detail </sdk/apps/qml/QtContacts/DetailFilter#detail-prop>`__****
   : enumeration
-  ****`field </sdk/apps/qml/QtContacts/DetailFilter#field-prop>`__****
   : int
-  ****`matchFlags </sdk/apps/qml/QtContacts/DetailFilter#matchFlags-prop>`__****
   : enumeration
-  ****`value </sdk/apps/qml/QtContacts/DetailFilter#value-prop>`__****
   : variant

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailFilter.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ detail : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the detail type of which details will be matched to.

**See also**
`ContactDetail::type </sdk/apps/qml/QtContacts/ContactDetail#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ field : int                                                     |
+--------------------------------------------------------------------------+

This property holds the detail field type of which detail fields will be
matched to. Detail field types are enumeration values defined in each
detail elements.

**See also** `Address </sdk/apps/qml/QtContacts/Address/>`__,
`Anniversary </sdk/apps/qml/QtContacts/Anniversary/>`__,
`Avatar </sdk/apps/qml/QtContacts/Avatar/>`__,
`Birthday </sdk/apps/qml/QtContacts/Birthday/>`__,
`DisplayLabel </sdk/apps/qml/QtContacts/DisplayLabel/>`__,
`EmailAddress </sdk/apps/qml/QtContacts/EmailAddress/>`__,
`Family </sdk/apps/qml/QtContacts/Family/>`__,
`Favorite </sdk/apps/qml/QtContacts/Favorite/>`__,
`Gender </sdk/apps/qml/QtContacts/Gender/>`__,
`GeoLocation </sdk/apps/qml/QtContacts/GeoLocation/>`__,
`GlobalPresence </sdk/apps/qml/QtContacts/GlobalPresence/>`__,
`Guid </sdk/apps/qml/QtContacts/Guid/>`__,
`Name </sdk/apps/qml/QtContacts/Name/>`__,
`Nickname </sdk/apps/qml/QtContacts/Nickname/>`__,
`Note </sdk/apps/qml/QtContacts/Note/>`__,
`OnlineAccount </sdk/apps/qml/QtContacts/OnlineAccount/>`__,
`Organization </sdk/apps/qml/QtContacts/Organization/>`__,
`PhoneNumber </sdk/apps/qml/QtContacts/PhoneNumber/>`__,
`Presence </sdk/apps/qml/QtContacts/Presence/>`__,
`Ringtone </sdk/apps/qml/QtContacts/Ringtone/>`__,
`SyncTarget </sdk/apps/qml/QtContacts/SyncTarget/>`__,
`Tag </sdk/apps/qml/QtContacts/Tag/>`__,
`Timestamp </sdk/apps/qml/QtContacts/Timestamp/>`__,
`Url </sdk/apps/qml/QtContacts/Url/>`__, and
`Hobby </sdk/apps/qml/QtContacts/Hobby/>`__.

| 

+--------------------------------------------------------------------------+
|        \ matchFlags : enumeration                                        |
+--------------------------------------------------------------------------+

This property holds the semantics of the value matching criterion. The
valid match flags include:

-  MatchExactly - Performs QVariant-based matching (default).
-  MatchContains - The search term is contained in the item.
-  MatchStartsWith - The search term matches the start of the item.
-  MatchEndsWith - The search term matches the end of the item.
-  MatchFixedString - Performs string-based matching. String-based
   comparisons are case-insensitive unless the ``MatchCaseSensitive``
   flag is also specified.
-  MatchCaseSensitive - The search is case sensitive.

| 

+--------------------------------------------------------------------------+
|        \ value : variant                                                 |
+--------------------------------------------------------------------------+

This property holds the value criterion of the detail filter.

| 

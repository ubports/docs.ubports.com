.. _sdk_qtcontacts_detailfilter:

QtContacts DetailFilter
=======================

The DetailFilter element provides a filter based around a detail value criterion.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`detail <sdk_qtcontacts_detailfilter_detail>` : enumeration
-  :ref:`field <sdk_qtcontacts_detailfilter_field>` : int
-  :ref:`matchFlags <sdk_qtcontacts_detailfilter_matchFlags>` : enumeration
-  :ref:`value <sdk_qtcontacts_detailfilter_value>` : variant

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailFilter.

Property Documentation
----------------------

.. _sdk_qtcontacts_detailfilter_detail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detail : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail type of which details will be matched to.

**See also** :ref:`ContactDetail::type <sdk_qtcontacts_contactdetail_type>`.

.. _sdk_qtcontacts_detailfilter_field:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| field : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.

**See also** :ref:`Address <sdk_qtcontacts_address>`, :ref:`Anniversary <sdk_qtcontacts_anniversary>`, :ref:`Avatar <sdk_qtcontacts_avatar>`, :ref:`Birthday <sdk_qtcontacts_birthday>`, :ref:`DisplayLabel <sdk_qtcontacts_displaylabel>`, :ref:`EmailAddress <sdk_qtcontacts_emailaddress>`, :ref:`Family <sdk_qtcontacts_family>`, :ref:`Favorite <sdk_qtcontacts_favorite>`, :ref:`Gender <sdk_qtcontacts_gender>`, :ref:`GeoLocation <sdk_qtcontacts_geolocation>`, :ref:`GlobalPresence <sdk_qtcontacts_globalpresence>`, :ref:`Guid <sdk_qtcontacts_guid>`, :ref:`Name <sdk_qtcontacts_name>`, :ref:`Nickname <sdk_qtcontacts_nickname>`, :ref:`Note <sdk_qtcontacts_note>`, :ref:`OnlineAccount <sdk_qtcontacts_onlineaccount>`, :ref:`Organization <sdk_qtcontacts_organization>`, :ref:`PhoneNumber <sdk_qtcontacts_phonenumber>`, :ref:`Presence <sdk_qtcontacts_presence>`, :ref:`Ringtone <sdk_qtcontacts_ringtone>`, :ref:`SyncTarget <sdk_qtcontacts_synctarget>`, :ref:`Tag <sdk_qtcontacts_tag>`, :ref:`Timestamp <sdk_qtcontacts_timestamp>`, :ref:`Url <sdk_qtcontacts_url>`, and :ref:`Hobby <sdk_qtcontacts_hobby>`.

.. _sdk_qtcontacts_detailfilter_matchFlags:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| matchFlags : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the semantics of the value matching criterion. The valid match flags include:

-  MatchExactly - Performs QVariant-based matching (default).
-  MatchContains - The search term is contained in the item.
-  MatchStartsWith - The search term matches the start of the item.
-  MatchEndsWith - The search term matches the end of the item.
-  MatchFixedString - Performs string-based matching. String-based comparisons are case-insensitive unless the ``MatchCaseSensitive`` flag is also specified.
-  MatchCaseSensitive - The search is case sensitive.

.. _sdk_qtcontacts_detailfilter_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| value : variant                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value criterion of the detail filter.


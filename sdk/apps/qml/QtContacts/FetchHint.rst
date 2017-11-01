The FetchHint element provides hints to the manager about which contact
information needs to be retrieved in an asynchronous fetch request or a
synchronous function call.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`detailTypesHint </sdk/apps/qml/QtContacts/FetchHint#detailTypesHint-prop>`__****
   : list<int>
-  ****`imageHeight </sdk/apps/qml/QtContacts/FetchHint#imageHeight-prop>`__****
   : int
-  ****`imageWidth </sdk/apps/qml/QtContacts/FetchHint#imageWidth-prop>`__****
   : int
-  ****`optimizationHints </sdk/apps/qml/QtContacts/FetchHint#optimizationHints-prop>`__****
   : FetchHint::OptimizationHints
-  ****`relationshipTypesHint </sdk/apps/qml/QtContacts/FetchHint#relationshipTypesHint-prop>`__****
   : list<string>

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactFetchHint.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ detailTypesHint : list<int>                                     |
+--------------------------------------------------------------------------+

This property holds a list of contact detail types the manager should
(at a minimum) retrieve when fetching contacts.

| 

+--------------------------------------------------------------------------+
|        \ imageHeight : int                                               |
+--------------------------------------------------------------------------+

This property holds the preferred pixel height for any images returned
by the manager for a given request. This hint may be ignored by the
manager.

| 

+--------------------------------------------------------------------------+
|        \ imageWidth : int                                                |
+--------------------------------------------------------------------------+

This property holds the preferred pixel width for any images returned by
the manager for a given request. This hint may be ignored by the
manager.

| 

+--------------------------------------------------------------------------+
|        \ optimizationHints : FetchHint::OptimizationHints                |
+--------------------------------------------------------------------------+

This property holds the optimization hint flags specified by the client.
These hints may be ignored by the backend, in which case it will return
the full set of information accessible in a contact, including
relationships, action preferences, and binary blobs. The value of the
flags can be:

-  `FetchHint </sdk/apps/qml/QtContacts/FetchHint/>`__.AllRequired -
   (default).
-  `FetchHint </sdk/apps/qml/QtContacts/FetchHint/>`__.NoRelationships
-  `FetchHint </sdk/apps/qml/QtContacts/FetchHint/>`__.NoActionPreferences
-  `FetchHint </sdk/apps/qml/QtContacts/FetchHint/>`__.NoBinaryBlobs

| 

+--------------------------------------------------------------------------+
|        \ relationshipTypesHint : list<string>                            |
+--------------------------------------------------------------------------+

This property holds a list of relationship types that the manager should
(at a minimum) retrieve when fetching contacts.

| 

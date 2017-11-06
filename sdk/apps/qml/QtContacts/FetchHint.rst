.. _sdk_qtcontacts_fetchhint:

QtContacts FetchHint
====================

The FetchHint element provides hints to the manager about which contact information needs to be retrieved in an asynchronous fetch request or a synchronous function call.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`detailTypesHint <sdk_qtcontacts_fetchhint_detailTypesHint>` : list<int>
-  :ref:`imageHeight <sdk_qtcontacts_fetchhint_imageHeight>` : int
-  :ref:`imageWidth <sdk_qtcontacts_fetchhint_imageWidth>` : int
-  :ref:`optimizationHints <sdk_qtcontacts_fetchhint_optimizationHints>` : FetchHint::OptimizationHints
-  :ref:`relationshipTypesHint <sdk_qtcontacts_fetchhint_relationshipTypesHint>` : list<string>

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactFetchHint.

Property Documentation
----------------------

.. _sdk_qtcontacts_fetchhint_detailTypesHint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detailTypesHint : list<int>                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of contact detail types the manager should (at a minimum) retrieve when fetching contacts.

.. _sdk_qtcontacts_fetchhint_imageHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageHeight : int                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the preferred pixel height for any images returned by the manager for a given request. This hint may be ignored by the manager.

.. _sdk_qtcontacts_fetchhint_imageWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageWidth : int                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the preferred pixel width for any images returned by the manager for a given request. This hint may be ignored by the manager.

.. _sdk_qtcontacts_fetchhint_optimizationHints:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| optimizationHints : FetchHint::OptimizationHints                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the optimization hint flags specified by the client. These hints may be ignored by the backend, in which case it will return the full set of information accessible in a contact, including relationships, action preferences, and binary blobs. The value of the flags can be:

-  :ref:`FetchHint <sdk_qtcontacts_fetchhint>`.AllRequired - (default).
-  :ref:`FetchHint <sdk_qtcontacts_fetchhint>`.NoRelationships
-  :ref:`FetchHint <sdk_qtcontacts_fetchhint>`.NoActionPreferences
-  :ref:`FetchHint <sdk_qtcontacts_fetchhint>`.NoBinaryBlobs

.. _sdk_qtcontacts_fetchhint_relationshipTypesHint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relationshipTypesHint : list<string>                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of relationship types that the manager should (at a minimum) retrieve when fetching contacts.


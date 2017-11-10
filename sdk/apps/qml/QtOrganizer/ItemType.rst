.. _sdk_qtorganizer_itemtype:

QtOrganizer ItemType
====================

The ItemType element contains the type of an organizer item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`itemType <sdk_qtorganizer_itemtype_itemType>` : enum

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_itemtype_onDetailChanged>`\ ()

Detailed Description
--------------------

The following fields are supported:

-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.FieldType

**See also** QOrganizerItemType.

Property Documentation
----------------------

.. _sdk_qtorganizer_itemtype_itemType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemType : enum                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of the item. The value can be one of:

-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.Event
-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.\ :ref:`EventOccurrence <sdk_qtorganizer_eventoccurrence>`
-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.Todo
-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.\ :ref:`TodoOccurrence <sdk_qtorganizer_todooccurrence>`
-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.Note
-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.Journal
-  :ref:`ItemType <sdk_qtorganizer_itemtype>`.Customized

Signal Documentation
--------------------

.. _sdk_qtorganizer_itemtype_onDetailChanged:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| onDetailChanged()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`Detail::onDetailChanged <sdk_qtorganizer_detail_onDetailChanged>`.


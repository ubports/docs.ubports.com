The ItemType element contains the type of an organizer item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`itemType </sdk/apps/qml/QtOrganizer/ItemType#itemType-prop>`__****
   : enum

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/ItemType#onDetailChanged-signal>`__****\ ()

Detailed Description
--------------------

The following fields are supported:

-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.FieldType

**See also** QOrganizerItemType.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ itemType : enum                                                 |
+--------------------------------------------------------------------------+

This property holds the type of the item. The value can be one of:

-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.Event
-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.\ `EventOccurrence </sdk/apps/qml/QtOrganizer/EventOccurrence/>`__
-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.Todo
-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.\ `TodoOccurrence </sdk/apps/qml/QtOrganizer/TodoOccurrence/>`__
-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.Note
-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.Journal
-  `ItemType </sdk/apps/qml/QtOrganizer/ItemType/>`__.Customized

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

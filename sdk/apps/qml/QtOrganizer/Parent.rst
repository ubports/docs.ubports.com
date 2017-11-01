The Parent element contains information about the event or todo that
generated this item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`isDetached </sdk/apps/qml/QtOrganizer/Parent#isDetached-prop>`__****
   : string
-  ****`originalDate </sdk/apps/qml/QtOrganizer/Parent#originalDate-prop>`__****
   : date
-  ****`parentId </sdk/apps/qml/QtOrganizer/Parent#parentId-prop>`__****
   : string

Signals
-------

-  ****`onDetailChanged </sdk/apps/qml/QtOrganizer/Parent#onDetailChanged-signal>`__****\ ()

Methods
-------

-  bool
   ****`setValue </sdk/apps/qml/QtOrganizer/Parent#setValue-method>`__****\ (field,
   value)
-  variant
   ****`value </sdk/apps/qml/QtOrganizer/Parent#value-method>`__****\ (field)

Detailed Description
--------------------

The following fields are supported:

-  Parent.FieldParentId
-  Parent.FieldOriginalDate

**See also** QOrganizerItemParent.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ isDetached : string                                             |
+--------------------------------------------------------------------------+

This property holds if the event is a detached recurrence or not.

| 

+--------------------------------------------------------------------------+
|        \ originalDate : date                                             |
+--------------------------------------------------------------------------+

This property holds the original date of this instance origin item.

| 

+--------------------------------------------------------------------------+
|        \ parentId : string                                               |
+--------------------------------------------------------------------------+

This property holds the organizer item id of the parent recurrent event
or todo.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
`Detail::onDetailChanged </sdk/apps/qml/QtOrganizer/Detail#onDetailChanged-signal>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

**See also**
`Detail::setValue </sdk/apps/qml/QtOrganizer/Detail#setValue-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

**See also**
`Detail::value </sdk/apps/qml/QtOrganizer/Detail#value-method>`__.

| 

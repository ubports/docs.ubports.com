.. _sdk_qtorganizer_parent:
QtOrganizer Parent
==================

The Parent element contains information about the event or todo that
generated this item.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`isDetached <sdk_qtorganizer_parent_isDetached-prop>` :
   string
-  :ref:`originalDate <sdk_qtorganizer_parent_originalDate-prop>` :
   date
-  :ref:`parentId <sdk_qtorganizer_parent_parentId-prop>` : string

Signals
-------

-  :ref:`onDetailChanged <sdk_qtorganizer_parent_onDetailChanged-signal>`\ ()

Methods
-------

-  bool
   **:ref:`setValue <sdk_qtorganizer_parent#setValue-method>`**\ (field,
   value)
-  variant
   **:ref:`value <sdk_qtorganizer_parent#value-method>`**\ (field)

Detailed Description
--------------------

The following fields are supported:

-  Parent.FieldParentId
-  Parent.FieldOriginalDate

**See also** QOrganizerItemParent.

Property Documentation
----------------------

.. _sdk_qtorganizer_parent_isDetached-prop:

+--------------------------------------------------------------------------+
|        \ isDetached : string                                             |
+--------------------------------------------------------------------------+

This property holds if the event is a detached recurrence or not.

| 

.. _sdk_qtorganizer_parent_originalDate-prop:

+--------------------------------------------------------------------------+
|        \ originalDate : date                                             |
+--------------------------------------------------------------------------+

This property holds the original date of this instance origin item.

| 

.. _sdk_qtorganizer_parent_parentId-prop:

+--------------------------------------------------------------------------+
|        \ parentId : string                                               |
+--------------------------------------------------------------------------+

This property holds the organizer item id of the parent recurrent event
or todo.

| 

Signal Documentation
--------------------

.. _sdk_qtorganizer_parent_onDetailChanged()-prop:

+--------------------------------------------------------------------------+
|        \ onDetailChanged()                                               |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::onDetailChanged <sdk_qtorganizer_detail#onDetailChanged-signal>`.

| 

Method Documentation
--------------------

.. _sdk_qtorganizer_parent_bool setValue-method:

+--------------------------------------------------------------------------+
|        \ bool setValue(field, value)                                     |
+--------------------------------------------------------------------------+

**See also**
:ref:`Detail::setValue <sdk_qtorganizer_detail#setValue-method>`.

| 

.. _sdk_qtorganizer_parent_variant value-method:

+--------------------------------------------------------------------------+
|        \ variant value(field)                                            |
+--------------------------------------------------------------------------+

**See also** :ref:`Detail::value <sdk_qtorganizer_detail#value-method>`.

| 

.. _sdk_qtcontacts_relationship:

QtContacts Relationship
=======================

The Relationship element describes a one-to-one relationship between a locally-stored contact and another (possibly remote) contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`first <sdk_qtcontacts_relationship_first>` : int
-  :ref:`second <sdk_qtcontacts_relationship_second>` : int
-  :ref:`type <sdk_qtcontacts_relationship_type>` : string

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactRelationship and RelationshipModel.

Property Documentation
----------------------

.. _sdk_qtcontacts_relationship_first:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| first : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the locally-stored contact which has a relationship of the given type with the second contact.

.. _sdk_qtcontacts_relationship_second:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| second : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the contact with which the first contact has a relationship of the given type.

.. _sdk_qtcontacts_relationship_type:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| type : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of relationship which the source contact has with the destination contacts. The value for this property can be one of:

-  HasMember
-  Aggregates
-  IsSameAs
-  HasAssistant
-  HasManager
-  HasSpouse

or any other customized relationship type string.


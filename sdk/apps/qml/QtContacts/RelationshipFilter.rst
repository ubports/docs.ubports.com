.. _sdk_qtcontacts_relationshipfilter:

QtContacts RelationshipFilter
=============================

The RelationshipFilter element provides a filter based around relationship criteria.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`relatedContactId <sdk_qtcontacts_relationshipfilter_relatedContactId>` : int
-  :ref:`relatedContactRole <sdk_qtcontacts_relationshipfilter_relatedContactRole>` : enumeration
-  :ref:`relationshipType <sdk_qtcontacts_relationshipfilter_relationshipType>` : variant

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** Relationship, RelationshipModel, QContactRelationshipFilter, and QContactRelationship.

Property Documentation
----------------------

.. _sdk_qtcontacts_relationshipfilter_relatedContactId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relatedContactId : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the id of the contact with whom the tested contact must have a relationship in order for the tested contact to match this filter

.. _sdk_qtcontacts_relationshipfilter_relatedContactRole:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relatedContactRole : enumeration                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the role in the relationship with the tested contact that the related contact must play in order for the tested contact to match this filter. The role can be one of:

-  Relationship.First - The contact is the first contact in the relationship.
-  Relationship.Second - The contact is the second contact in the relationship.
-  Relationship.Either - The contact is either the first or second contact in the relationship (default).

.. _sdk_qtcontacts_relationshipfilter_relationshipType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relationshipType : variant                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the type of relationship that a contact must have in order to match the filter.

**See also** :ref:`Relationship::type <sdk_qtcontacts_relationship_type>`.


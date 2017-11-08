.. _sdk_qtcontacts_relationshipmodel:

QtContacts RelationshipModel
============================

The RelationshipModel provides a model of contact relationships from the contacts store.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`autoUpdate <sdk_qtcontacts_relationshipmodel_autoUpdate>` : bool
-  :ref:`error <sdk_qtcontacts_relationshipmodel_error>` : string
-  :ref:`manager <sdk_qtcontacts_relationshipmodel_manager>` : string
-  :ref:`participantId <sdk_qtcontacts_relationshipmodel_participantId>` : int
-  :ref:`relationshipType <sdk_qtcontacts_relationshipmodel_relationshipType>` : variant
-  :ref:`relationships <sdk_qtcontacts_relationshipmodel_relationships>` : list<Relationship>
-  :ref:`role <sdk_qtcontacts_relationshipmodel_role>` : enumeration

Methods
-------

-  :ref:`addRelationship <sdk_qtcontacts_relationshipmodel_addRelationship>`\ (relationship)
-  :ref:`removeRelationship <sdk_qtcontacts_relationshipmodel_removeRelationship>`\ (relationship)

Detailed Description
--------------------

This element is part of the **QtContacts** module.

The contents of the model can be specified with :ref:`participantId <sdk_qtcontacts_relationshipmodel_participantId>`, :ref:`role <sdk_qtcontacts_relationshipmodel_role>` and :ref:`relationshipType <sdk_qtcontacts_relationshipmodel_relationshipType>` properties. Whether the model is automatically updated when the store or filter changes, can be controlled with :ref:`RelationshipModel::autoUpdate <sdk_qtcontacts_relationshipmodel_autoUpdate>` property.

There are two ways of accessing the relationship data: through model by using views and delegates, or alternatively via `relationships </sdk/apps/qml/QtContacts/qtcontacts-overview/#relationships>`_  list property.

At the moment only data role provided by the model is ``relationship`` (:ref:`Relationship <sdk_qtcontacts_relationship>`). Through that one can access any data provided by the Relationship element.

**See also** Relationship and QContactRelationship.

Property Documentation
----------------------

.. _sdk_qtcontacts_relationshipmodel_autoUpdate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoUpdate : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether or not the relationship model should be updated automatically, default value is true.

.. _sdk_qtcontacts_relationshipmodel_error:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| error : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the latest error code returned by the contact manager.

This property is read only.

.. _sdk_qtcontacts_relationshipmodel_manager:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manager : string                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the manager uri of the contact backend engine.

.. _sdk_qtcontacts_relationshipmodel_participantId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| participantId : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the participant which the list of relationships returned by :ref:`RelationshipModel <sdk_qtcontacts_relationshipmodel>` should contain.

**See also** :ref:`RelationshipFilter::relatedContactId <sdk_qtcontacts_relationshipfilter_relatedContactId>` and :ref:`RelationshipModel::role <sdk_qtcontacts_relationshipmodel_role>`.

.. _sdk_qtcontacts_relationshipmodel_relationshipType:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relationshipType : variant                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the relationship type which the list of relationships returned by :ref:`RelationshipModel <sdk_qtcontacts_relationshipmodel>` should contain.

**See also** :ref:`Relationship::type <sdk_qtcontacts_relationship_type>`.

.. _sdk_qtcontacts_relationshipmodel_relationships:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| relationships : list<:ref:`Relationship <sdk_qtcontacts_relationship>`>                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a list of relationships.

**See also** :ref:`Relationship <sdk_qtcontacts_relationship>`.

.. _sdk_qtcontacts_relationshipmodel_role:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| role : enumeration                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the relationship role which the list of relationships returned by :ref:`RelationshipModel <sdk_qtcontacts_relationshipmodel>` should contain.

**See also** :ref:`RelationshipFilter::relatedContactRole <sdk_qtcontacts_relationshipfilter_relatedContactRole>`.

Method Documentation
--------------------

.. _sdk_qtcontacts_relationshipmodel_addRelationship:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addRelationship(relationship)                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Addes the given *relationship* to the backend store.

.. _sdk_qtcontacts_relationshipmodel_removeRelationship:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removeRelationship(relationship)                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes the given *relationship* from the backend store.


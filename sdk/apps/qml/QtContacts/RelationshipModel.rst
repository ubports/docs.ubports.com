.. _sdk_qtcontacts_relationshipmodel:
QtContacts RelationshipModel
============================

The RelationshipModel provides a model of contact relationships from the
contacts store.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`autoUpdate <sdk_qtcontacts_relationshipmodel_autoUpdate-prop>`
   : bool
-  :ref:`error <sdk_qtcontacts_relationshipmodel_error-prop>` :
   string
-  :ref:`manager <sdk_qtcontacts_relationshipmodel_manager-prop>` :
   string
-  :ref:`participantId <sdk_qtcontacts_relationshipmodel_participantId-prop>`
   : int
-  :ref:`relationshipType <sdk_qtcontacts_relationshipmodel_relationshipType-prop>`
   : variant
-  :ref:`relationships <sdk_qtcontacts_relationshipmodel_relationships-prop>`
   : list<Relationship>
-  :ref:`role <sdk_qtcontacts_relationshipmodel_role-prop>` :
   enumeration

Methods
-------

-  :ref:`addRelationship <sdk_qtcontacts_relationshipmodel_addRelationship-method>`\ (relationship)
-  :ref:`removeRelationship <sdk_qtcontacts_relationshipmodel_removeRelationship-method>`\ (relationship)

Detailed Description
--------------------

This element is part of the **QtContacts** module.

The contents of the model can be specified with
:ref:`participantId <sdk_qtcontacts_relationshipmodel#participantId-prop>`,
:ref:`role <sdk_qtcontacts_relationshipmodel#role-prop>` and
:ref:`relationshipType <sdk_qtcontacts_relationshipmodel#relationshipType-prop>`
properties. Whether the model is automatically updated when the store or
filter changes, can be controlled with
:ref:`RelationshipModel::autoUpdate <sdk_qtcontacts_relationshipmodel#autoUpdate-prop>`
property.

There are two ways of accessing the relationship data: through model by
using views and delegates, or alternatively via
`relationships </sdk/apps/qml/QtContacts/qtcontacts-overview/#relationships>`_ 
list property.

At the moment only data role provided by the model is ``relationship``
(:ref:`Relationship <sdk_qtcontacts_relationship>`). Through that one can
access any data provided by the Relationship element.

**See also** Relationship and QContactRelationship.

Property Documentation
----------------------

.. _sdk_qtcontacts_relationshipmodel_autoUpdate-prop:

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property indicates whether or not the relationship model should be
updated automatically, default value is true.

| 

.. _sdk_qtcontacts_relationshipmodel_error-prop:

+--------------------------------------------------------------------------+
|        \ error : string                                                  |
+--------------------------------------------------------------------------+

This property holds the latest error code returned by the contact
manager.

This property is read only.

| 

.. _sdk_qtcontacts_relationshipmodel_manager-prop:

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager uri of the contact backend engine.

| 

.. _sdk_qtcontacts_relationshipmodel_participantId-prop:

+--------------------------------------------------------------------------+
|        \ participantId : int                                             |
+--------------------------------------------------------------------------+

This property holds the participant which the list of relationships
returned by :ref:`RelationshipModel <sdk_qtcontacts_relationshipmodel>`
should contain.

**See also**
:ref:`RelationshipFilter::relatedContactId <sdk_qtcontacts_relationshipfilter#relatedContactId-prop>`
and
:ref:`RelationshipModel::role <sdk_qtcontacts_relationshipmodel#role-prop>`.

| 

.. _sdk_qtcontacts_relationshipmodel_relationshipType-prop:

+--------------------------------------------------------------------------+
|        \ relationshipType : variant                                      |
+--------------------------------------------------------------------------+

This property holds the relationship type which the list of
relationships returned by
:ref:`RelationshipModel <sdk_qtcontacts_relationshipmodel>` should contain.

**See also**
:ref:`Relationship::type <sdk_qtcontacts_relationship#type-prop>`.

| 

.. _sdk_qtcontacts_relationshipmodel_relationships-prop:

+--------------------------------------------------------------------------+
|        \ relationships :                                                 |
| list<:ref:`Relationship <sdk_qtcontacts_relationship>`>                     |
+--------------------------------------------------------------------------+

This property holds a list of relationships.

**See also** :ref:`Relationship <sdk_qtcontacts_relationship>`.

| 

.. _sdk_qtcontacts_relationshipmodel_role-prop:

+--------------------------------------------------------------------------+
|        \ role : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the relationship role which the list of
relationships returned by
:ref:`RelationshipModel <sdk_qtcontacts_relationshipmodel>` should contain.

**See also**
:ref:`RelationshipFilter::relatedContactRole <sdk_qtcontacts_relationshipfilter#relatedContactRole-prop>`.

| 

Method Documentation
--------------------

.. _sdk_qtcontacts_relationshipmodel_addRelationship-method:

+--------------------------------------------------------------------------+
|        \ addRelationship(relationship)                                   |
+--------------------------------------------------------------------------+

Addes the given *relationship* to the backend store.

| 

.. _sdk_qtcontacts_relationshipmodel_removeRelationship-method:

+--------------------------------------------------------------------------+
|        \ removeRelationship(relationship)                                |
+--------------------------------------------------------------------------+

Removes the given *relationship* from the backend store.

| 

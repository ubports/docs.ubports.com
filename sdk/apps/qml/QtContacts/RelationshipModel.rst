The RelationshipModel provides a model of contact relationships from the
contacts store.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`autoUpdate </sdk/apps/qml/QtContacts/RelationshipModel#autoUpdate-prop>`__****
   : bool
-  ****`error </sdk/apps/qml/QtContacts/RelationshipModel#error-prop>`__****
   : string
-  ****`manager </sdk/apps/qml/QtContacts/RelationshipModel#manager-prop>`__****
   : string
-  ****`participantId </sdk/apps/qml/QtContacts/RelationshipModel#participantId-prop>`__****
   : int
-  ****`relationshipType </sdk/apps/qml/QtContacts/RelationshipModel#relationshipType-prop>`__****
   : variant
-  ****`relationships </sdk/apps/qml/QtContacts/RelationshipModel#relationships-prop>`__****
   : list<Relationship>
-  ****`role </sdk/apps/qml/QtContacts/RelationshipModel#role-prop>`__****
   : enumeration

Methods
-------

-  ****`addRelationship </sdk/apps/qml/QtContacts/RelationshipModel#addRelationship-method>`__****\ (relationship)
-  ****`removeRelationship </sdk/apps/qml/QtContacts/RelationshipModel#removeRelationship-method>`__****\ (relationship)

Detailed Description
--------------------

This element is part of the **QtContacts** module.

The contents of the model can be specified with
`participantId </sdk/apps/qml/QtContacts/RelationshipModel#participantId-prop>`__,
`role </sdk/apps/qml/QtContacts/RelationshipModel#role-prop>`__ and
`relationshipType </sdk/apps/qml/QtContacts/RelationshipModel#relationshipType-prop>`__
properties. Whether the model is automatically updated when the store or
filter changes, can be controlled with
`RelationshipModel::autoUpdate </sdk/apps/qml/QtContacts/RelationshipModel#autoUpdate-prop>`__
property.

There are two ways of accessing the relationship data: through model by
using views and delegates, or alternatively via
`relationships </sdk/apps/qml/QtContacts/qtcontacts-overview#relationships>`__
list property.

At the moment only data role provided by the model is ``relationship``
(`Relationship </sdk/apps/qml/QtContacts/Relationship/>`__). Through
that one can access any data provided by the Relationship element.

**See also** Relationship and QContactRelationship.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property indicates whether or not the relationship model should be
updated automatically, default value is true.

| 

+--------------------------------------------------------------------------+
|        \ error : string                                                  |
+--------------------------------------------------------------------------+

This property holds the latest error code returned by the contact
manager.

This property is read only.

| 

+--------------------------------------------------------------------------+
|        \ manager : string                                                |
+--------------------------------------------------------------------------+

This property holds the manager uri of the contact backend engine.

| 

+--------------------------------------------------------------------------+
|        \ participantId : int                                             |
+--------------------------------------------------------------------------+

This property holds the participant which the list of relationships
returned by
`RelationshipModel </sdk/apps/qml/QtContacts/RelationshipModel/>`__
should contain.

**See also**
`RelationshipFilter::relatedContactId </sdk/apps/qml/QtContacts/RelationshipFilter#relatedContactId-prop>`__
and
`RelationshipModel::role </sdk/apps/qml/QtContacts/RelationshipModel#role-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relationshipType : variant                                      |
+--------------------------------------------------------------------------+

This property holds the relationship type which the list of
relationships returned by
`RelationshipModel </sdk/apps/qml/QtContacts/RelationshipModel/>`__
should contain.

**See also**
`Relationship::type </sdk/apps/qml/QtContacts/Relationship#type-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ relationships :                                                 |
| list<`Relationship </sdk/apps/qml/QtContacts/Relationship/>`__>          |
+--------------------------------------------------------------------------+

This property holds a list of relationships.

**See also** `Relationship </sdk/apps/qml/QtContacts/Relationship/>`__.

| 

+--------------------------------------------------------------------------+
|        \ role : enumeration                                              |
+--------------------------------------------------------------------------+

This property holds the relationship role which the list of
relationships returned by
`RelationshipModel </sdk/apps/qml/QtContacts/RelationshipModel/>`__
should contain.

**See also**
`RelationshipFilter::relatedContactRole </sdk/apps/qml/QtContacts/RelationshipFilter#relatedContactRole-prop>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addRelationship(relationship)                                   |
+--------------------------------------------------------------------------+

Addes the given *relationship* to the backend store.

| 

+--------------------------------------------------------------------------+
|        \ removeRelationship(relationship)                                |
+--------------------------------------------------------------------------+

Removes the given *relationship* from the backend store.

| 

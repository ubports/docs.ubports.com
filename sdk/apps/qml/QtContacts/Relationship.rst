The Relationship element describes a one-to-one relationship between a
locally-stored contact and another (possibly remote) contact.

+---------------------+-------------------------+
| Import Statement:   | import QtContacts 5.0   |
+---------------------+-------------------------+

Properties
----------

-  ****`first </sdk/apps/qml/QtContacts/Relationship#first-prop>`__****
   : int
-  ****`second </sdk/apps/qml/QtContacts/Relationship#second-prop>`__****
   : int
-  ****`type </sdk/apps/qml/QtContacts/Relationship#type-prop>`__**** :
   string

Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactRelationship and RelationshipModel.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ first : int                                                     |
+--------------------------------------------------------------------------+

This property holds the locally-stored contact which has a relationship
of the given type with the second contact.

| 

+--------------------------------------------------------------------------+
|        \ second : int                                                    |
+--------------------------------------------------------------------------+

This property holds the contact with which the first contact has a
relationship of the given type.

| 

+--------------------------------------------------------------------------+
|        \ type : string                                                   |
+--------------------------------------------------------------------------+

This property holds the type of relationship which the source contact
has with the destination contacts. The value for this property can be
one of:

-  HasMember
-  Aggregates
-  IsSameAs
-  HasAssistant
-  HasManager
-  HasSpouse

or any other customized relationship type string.

| 

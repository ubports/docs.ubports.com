QtContacts.RelationshipModel
============================

.. raw:: html

   <p>

The RelationshipModel provides a model of contact relationships from the
contacts store. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RelationshipModel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtContacts 5.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

autoUpdate : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

error : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manager : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

participantId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relationshipType : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relationships : list<Relationship>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

role : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

addRelationship(relationship)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

removeRelationship(relationship)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RelationshipModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This element is part of the QtContacts module.

.. raw:: html

   </p>

.. raw:: html

   <p>

The contents of the model can be specified with participantId, role and
relationshipType properties. Whether the model is automatically updated
when the store or filter changes, can be controlled with
RelationshipModel::autoUpdate property.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways of accessing the relationship data: through model by
using views and delegates, or alternatively via relationships list
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

At the moment only data role provided by the model is relationship
(Relationship). Through that one can access any data provided by the
Relationship element.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Relationship and QContactRelationship.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RelationshipModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$autoUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoUpdate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoUpdate : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property indicates whether or not the relationship model should be
updated automatically, default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoUpdate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the latest error code returned by the contact
manager.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is read only.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manager-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

manager : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the manager uri of the contact backend engine.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manager -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="participantId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

participantId : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the participant which the list of relationships
returned by RelationshipModel should contain.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RelationshipFilter::relatedContactId and
RelationshipModel::role.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@participantId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relationshipType-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relationshipType : variant

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the relationship type which the list of
relationships returned by RelationshipModel should contain.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Relationship::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relationshipType -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relationships-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relationships : list<Relationship>

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds a list of relationships.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Relationship.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relationships -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="role-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

role : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the relationship role which the list of
relationships returned by RelationshipModel should contain.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also RelationshipFilter::relatedContactRole.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@role -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addRelationship -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addRelationship-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

addRelationship(relationship)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Addes the given relationship to the backend store.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addRelationship -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeRelationship-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

removeRelationship(relationship)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes the given relationship from the backend store.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeRelationship -->



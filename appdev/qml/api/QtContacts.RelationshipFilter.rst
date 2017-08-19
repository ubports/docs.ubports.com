QtContacts.RelationshipFilter
=============================

.. raw:: html

   <p>

The RelationshipFilter element provides a filter based around
relationship criteria. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RelationshipFilter -->

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

relatedContactId : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relatedContactRole : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

relationshipType : variant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$RelationshipFilter-description -->

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

See also Relationship, RelationshipModel, QContactRelationshipFilter,
and QContactRelationship.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@RelationshipFilter -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$relatedContactId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relatedContactId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relatedContactId : int

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

This property holds the id of the contact with whom the tested contact
must have a relationship in order for the tested contact to match this
filter

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relatedContactId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="relatedContactRole-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

relatedContactRole : enumeration

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

This property holds the role in the relationship with the tested contact
that the related contact must play in order for the tested contact to
match this filter. The role can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Relationship.First - The contact is the first contact in the
relationship.

.. raw:: html

   </li>

.. raw:: html

   <li>

Relationship.Second - The contact is the second contact in the
relationship.

.. raw:: html

   </li>

.. raw:: html

   <li>

Relationship.Either - The contact is either the first or second contact
in the relationship (default).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@relatedContactRole -->

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

This property holds the type of relationship that a contact must have in
order to match the filter.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Relationship::type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@relationshipType -->



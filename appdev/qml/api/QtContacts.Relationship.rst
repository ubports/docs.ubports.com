QtContacts.Relationship
=======================

.. raw:: html

   <p>

The Relationship element describes a one-to-one relationship between a
locally-stored contact and another (possibly remote) contact. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Relationship -->

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

first : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

second : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

type : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Relationship-description -->

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

See also QContactRelationship and RelationshipModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Relationship -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$first -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="first-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

first : int

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

This property holds the locally-stored contact which has a relationship
of the given type with the second contact.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@first -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="second-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

second : int

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

This property holds the contact with which the first contact has a
relationship of the given type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@second -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="type-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

type : string

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

This property holds the type of relationship which the source contact
has with the destination contacts. The value for this property can be
one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

HasMember

.. raw:: html

   </li>

.. raw:: html

   <li>

Aggregates

.. raw:: html

   </li>

.. raw:: html

   <li>

IsSameAs

.. raw:: html

   </li>

.. raw:: html

   <li>

HasAssistant

.. raw:: html

   </li>

.. raw:: html

   <li>

HasManager

.. raw:: html

   </li>

.. raw:: html

   <li>

HasSpouse

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

or any other customized relationship type string.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@type -->



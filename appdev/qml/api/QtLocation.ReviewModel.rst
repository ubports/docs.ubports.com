QtLocation.ReviewModel
======================

.. raw:: html

   <p>

Provides access to reviews of a Place. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ReviewModel -->

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

import QtLocation 5.3

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt Location 5.0

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

batchSize : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

place : Place

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

totalCount : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ReviewModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The totalCount property.

.. raw:: html

   </p>

.. raw:: html

   <p>

To use the ReviewModel model and a delegate.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">place</span>.<span class="name">reviewModel</span>
   <span class="name">delegate</span>: <span class="name">ReviewDelegate</span> { }
   }</pre>

.. raw:: html

   <p>

The model returns data for the following roles:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Role

.. raw:: html

   </th>

.. raw:: html

   <th>

Type

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

dateTime

.. raw:: html

   </td>

.. raw:: html

   <td>

datetime

.. raw:: html

   </td>

.. raw:: html

   <td>

The date and time that the review was posted.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

text

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The review's textual description of the place. It can be either rich
(HTML based) text or plain text depending on the provider.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

language

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The language that the review is written in.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

rating

.. raw:: html

   </td>

.. raw:: html

   <td>

real

.. raw:: html

   </td>

.. raw:: html

   <td>

The rating that the reviewer gave to the place.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

reviewId

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The identifier of the review.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

title

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

The title of the review.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

supplier

.. raw:: html

   </td>

.. raw:: html

   <td>

Supplier

.. raw:: html

   </td>

.. raw:: html

   <td>

The supplier of the review.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

user

.. raw:: html

   </td>

.. raw:: html

   <td>

User

.. raw:: html

   </td>

.. raw:: html

   <td>

The user who contributed the review.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

attribution

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   <td>

Attribution text which must be displayed when displaying the review.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@ReviewModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$batchSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="batchSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

batchSize : int

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

This property holds the batch size to use when fetching more reviews.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@batchSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="place-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

place : Place

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

This property holds the Place that the reviews are for.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@place -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="totalCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

totalCount : int

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

This property holds the total number of reviews for the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@totalCount -->



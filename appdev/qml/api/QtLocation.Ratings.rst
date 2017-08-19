QtLocation.Ratings
==================

.. raw:: html

   <p>

The Ratings type holds place rating information. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Ratings -->

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

average : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

maximum : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ratings : QPlaceRatings

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Ratings-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Rating information is used to describe how good a place is conceived to
be. Typically this information is visualized as a number of stars. The
maximum property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;This place is rated &quot;</span> <span class="operator">+</span> <span class="name">place</span>.<span class="name">ratings</span>.<span class="name">average</span> <span class="operator">+</span> <span class="string">&quot; out of &quot;</span> <span class="operator">+</span> <span class="name">place</span>.<span class="name">ratings</span>.<span class="name">maximum</span> <span class="operator">+</span> <span class="string">&quot; stars.&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@Ratings -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$average -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="average-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

average : real

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

This property holds the average of the individual ratings.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also maximum.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@average -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

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

This property holds the total number of individual user ratings used in
determining the overall ratings average.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="maximum-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

maximum : real

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

This property holds the maximum rating value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@maximum -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ratings-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ratings : QPlaceRatings

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

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ratings -->



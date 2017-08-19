QtLocation.location-maps-cpp
============================

.. raw:: html

   <p>

Maps and Navigation provides C++ utilities for geocoding (finding a
geographic coordinate from a street address) and navigation (including
driving and walking directions).

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently it is not possible to interact with maps via C++. Mapping
applications must use the Maps and Navigation (QML) API.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="geocoding">

Geocoding

.. raw:: html

   </h2>

.. raw:: html

   <p>

In C++, an address-to-coordinate query is performed using the geocode()
method of the QGeoCodingManager class. For coordinate-to-address
queries, the reverseGeocode() method is available on the same class.
Instances of QGeoCodingManager are available via QGeoServiceProvider.

.. raw:: html

   </p>

.. raw:: html

   <p>

Key Classes

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoServiceProvider

.. raw:: html

   </td>

.. raw:: html

   <td>

Provides a QGeoCodingManager instance ready for use.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoCodingManager

.. raw:: html

   </td>

.. raw:: html

   <td>

Accepts queries and produces QGeoCodeReply objects.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoCodeReply

.. raw:: html

   </td>

.. raw:: html

   <td>

Contains the results of a geocoding query.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="navigation">

Navigation

.. raw:: html

   </h2>

.. raw:: html

   <p>

In C++, a route query is performed using the calculate() method of the
QGeoRoutingManager class. The returned route reply can contain multiple
routes to the same destination.

.. raw:: html

   </p>

.. raw:: html

   <p>

Key Classes

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoServiceProvider

.. raw:: html

   </td>

.. raw:: html

   <td>

Provides a QGeoCodingManager instance ready for use.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoRoutingManager

.. raw:: html

   </td>

.. raw:: html

   <td>

Accepts queries and produces QGeoRouteReply objects.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoRouteReply

.. raw:: html

   </td>

.. raw:: html

   <td>

Contains the results of a routing query.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QGeoRoute

.. raw:: html

   </td>

.. raw:: html

   <td>

Contains information about a route.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@location-maps-cpp.html -->

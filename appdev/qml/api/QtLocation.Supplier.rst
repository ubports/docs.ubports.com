QtLocation.Supplier
===================

.. raw:: html

   <p>

Holds data regarding the supplier of a place, a place's image, review,
or editorial. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Supplier -->

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

icon : PlaceIcon

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supplier : QPlaceSupplier

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supplierId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url : url

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Supplier-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Each instance represents a set of data about a supplier, which can
include supplier's name, url and icon. The supplier is typically a
business or organization.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The Places API only supports suppliers as 'retrieve-only' objects.
Submitting suppliers to a provider is not a supported use case.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example">

Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows how to create and display a supplier in QML:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="#">Supplier</a></span> {
   <span class="name">id</span>: <span class="name">placeSupplier</span>
   <span class="name">name</span>: <span class="string">&quot;Example&quot;</span>
   <span class="name">url</span>: <span class="string">&quot;http://www.example.com/&quot;</span>
   }
   <span class="type">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;This place is was provided by &quot;</span> <span class="operator">+</span> <span class="name">placeSupplier</span>.<span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;\n&quot;</span> <span class="operator">+</span> <span class="name">placeSupplier</span>.<span class="name">url</span>
   }</pre>

.. raw:: html

   <p>

See also ImageModel, ReviewModel, and EditorialModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Supplier -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$icon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="icon-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

icon : PlaceIcon

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

This property holds the icon of the supplier.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@icon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

This property holds the name of the supplier which can be displayed to
the user.

.. raw:: html

   </p>

.. raw:: html

   <p>

The name can potentially be localized. The language is dependent on the
entity that sets it, typically this is the Plugin. The Plugin::locales
property defines what language is used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supplier-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supplier : QPlaceSupplier

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

   <!-- @@@supplier -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supplierId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supplierId : string

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

This property holds the identifier of the supplier. The identifier is
unique to the Plugin backend which provided the supplier and is
generally not suitable for displaying to the user.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supplierId -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="url-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

url : url

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

This property holds the URL of the supplier's website.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@url -->



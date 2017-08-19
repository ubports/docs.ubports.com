QtLocation.Category
===================

.. raw:: html

   <p>

The Category type represents a category that a Place can be associated
with. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Category -->

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

category : QPlaceCategory

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

categoryId : string

.. raw:: html

   </li>

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

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

visibility : enumeration

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

string errorString()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void remove()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void save()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Category-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Categories are used to search for places based on the categories they
are associated with. The list of available categories can be obtained
from the CategoryModel. The PlaceSearchModel has a categories property
that is used to limit the search results to places with the specified
categories.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the save() method.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type"><a href="#">Category</a></span> {
   <span class="name">id</span>: <span class="name">category</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="name">name</span>: <span class="string">&quot;New Category&quot;</span>
   <span class="name">visibility</span>: <span class="name">Category</span>.<span class="name">PrivateVisibility</span>
   }
   ...
   <span class="name">category</span>.<span class="name">save</span>();</pre>

.. raw:: html

   <p>

To remove a category ensure that the remove() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also CategoryModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Category -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$category -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="category-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

category : QPlaceCategory

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

   <!-- @@@category -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="categoryId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

categoryId : string

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

This property holds the identifier of the category. The categoryId is a
string which uniquely identifies this category within the categories
plugin.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@categoryId -->

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

This property holds the image source associated with the category. To
display the icon you can use the Image type.

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

This property holds string based name of the category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="plugin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

plugin : Plugin

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

This property holds the location based service to which the category
belongs.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property holds the status of the category. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.Ready

.. raw:: html

   </td>

.. raw:: html

   <td>

No error occurred during the last operation, further operations may be
performed on the category.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.Saving

.. raw:: html

   </td>

.. raw:: html

   <td>

The category is currently being saved, no other operations may be
performed until the current operation completes.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.Removing

.. raw:: html

   </td>

.. raw:: html

   <td>

The category is currently being removed, no other operations can be
performed until the current operation completes.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.Error

.. raw:: html

   </td>

.. raw:: html

   <td>

An error occurred during the last operation, further operations can
still be performed on the category.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="visibility-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

visibility : enumeration

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

This property holds the visibility of the category. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.UnspecifiedVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The visibility of the category is unspecified. If saving a category, the
plugin will automatically set a default visibility to the category saved
in the backend. This default is dependent on the plugin implementation.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.DeviceVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The category is limited to the current device. The category will not be
transferred off of the device.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.PrivateVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The category is private to the current user. The category may be
transferred to an online service but is only ever visible to the current
user.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Category.PublicVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The category is public.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note that visibility does not affect how Places associated with the
category are displayed in the user-interface of an application on the
device. Instead, it defines the sharing semantics of the category.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@visibility -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string errorString()

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

Returns a string description of the error of the last operation. If the
last operation completed successfully then the string is empty.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void remove()

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

This method permanently removes the category from the backend service.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="save-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void save()

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

This method saves the category to the backend service.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->



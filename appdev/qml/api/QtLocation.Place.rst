QtLocation.Place
================

.. raw:: html

   <p>

The Place type represents a location that is a position of interest.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Place -->

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

attribution : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

categories : list<Category>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contactDetails : ContactDetails

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

detailsFetched : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

editorialModel : EditorialModel

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

extendedAttributes : ExtendedAttributes

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

favorite : Place

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

icon : Icon

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

imageModel : ImageModel

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

location : QtPositioning::Location

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

place : QPlace

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

placeId : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryEmail : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryFax : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryPhone : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

primaryWebsite : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ratings : Ratings

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

reviewModel : ReviewModel

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

supplier : Supplier

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

copyFrom(Place original)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string errorString()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void getDetails()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

initializeFavorite(Plugin destinationPlugin)

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

   <!-- $$$Place-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Place type represents a physical location with additional metadata
describing that location. Contrasted with Location, Address, and
coordinate type which are used to describe where a location is. The
basic properties of a Place are its location.

.. raw:: html

   </p>

.. raw:: html

   <p>

Place objects are typically obtained from a search model and will
generally only have their basic properties set. The status property,
which will be set to Place.Fetching when the details are being fetched.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Place type has many properties holding information about the
location. Details on how to contact the place are available from the
website are also available.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each place is assigned zero or more ratings object, which gives an
indication of the quality of the place.

.. raw:: html

   </p>

.. raw:: html

   <p>

Place metadata is provided by a supplier who may require that an
attribution message be displayed to the user when the place details are
viewed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Places have an associated icon which can be used to represent a place on
a map or to decorate a delegate in a view.

.. raw:: html

   </p>

.. raw:: html

   <p>

Places may have additional rich content associated with them. The
currently supported rich content include editorial descriptions, reviews
and images. These are exposed as a set of models for retrieving the
content. Editorial descriptions of the place are available from the
imageModel property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Places may have additional attributes which are not covered in the
formal API. The extendedAttributes property provides access to these.
The type of extended attributes available is specific to each Plugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Place is almost always tied to a editorialModel are only valid then
the plugin property is set.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Saving a Place

.. raw:: html

   </h3>

.. raw:: html

   <p>

If the Plugin supports it, the Place type can be used to save a place.
First create a new Place and set its properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="#">Place</a></span> {
   <span class="name">id</span>: <span class="name">myPlace</span>
   <span class="name">plugin</span>: <span class="name">myPlugin</span>
   <span class="name">name</span>: <span class="string">&quot;Brisbane Technology Park&quot;</span>
   <span class="name">location</span>: <span class="name">Location</span> {
   <span class="name">address</span>: <span class="name">Address</span> {
   <span class="name">street</span>: <span class="string">&quot;53 Brandl Street&quot;</span>
   <span class="name">city</span>: <span class="string">&quot;Eight Mile Plains&quot;</span>
   <span class="name">postalCode</span>: <span class="string">&quot;4113&quot;</span>
   <span class="name">country</span>: <span class="string">&quot;Australia&quot;</span>
   }
   <span class="type">coordinate</span> {
   <span class="name">latitude</span>: -<span class="number">27.579646</span>
   <span class="name">longitude</span>: <span class="number">153.100308</span>
   }
   }
   <span class="name">visibility</span>: <span class="name">Place</span>.<span class="name">PrivateVisibility</span>
   }</pre>

.. raw:: html

   <p>

Then invoke the save() method:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">myPlace</span>.<span class="name">save</span>();</pre>

.. raw:: html

   <p>

The status property will change to Place.Saving and then to Place.Ready
if the save was successful or to Place.Error if an error occurs.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the placeId property will be updated with the identifier of the newly
saved place.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Caveats

.. raw:: html

   </h4>

.. raw:: html

   <p>

The Places API is currently designed for only saving core details.
Saving rich content like images and reviews or details like supplier and
rating is not a supported use case. Typically a manager will generally
ignore these fields upon save and may produce a warning message if they
are populated.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Places API only supports saving of the following core details:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

name

.. raw:: html

   </li>

.. raw:: html

   <li>

place id

.. raw:: html

   </li>

.. raw:: html

   <li>

location

.. raw:: html

   </li>

.. raw:: html

   <li>

contact details

.. raw:: html

   </li>

.. raw:: html

   <li>

icon

.. raw:: html

   </li>

.. raw:: html

   <li>

categories (tag-like names to describe a place)

.. raw:: html

   </li>

.. raw:: html

   <li>

visibility scope

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

It is possible that providers may only support a subset of these. See
the plugin documentation for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Saving of properties such as the rating, extended attributes, images,
reviews, editorials and supplier is explicitly not supported by the
Places API.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Saving Between Plugins

.. raw:: html

   </h4>

.. raw:: html

   <p>

When saving places between plugins, there are a few things to be aware
of. Some fields of a place such as the id, categories and icons are
plugin specific entities. For example the categories in one manager may
not be recognised in another. Therefore trying to save a place directly
from one plugin to another is not possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is generally recommended that saving across plugins be handled as
saving copyFrom() only copies data that is supported by the destination
plugin, plugin specific data such as the place identifier is not copied
over. Once the copy is done, the place is in a suitable state to be
saved.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet provides an example of saving a place to a
different plugin using the copyFrom method:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">place</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; Place { }'</span>, <span class="name">parent</span>);
   <span class="name">place</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">destinationPlugin</span>;
   <span class="name">place</span>.<span class="name">copyFrom</span>(<span class="name">originalPlace</span>);
   <span class="name">place</span>.<span class="name">save</span>();</pre>

.. raw:: html

   <h3>

Removing a Place

.. raw:: html

   </h3>

.. raw:: html

   <p>

To remove a place, ensure that a Place object with a valid status
property will change to Place.Removing and then to Place.Ready if the
save was successful or to Place.Error if an error occurs.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Favorites

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Places API supports the concept of favorites. Favorites are
generally implemented by using two plugins, the first plugin is
typically a read-only source of places (origin plugin) and a second
read/write plugin (destination plugin) is used to store places from the
origin as favorites.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each Place has a favorite property which is intended to contain the
corresponding place from the destination plugin (the place itself is
sourced from the origin plugin). Because both the original place and
favorite instances are available, the developer can choose which
properties to show to the user. For example the favorite may have a
modified name which should be displayed rather than the original name.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> { <span class="name">text</span>: <span class="name">place</span>.<span class="name">favorite</span> ? <span class="name">place</span>.<span class="name">favorite</span>.<span class="name">name</span> : <span class="name">place</span>.<span class="name">name</span> }</pre>

.. raw:: html

   <p>

The following demonstrates how to save a new favorite instance. A call
is made to create/initialize the favorite instance and then the instance
is saved.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">place</span>.<span class="name">initializeFavorite</span>(<span class="name">destinationPlugin</span>);
   <span class="comment">//if necessary customizations to the favorite can be made here.</span>
   <span class="comment">//...</span>
   <span class="name">place</span>.<span class="name">favorite</span>.<span class="name">save</span>();</pre>

.. raw:: html

   <p>

The following demonstrates favorite removal:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">place</span>.<span class="name">favorite</span>.<span class="name">remove</span>();
   ...
   <span class="comment">//check successful removal of the favorite by monitoring its status.</span>
   <span class="comment">//once that is done we can assign null to the favorite</span>
   <span class="name">place</span>.<span class="name">favorite</span> <span class="operator">=</span> <span class="number">null</span>;</pre>

.. raw:: html

   <p>

The PlaceSearchModel has a favoritesPlugin property. If the property is
set, any places found during a search are checked against the
favoritesPlugin to see if there is a corresponding favorite place. If
so, the favorite property of the Place is set, otherwise the favorite
property is remains null.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also PlaceSearchModel.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Place -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$attribution -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attribution-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attribution : string

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

This property holds a rich text attribution string for the place. Some
providers may require that the attribution be shown to the user whenever
a place is displayed. The contents of this property should be shown to
the user if it is not empty.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@attribution -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="categories-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

categories : list<Category>

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

This property holds the list of categories this place is a member of.
The categories that can be assigned to a place are specific to each
plugin.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@categories -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contactDetails-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contactDetails : ContactDetails

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

This property holds the contact information for this place, for example
a phone number or a website URL. This property is a map of ContactDetail
objects.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contactDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="detailsFetched-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

detailsFetched : bool

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

This property indicates whether the details of the place have been
fetched. If this property is false, the place details have not yet been
fetched. Fetching can be done by invoking the getDetails() method.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also getDetails().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@detailsFetched -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="editorialModel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

editorialModel : EditorialModel

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

This property holds a model which can be used to retrieve editorial
descriptions of the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@editorialModel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="extendedAttributes-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

extendedAttributes : ExtendedAttributes

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

This property holds the extended attributes of a place. Extended
attributes are additional information about a place not covered by the
place's properties.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@extendedAttributes -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="favorite-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

favorite : Place

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

This property holds the favorite instance of a place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@favorite -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="icon-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

icon : Icon

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

This property holds a graphical icon which can be used to represent the
place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@icon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="imageModel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

imageModel : ImageModel

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

This property holds a model which can be used to retrieve images of the
place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@imageModel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="location-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

location : QtPositioning::Location

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

This property holds the location of the place which can be used to
retrieve the coordinate, address and the bounding box.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@location -->

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

This property holds the name of the place which can be used to represent
the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="place-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

place : QPlace

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

   <!-- @@@place -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="placeId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

placeId : string

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

This property holds the unique identifier of the place. The place
identifier is only meaningful to the Plugin that generated it and is not
transferable between Plugins. The place id is not guaranteed to be
universally unique, but unique within the Plugin that generated it.

.. raw:: html

   </p>

.. raw:: html

   <p>

If only the place identifier is known, all other place data can fetched
from the Plugin.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">place</span>.<span class="name">plugin</span> <span class="operator">=</span> <span class="name">myPlugin</span>;
   <span class="name">place</span>.<span class="name">placeId</span> <span class="operator">=</span> <span class="string">&quot;known-place-id&quot;</span>;
   <span class="name">place</span>.<span class="name">getDetails</span>();</pre>

.. raw:: html

   <!-- @@@placeId -->

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

This property holds the Plugin that provided this place which can be
used to retrieve more information about the service.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryEmail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

primaryEmail : string

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

This property holds the primary email address of the place. If no
"email" contact detail is defined for this place this property will be
an empty string. It is equivalent to

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    var <span class="name">primaryEmail</span>;
   <span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;email&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">primaryEmail</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;email&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>

.. raw:: html

   <!-- @@@primaryEmail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryFax-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

primaryFax : string

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

This property holds the primary fax number of the place. If no "fax"
contact detail is defined for this place this property will be an empty
string. It is equivalent to

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    var <span class="name">primaryFax</span>;
   <span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;fax&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">primaryFax</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;fax&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>

.. raw:: html

   <!-- @@@primaryFax -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryPhone-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

primaryPhone : string

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

This property holds the primary phone number of the place. If no "phone"
contact detail is defined for this place, this property will be an empty
string. It is equivalent to:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    var <span class="name">primaryPhone</span>;
   <span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;phone&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">primaryPhone</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;phone&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>

.. raw:: html

   <!-- @@@primaryPhone -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="primaryWebsite-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

primaryWebsite : string

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

This property holds the primary website url of the place. If no
"website" contact detail is defined for this place this property will be
an empty string. It is equivalent to

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    var <span class="name">primaryWebsite</span>;
   <span class="keyword">if</span> (<span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;website&quot;</span>].<span class="name">length</span> <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="name">primaryWebsite</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">contactDetails</span>[<span class="string">&quot;website&quot;</span>][<span class="number">0</span>].<span class="name">value</span>;</pre>

.. raw:: html

   <!-- @@@primaryWebsite -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ratings-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ratings : Ratings

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

This property holds ratings of the place. The ratings provide an
indication of the quality of a place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ratings -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reviewModel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

reviewModel : ReviewModel

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

This property holds a model which can be used to retrieve reviews about
the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reviewModel -->

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

This property holds the status of the place. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.Ready

.. raw:: html

   </td>

.. raw:: html

   <td>

No error occurred during the last operation, further operations may be
performed on the place.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.Saving

.. raw:: html

   </td>

.. raw:: html

   <td>

The place is currently being saved, no other operation may be performed
until complete.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.Fetching

.. raw:: html

   </td>

.. raw:: html

   <td>

The place details are currently being fetched, no other operations may
be performed until complete.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.Removing

.. raw:: html

   </td>

.. raw:: html

   <td>

The place is currently being removed, no other operations can be
performed until complete.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.Error

.. raw:: html

   </td>

.. raw:: html

   <td>

An error occurred during the last operation, further operations can
still be performed on the place.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The status of a place can be checked by connecting the status property
to a handler function, and then have the handler function process the
change in status.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">place</span>.<span class="name">statusChanged</span>.<span class="name">connect</span>(<span class="name">statusChangedHandler</span>);
   ...
   <span class="keyword">function</span> <span class="name">statusChangedHandler</span>() {
   <span class="keyword">if</span> (<span class="name">statusChangedHandler</span>.<span class="name">prevStatus</span> <span class="operator">===</span> <span class="name">Place</span>.<span class="name">Saving</span>) {
   <span class="keyword">switch</span> (<span class="name">place</span>.<span class="name">status</span>) {
   <span class="keyword">case</span> <span class="name">Place</span>.<span class="name">Ready</span>:
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Save successful'</span>);
   <span class="keyword">break</span>;
   <span class="keyword">case</span> <span class="name">Place</span>.<span class="name">Error</span>:
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Save failed'</span>);
   <span class="keyword">break</span>;
   <span class="keyword">default</span>:
   <span class="keyword">break</span>;
   }
   }
   <span class="name">statusChangedHandler</span>.<span class="name">prevStatus</span> <span class="operator">=</span> <span class="name">place</span>.<span class="name">status</span>;
   }</pre>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="supplier-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

supplier : Supplier

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

This property holds the supplier of the place data. The supplier is
typically a business or organization that collected the data about the
place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@supplier -->

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

This property holds the visibility of the place. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.UnspecifiedVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The visibility of the place is unspecified, the default visibility of
the Plugin will be used.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.DeviceVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The place is limited to the current device. The place will not be
transferred off of the device.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.PrivateVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The place is private to the current user. The place may be transferred
to an online service but is only ever visible to the current user.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Place.PublicVisibility

.. raw:: html

   </td>

.. raw:: html

   <td>

The place is public.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note that visibility does not affect how the place is displayed in the
user-interface of an application on the device. Instead, it defines the
sharing semantics of the place.

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

   <!-- $$$copyFrom -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="copyFrom-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

copyFrom(Place original)

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

Copies data from an original place into this place. Only data that is
supported by this place's plugin is copied over and plugin specific data
such as place identifier is not copied over.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@copyFrom -->

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

   <tr valign="top" id="getDetails-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void getDetails()

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

This method starts fetching place details.

.. raw:: html

   </p>

.. raw:: html

   <p>

The errorString() method can be used to get the details of the error.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getDetails -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="initializeFavorite-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

initializeFavorite(Plugin destinationPlugin)

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

Creates a favorite instance for the place which is to be saved into the
destination plugin. This method does nothing if the favorite property is
not null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@initializeFavorite -->

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

This method performs a remove operation on the place.

.. raw:: html

   </p>

.. raw:: html

   <p>

The errorString() method can be used to get the details of the error.

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

This method performs a save operation on the place.

.. raw:: html

   </p>

.. raw:: html

   <p>

The errorString() method can be used to get the details of the error.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the placeId property was previously empty, it will be assigned a
valid value automatically during a successful save operation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that a Place::getDetails on any place that it detects an update on.
A consequence of this is that whenever a Place from a PlaceSearchModel
is successfully saved, it will be followed by a fetch of place details,
leading to a sequence of state changes of Saving, Ready, Fetching,
Ready.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@save -->



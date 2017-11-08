.. _sdk_qtlocation_place:

QtLocation Place
================

The Place type represents a location that is a position of interest.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`attribution <sdk_qtlocation_place_attribution>` : string
-  :ref:`categories <sdk_qtlocation_place_categories>` : list<Category>
-  :ref:`contactDetails <sdk_qtlocation_place_contactDetails>` : ContactDetails
-  :ref:`detailsFetched <sdk_qtlocation_place_detailsFetched>` : bool
-  :ref:`editorialModel <sdk_qtlocation_place_editorialModel>` : EditorialModel
-  :ref:`extendedAttributes <sdk_qtlocation_place_extendedAttributes>` : ExtendedAttributes
-  :ref:`favorite <sdk_qtlocation_place_favorite>` : Place
-  :ref:`icon <sdk_qtlocation_place_icon>` : Icon
-  :ref:`imageModel <sdk_qtlocation_place_imageModel>` : ImageModel
-  :ref:`location <sdk_qtlocation_place_location>` : QtPositioning::Location
-  :ref:`name <sdk_qtlocation_place_name>` : string
-  :ref:`place <sdk_qtlocation_place_place>` : QPlace
-  :ref:`placeId <sdk_qtlocation_place_placeId>` : string
-  :ref:`plugin <sdk_qtlocation_place_plugin>` : Plugin
-  :ref:`primaryEmail <sdk_qtlocation_place_primaryEmail>` : string
-  :ref:`primaryFax <sdk_qtlocation_place_primaryFax>` : string
-  :ref:`primaryPhone <sdk_qtlocation_place_primaryPhone>` : string
-  :ref:`primaryWebsite <sdk_qtlocation_place_primaryWebsite>` : string
-  :ref:`ratings <sdk_qtlocation_place_ratings>` : Ratings
-  :ref:`reviewModel <sdk_qtlocation_place_reviewModel>` : ReviewModel
-  :ref:`status <sdk_qtlocation_place_status>` : enumeration
-  :ref:`supplier <sdk_qtlocation_place_supplier>` : Supplier
-  :ref:`visibility <sdk_qtlocation_place_visibility>` : enumeration

Methods
-------

-  :ref:`copyFrom <sdk_qtlocation_place_copyFrom>`\ (Place *original*)
-  string :ref:`errorString <sdk_qtlocation_place_errorString>`\ ()
-  void :ref:`getDetails <sdk_qtlocation_place_getDetails>`\ ()
-  :ref:`initializeFavorite <sdk_qtlocation_place_initializeFavorite>`\ (Plugin *destinationPlugin*)
-  void :ref:`remove <sdk_qtlocation_place_remove>`\ ()
-  void :ref:`save <sdk_qtlocation_place_save>`\ ()

Detailed Description
--------------------

The Place type represents a physical location with additional metadata describing that location. Contrasted with Location, Address, and coordinate type which are used to describe where a location is. The basic properties of a Place are its :ref:`name <sdk_qtlocation_place_name>` and :ref:`location <sdk_qtlocation_place_location>`.

Place objects are typically obtained from a search model and will generally only have their basic properties set. The :ref:`detailsFetched <sdk_qtlocation_place_detailsFetched>` property can be used to test if further property values need to be fetched from the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ . This can be done by invoking the :ref:`getDetails() <sdk_qtlocation_place_getDetails>` method. Progress of the fetching operation can be monitored with the :ref:`status <sdk_qtlocation_place_status>` property, which will be set to Place.Fetching when the details are being fetched.

The Place type has many properties holding information about the location. Details on how to contact the place are available from the :ref:`contactDetails <sdk_qtlocation_place_contactDetails>` property. Convenience properties for obtaining the primary :ref:`phone <sdk_qtlocation_place_primaryPhone>`, :ref:`fax <sdk_qtlocation_place_primaryFax>`, :ref:`email <sdk_qtlocation_place_primaryEmail>` and :ref:`website <sdk_qtlocation_place_primaryWebsite>` are also available.

Each place is assigned zero or more `categories </sdk/apps/qml/QtLocation/location-places-backend/#categories>`_ . Categories are typically used when searching for a particular kind of place, such as a restaurant or hotel. Some places have a :ref:`ratings <sdk_qtlocation_place_ratings>` object, which gives an indication of the quality of the place.

Place metadata is provided by a supplier who may require that an attribution message be displayed to the user when the place details are viewed.

Places have an associated :ref:`icon <sdk_qtlocation_place_icon>` which can be used to represent a place on a map or to decorate a delegate in a view.

Places may have additional rich content associated with them. The currently supported rich content include editorial descriptions, reviews and images. These are exposed as a set of models for retrieving the content. Editorial descriptions of the place are available from the :ref:`editorialModel <sdk_qtlocation_place_editorialModel>` property. Reviews of the place are available from the :ref:`reviewModel <sdk_qtlocation_place_reviewModel>` property. A gallery of pictures of the place can be accessed using the :ref:`imageModel <sdk_qtlocation_place_imageModel>` property.

Places may have additional attributes which are not covered in the formal API. The :ref:`extendedAttributes <sdk_qtlocation_place_extendedAttributes>` property provides access to these. The type of extended attributes available is specific to each `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

A Place is almost always tied to a `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ . The `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  property must be set before it is possible to call :ref:`save() <sdk_qtlocation_place_save>`, :ref:`remove() <sdk_qtlocation_place_remove>` or :ref:`getDetails() <sdk_qtlocation_place_getDetails>`. The :ref:`reviewModel <sdk_qtlocation_place_reviewModel>`, :ref:`imageModel <sdk_qtlocation_place_imageModel>` and :ref:`editorialModel <sdk_qtlocation_place_editorialModel>` are only valid then the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  property is set.

Saving a Place
~~~~~~~~~~~~~~

If the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  supports it, the Place type can be used to save a place. First create a new Place and set its properties:

.. code:: qml

    Place {
        id: myPlace
        plugin: myPlugin
        name: "Brisbane Technology Park"
        location: Location {
            address: Address {
                street: "53 Brandl Street"
                city: "Eight Mile Plains"
                postalCode: "4113"
                country: "Australia"
            }
            coordinate {
                latitude: -27.579646
                longitude: 153.100308
            }
        }
        visibility: Place.PrivateVisibility
    }

Then invoke the :ref:`save() <sdk_qtlocation_place_save>` method:

.. code:: qml

        myPlace.save();

The :ref:`status <sdk_qtlocation_place_status>` property will change to Place.Saving and then to Place.Ready if the save was successful or to Place.Error if an error occurs.

If the :ref:`placeId <sdk_qtlocation_place_placeId>` property is set, the backend will update an existing place otherwise it will create a new place. On success the :ref:`placeId <sdk_qtlocation_place_placeId>` property will be updated with the identifier of the newly saved place.

Caveats
^^^^^^^

The Places API is currently designed for only saving *core* details. Saving rich content like images and reviews or details like supplier and rating is not a supported use case. Typically a manager will generally ignore these fields upon save and may produce a warning message if they are populated.

The Places API only supports saving of the following *core details*:

-  name
-  place id
-  location
-  contact details
-  icon
-  categories (tag-like names to describe a place)
-  visibility scope

It is possible that providers may only support a subset of these. See the `plugin documentation </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_  for more details.

Saving of properties such as the rating, extended attributes, images, reviews, editorials and supplier is explicitly not supported by the Places API.

Saving Between Plugins
^^^^^^^^^^^^^^^^^^^^^^

When saving places between plugins, there are a few things to be aware of. Some fields of a place such as the id, categories and icons are plugin specific entities. For example the categories in one manager may not be recognised in another. Therefore trying to save a place directly from one plugin to another is not possible.

It is generally recommended that saving across plugins be handled as saving :ref:`favorites <sdk_qtlocation_place_favorites>` as explained in the Favorites section. However there is another approach which is to create a new place, set its (destination) plugin and then use the :ref:`copyFrom() <sdk_qtlocation_place_copyFrom>` method to copy the details of the original place. Using :ref:`copyFrom() <sdk_qtlocation_place_copyFrom>` only copies data that is supported by the destination plugin, plugin specific data such as the place identifier is not copied over. Once the copy is done, the place is in a suitable state to be saved.

The following snippet provides an example of saving a place to a different plugin using the :ref:`copyFrom <sdk_qtlocation_place_copyFrom>` method:

.. code:: qml

    place = Qt.createQmlObject('import QtLocation 5.3; Place { }', parent);
    place.plugin = destinationPlugin;
    place.copyFrom(originalPlace);
    place.save();

Removing a Place
~~~~~~~~~~~~~~~~

To remove a place, ensure that a Place object with a valid :ref:`placeId <sdk_qtlocation_place_placeId>` property exists and call its :ref:`remove() <sdk_qtlocation_place_remove>` method. The :ref:`status <sdk_qtlocation_place_status>` property will change to Place.Removing and then to Place.Ready if the save was successful or to Place.Error if an error occurs.

Favorites
~~~~~~~~~

The Places API supports the concept of favorites. Favorites are generally implemented by using two plugins, the first plugin is typically a read-only source of places (origin plugin) and a second read/write plugin (destination plugin) is used to store places from the origin as favorites.

Each Place has a favorite property which is intended to contain the corresponding place from the destination plugin (the place itself is sourced from the origin plugin). Because both the original place and favorite instances are available, the developer can choose which properties to show to the user. For example the favorite may have a modified name which should be displayed rather than the original name.

.. code:: qml

    Text { text: place.favorite ? place.favorite.name : place.name }

The following demonstrates how to save a new favorite instance. A call is made to create/initialize the favorite instance and then the instance is saved.

.. code:: qml

    place.initializeFavorite(destinationPlugin);
    //if necessary customizations to the favorite can be made here.
    //...
    place.favorite.save();

The following demonstrates favorite removal:

.. code:: qml

    place.favorite.remove();
        ...
    //check successful removal of the favorite by monitoring its status.
    //once that is done we can assign null to the favorite
    place.favorite = null;

The :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` has a favoritesPlugin property. If the property is set, any places found during a search are checked against the favoritesPlugin to see if there is a corresponding favorite place. If so, the favorite property of the Place is set, otherwise the favorite property is remains null.

**See also** :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>`.

Property Documentation
----------------------

.. _sdk_qtlocation_place_attribution:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| attribution : string                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a rich text attribution string for the place. Some providers may require that the attribution be shown to the user whenever a place is displayed. The contents of this property should be shown to the user if it is not empty.

.. _sdk_qtlocation_place_categories:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| categories : list<:ref:`Category <sdk_qtlocation_category>`>                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of categories this place is a member of. The categories that can be assigned to a place are specific to each `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

.. _sdk_qtlocation_place_contactDetails:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contactDetails : :ref:`ContactDetails <sdk_qtlocation_contactdetails>`                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the contact information for this place, for example a phone number or a website URL. This property is a map of :ref:`ContactDetail <sdk_qtlocation_contactdetail>` objects.

.. _sdk_qtlocation_place_detailsFetched:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| detailsFetched : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property indicates whether the details of the place have been fetched. If this property is false, the place details have not yet been fetched. Fetching can be done by invoking the :ref:`getDetails() <sdk_qtlocation_place_getDetails>` method.

**See also** :ref:`getDetails() <sdk_qtlocation_place_getDetails>`.

.. _sdk_qtlocation_place_editorialModel:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| editorialModel : :ref:`EditorialModel <sdk_qtlocation_editorialmodel>`                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a model which can be used to retrieve editorial descriptions of the place.

.. _sdk_qtlocation_place_extendedAttributes:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| extendedAttributes : :ref:`ExtendedAttributes <sdk_qtlocation_extendedattributes>`                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the extended attributes of a place. Extended attributes are additional information about a place not covered by the place's properties.

.. _sdk_qtlocation_place_favorite:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| favorite : :ref:`Place <sdk_qtlocation_place>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the favorite instance of a place.

.. _sdk_qtlocation_place_icon:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| icon : :ref:`Icon <sdk_qtlocation_icon>`                                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a graphical icon which can be used to represent the place.

.. _sdk_qtlocation_place_imageModel:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| imageModel : :ref:`ImageModel <sdk_qtlocation_imagemodel>`                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a model which can be used to retrieve images of the place.

.. _sdk_qtlocation_place_location:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| location : QtPositioning::Location                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the location of the place which can be used to retrieve the coordinate, address and the bounding box.

.. _sdk_qtlocation_place_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the place which can be used to represent the place.

.. _sdk_qtlocation_place_place:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| place : QPlace                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

.. _sdk_qtlocation_place_placeId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| placeId : string                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the unique identifier of the place. The place identifier is only meaningful to the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  that generated it and is not transferable between `Plugins </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ . The place id is not guaranteed to be universally unique, but unique within the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  that generated it.

If only the place identifier is known, all other place data can fetched from the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

.. code:: qml

        place.plugin = myPlugin;
        place.placeId = "known-place-id";
        place.getDetails();

.. _sdk_qtlocation_place_plugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| plugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  that provided this place which can be used to retrieve more information about the service.

.. _sdk_qtlocation_place_primaryEmail:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| primaryEmail : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the primary email address of the place. If no "email" contact detail is defined for this place this property will be an empty string. It is equivalent to

.. code:: qml

        var primaryEmail;
        if (place.contactDetails["email"].length > 0)
            primaryEmail = place.contactDetails["email"][0].value;

.. _sdk_qtlocation_place_primaryFax:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| primaryFax : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the primary fax number of the place. If no "fax" contact detail is defined for this place this property will be an empty string. It is equivalent to

.. code:: qml

        var primaryFax;
        if (place.contactDetails["fax"].length > 0)
            primaryFax = place.contactDetails["fax"][0].value;

.. _sdk_qtlocation_place_primaryPhone:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| primaryPhone : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the primary phone number of the place. If no "phone" contact detail is defined for this place, this property will be an empty string. It is equivalent to:

.. code:: qml

        var primaryPhone;
        if (place.contactDetails["phone"].length > 0)
            primaryPhone = place.contactDetails["phone"][0].value;

.. _sdk_qtlocation_place_primaryWebsite:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| primaryWebsite : string                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the primary website url of the place. If no "website" contact detail is defined for this place this property will be an empty string. It is equivalent to

.. code:: qml

        var primaryWebsite;
        if (place.contactDetails["website"].length > 0)
            primaryWebsite = place.contactDetails["website"][0].value;

.. _sdk_qtlocation_place_ratings:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ratings : :ref:`Ratings <sdk_qtlocation_ratings>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds ratings of the place. The ratings provide an indication of the quality of a place.

.. _sdk_qtlocation_place_reviewModel:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| reviewModel : :ref:`ReviewModel <sdk_qtlocation_reviewmodel>`                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a model which can be used to retrieve reviews about the place.

.. _sdk_qtlocation_place_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of the place. It can be one of:

+------------------+--------------------------------------------------------------------------------------------------------+
| Place.Ready      | No error occurred during the last operation, further operations may be performed on the place.         |
+------------------+--------------------------------------------------------------------------------------------------------+
| Place.Saving     | The place is currently being saved, no other operation may be performed until complete.                |
+------------------+--------------------------------------------------------------------------------------------------------+
| Place.Fetching   | The place details are currently being fetched, no other operations may be performed until complete.    |
+------------------+--------------------------------------------------------------------------------------------------------+
| Place.Removing   | The place is currently being removed, no other operations can be performed until complete.             |
+------------------+--------------------------------------------------------------------------------------------------------+
| Place.Error      | An error occurred during the last operation, further operations can still be performed on the place.   |
+------------------+--------------------------------------------------------------------------------------------------------+

The status of a place can be checked by connecting the status property to a handler function, and then have the handler function process the change in status.

.. code:: qml

    place.statusChanged.connect(statusChangedHandler);
        ...
    function statusChangedHandler() {
        if (statusChangedHandler.prevStatus === Place.Saving) {
            switch (place.status) {
            case Place.Ready:
                console.log('Save successful');
                break;
            case Place.Error:
                console.log('Save failed');
                break;
            default:
                break;
            }
        }
        statusChangedHandler.prevStatus = place.status;
    }

.. _sdk_qtlocation_place_supplier:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| supplier : :ref:`Supplier <sdk_qtlocation_supplier>`                                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the supplier of the place data. The supplier is typically a business or organization that collected the data about the place.

.. _sdk_qtlocation_place_visibility:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibility : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the visibility of the place. It can be one of:

+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Place.UnspecifiedVisibility   | The visibility of the place is unspecified, the default visibility of the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  will be used.   |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Place.DeviceVisibility        | The place is limited to the current device. The place will not be transferred off of the device.                                                            |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Place.PrivateVisibility       | The place is private to the current user. The place may be transferred to an online service but is only ever visible to the current user.                   |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Place.PublicVisibility        | The place is public.                                                                                                                                        |
+-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

Note that visibility does not affect how the place is displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the place.

Method Documentation
--------------------

.. _sdk_qtlocation_place_copyFrom:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| copyFrom(:ref:`Place <sdk_qtlocation_place>` *original*)                                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Copies data from an *original* place into this place. Only data that is supported by this place's plugin is copied over and plugin specific data such as place identifier is not copied over.

.. _sdk_qtlocation_place_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string errorString()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a string description of the error of the last operation. If the last operation completed successfully then the string is empty.

.. _sdk_qtlocation_place_getDetails:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void getDetails()                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method starts fetching place details.

The :ref:`status <sdk_qtlocation_place_status>` property will change to Place.Fetching while the fetch is in progress. On success the object's properties will be updated, :ref:`status <sdk_qtlocation_place_status>` will be set to Place.Ready and :ref:`detailsFetched <sdk_qtlocation_place_detailsFetched>` will be set to true. On error :ref:`status <sdk_qtlocation_place_status>` will be set to Place.Error. The :ref:`errorString() <sdk_qtlocation_place_errorString>` method can be used to get the details of the error.

.. _sdk_qtlocation_place_initializeFavorite:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| initializeFavorite(:ref:`Plugin <sdk_qtlocation_plugin>` *destinationPlugin*)                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Creates a favorite instance for the place which is to be saved into the *destination* plugin. This method does nothing if the favorite property is not null.

.. _sdk_qtlocation_place_remove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void remove()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method performs a remove operation on the place.

The :ref:`status <sdk_qtlocation_place_status>` property will change to Place.Removing while the save operation is in progress. On success :ref:`status <sdk_qtlocation_place_status>` will be set to Place.Ready. On error :ref:`status <sdk_qtlocation_place_status>` will be set to Place.Error. The :ref:`errorString() <sdk_qtlocation_place_errorString>` method can be used to get the details of the error.

.. _sdk_qtlocation_place_save:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void save()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method performs a save operation on the place.

The :ref:`status <sdk_qtlocation_place_status>` property will change to Place.Saving while the save operation is in progress. On success the :ref:`status <sdk_qtlocation_place_status>` will be set to Place.Ready. On error :ref:`status <sdk_qtlocation_place_status>` will be set to Place.Error. The :ref:`errorString() <sdk_qtlocation_place_errorString>` method can be used to get the details of the error.

If the :ref:`placeId <sdk_qtlocation_place_placeId>` property was previously empty, it will be assigned a valid value automatically during a successful save operation.

Note that a :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` will call :ref:`Place::getDetails <sdk_qtlocation_place_getDetails>` on any place that it detects an update on. A consequence of this is that whenever a Place from a :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` is successfully saved, it will be followed by a fetch of place details, leading to a sequence of state changes of ``Saving``, ``Ready``, ``Fetching``, ``Ready``.


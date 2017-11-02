.. _sdk_qtlocation_geocodemodel:
QtLocation GeocodeModel
=======================

The GeocodeModel type provides support for searching operations related
to geographic information.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`autoUpdate <sdk_qtlocation_geocodemodel_autoUpdate-prop>`
   : bool
-  :ref:`bounds <sdk_qtlocation_geocodemodel_bounds-prop>` :
   geoshape
-  :ref:`count <sdk_qtlocation_geocodemodel_count-prop>` : int
-  :ref:`error <sdk_qtlocation_geocodemodel_error-prop>` :
   enumeration
-  :ref:`errorString <sdk_qtlocation_geocodemodel_errorString-prop>`
   : string
-  :ref:`limit <sdk_qtlocation_geocodemodel_limit-prop>` : int
-  :ref:`offset <sdk_qtlocation_geocodemodel_offset-prop>` : int
-  :ref:`plugin <sdk_qtlocation_geocodemodel_plugin-prop>` : Plugin
-  :ref:`query <sdk_qtlocation_geocodemodel_query-prop>` : QVariant
-  :ref:`status <sdk_qtlocation_geocodemodel_status-prop>` :
   enumeration

Methods
-------

-  :ref:`cancel <sdk_qtlocation_geocodemodel_cancel-method>`\ ()
-  Location
   **:ref:`get <sdk_qtlocation_geocodemodel#get-method>`**\ (int)
-  :ref:`reset <sdk_qtlocation_geocodemodel_reset-method>`\ ()
-  :ref:`update <sdk_qtlocation_geocodemodel_update-method>`\ ()

Detailed Description
--------------------

The :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` type is used as part
of a model/view grouping to match addresses or search strings with
geographic locations. How the geographic locations generated are used or
displayed is decided by any Views attached to the
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` (for example a
:ref:`MapItemView <sdk_qtlocation_mapitemview>` or ListView).

Like :ref:`Map <sdk_qtlocation_map>` and
:ref:`RouteModel <sdk_qtlocation_routemodel>`, all the data for a
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` to work comes from a
services plugin. This is contained in the
`plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ 
property, and this must be set before the
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` can do any useful work.

Once the plugin is set, the
:ref:`query <sdk_qtlocation_geocodemodel#query-prop>` property can be used
to specify the address or search string to match. If
:ref:`autoUpdate <sdk_qtlocation_geocodemodel#autoUpdate-prop>` is enabled,
the Model will update its output automatically. Otherwise, the
:ref:`update <sdk_qtlocation_geocodemodel#update-method>` method may be
used. By default,
:ref:`autoUpdate <sdk_qtlocation_geocodemodel#autoUpdate-prop>` is
disabled.

The data stored and returned in the
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` consists of Location
objects, as a list with the role name "locationData". See the
documentation for Location for further details on its structure and
contents.

Example Usage
~~~~~~~~~~~~~

The following snippet is two-part, showing firstly the declaration of
objects, and secondly a short piece of procedural code using it. We set
the geocodeModel's
:ref:`autoUpdate <sdk_qtlocation_geocodemodel#autoUpdate-prop>` property to
false, and call :ref:`update <sdk_qtlocation_geocodemodel#update-method>`
once the query is set up. In this case, as we use a string value in
:ref:`query <sdk_qtlocation_geocodemodel#query-prop>`, only one update
would occur, even with
:ref:`autoUpdate <sdk_qtlocation_geocodemodel#autoUpdate-prop>` enabled.
However, if we provided an Address object we may inadvertently trigger
multiple requests whilst setting its properties.

.. code:: cpp

    Plugin {
        id: aPlugin
    }
    GeocodeModel {
        id: geocodeModel
        plugin: aPlugin
        autoUpdate: false
    }

.. code:: cpp

    {
        geocodeModel.query = "53 Brandl St, Eight Mile Plains, Australia"
        geocodeModel.update()
    }

Property Documentation
----------------------

.. _sdk_qtlocation_geocodemodel_autoUpdate-prop:

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property controls whether the Model automatically updates in
response to changes in its attached query. The default value of this
property is false.

If setting this value to 'true' and using an Address or coordinate as
the query, note that any change at all in the object's properties will
trigger a new request to be sent. If you are adjusting many properties
of the object whilst autoUpdate is enabled, this can generate large
numbers of useless (and later discarded) requests.

| 

.. _sdk_qtlocation_geocodemodel_bounds-prop:

+--------------------------------------------------------------------------+
|        \ bounds : geoshape                                               |
+--------------------------------------------------------------------------+

This property holds the bounding area used to limit the results to those
within the area. This is particularly useful if query is only partially
filled out, as the service will attempt to (reverse) geocode all matches
for the specified data.

Accepted types are georectangle and geocircle.

| 

.. _sdk_qtlocation_geocodemodel_count-prop:

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds how many locations the model currently has. Amongst
other uses, you can use this value when accessing locations via the
:ref:`GeocodeModel::get <sdk_qtlocation_geocodemodel#get-method>` -method.

| 

.. _sdk_qtlocation_geocodemodel_error-prop:

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This read-only property holds the latest error value of the geocoding
request.

-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.NoError - No error has
   occurred
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.EngineNotSetError -
   The plugin/service provider used does not support (reverse) geocoding
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.CommunicationError -
   An error occurred while communicating with the service provider
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.ParseError - The
   response from the service provider was in an unrecognizable format
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.UnsupportedOptionError
   - The requested operation or one of the options for the operation are
   not supported by the service provider.
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.CombinationError - An
   error occurred while results where being combined from multiple
   sources
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.UnknownError - An
   error occurred which does not fit into any of the other categories

| 

.. _sdk_qtlocation_geocodemodel_errorString-prop:

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest
geocoding error. If no error has occurred or the model has been reset,
an empty string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

.. _sdk_qtlocation_geocodemodel_limit-prop:

+--------------------------------------------------------------------------+
|        \ limit : int                                                     |
+--------------------------------------------------------------------------+

This property holds the maximum number of results. The limit and
:ref:`offset <sdk_qtlocation_geocodemodel#offset-prop>` values are only
applicable with free string geocoding (that is they are not considered
when using addresses or coordinates in the search query).

If limit is -1 the entire result set will be returned, otherwise at most
limit results will be returned. The limit and
:ref:`offset <sdk_qtlocation_geocodemodel#offset-prop>` results can be used
together to implement paging.

| 

.. _sdk_qtlocation_geocodemodel_offset-prop:

+--------------------------------------------------------------------------+
|        \ offset : int                                                    |
+--------------------------------------------------------------------------+

This property tells not to return the first 'offset' number of the
results. The :ref:`limit <sdk_qtlocation_geocodemodel#limit-prop>` and
offset values are only applicable with free string geocoding (that is
they are not considered when using addresses or coordinates in the
search query).

The :ref:`limit <sdk_qtlocation_geocodemodel#limit-prop>` and offset
results can be used together to implement paging.

| 

.. _sdk_qtlocation_geocodemodel_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ plugin : `Plugin <sdk_qtlocation_plugin>`                  |
+--------------------------------------------------------------------------+

This property holds the plugin that provides the actual geocoding
service. Note that all plugins do not necessarily provide geocoding
(could for example provide only routing or maps).

**See also**
`Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

| 

.. _sdk_qtlocation_geocodemodel_query-prop:

+--------------------------------------------------------------------------+
|        \ query : QVariant                                                |
+--------------------------------------------------------------------------+

This property holds the data of the geocoding request. The property
accepts three types of queries which determine both the data and the
type of action to be performed:

-  Address - Geocoding (address to coordinate)
-  coordinate - Reverse geocoding (coordinate to address)
-  string - Geocoding (address to coordinate)

| 

.. _sdk_qtlocation_geocodemodel_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This read-only property holds the current status of the model.

-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Null - No geocode
   requests have been issued or
   :ref:`reset <sdk_qtlocation_geocodemodel#reset-method>` has been called.
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Ready - Geocode
   request(s) have finished successfully.
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Loading - Geocode
   request has been issued but not yet finished
-  :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Error - Geocoding
   error has occurred, details are in
   :ref:`error <sdk_qtlocation_geocodemodel#error-prop>` and
   :ref:`errorString <sdk_qtlocation_geocodemodel#errorString-prop>`

| 

Method Documentation
--------------------

.. _sdk_qtlocation_geocodemodel_cancel-method:

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels any outstanding requests and clears errors. Model status will be
set to either :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Null or
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Ready.

| 

.. _sdk_qtlocation_geocodemodel_Location get-method:

+--------------------------------------------------------------------------+
|        \ Location get(int)                                               |
+--------------------------------------------------------------------------+

Returns the Location at given index. Use
:ref:`count <sdk_qtlocation_geocodemodel#count-prop>` property to check the
amount of locations available. The locations are indexed from zero, so
the accessible range is 0...(count - 1).

If you access out of bounds, a zero (null object) is returned and a
warning is issued.

| 

.. _sdk_qtlocation_geocodemodel_reset-method:

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All location data is cleared, any outstanding requests
are aborted and possible errors are cleared. Model status will be set to
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`.Null

| 

.. _sdk_qtlocation_geocodemodel_update-method:

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Instructs the :ref:`GeocodeModel <sdk_qtlocation_geocodemodel>` to update
its data. This is most useful when
:ref:`autoUpdate <sdk_qtlocation_geocodemodel#autoUpdate-prop>` is
disabled, to force a refresh when the query has been changed.

| 

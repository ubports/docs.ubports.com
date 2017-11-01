The GeocodeModel type provides support for searching operations related
to geographic information.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`autoUpdate </sdk/apps/qml/QtLocation/GeocodeModel#autoUpdate-prop>`__****
   : bool
-  ****`bounds </sdk/apps/qml/QtLocation/GeocodeModel#bounds-prop>`__****
   : geoshape
-  ****`count </sdk/apps/qml/QtLocation/GeocodeModel#count-prop>`__****
   : int
-  ****`error </sdk/apps/qml/QtLocation/GeocodeModel#error-prop>`__****
   : enumeration
-  ****`errorString </sdk/apps/qml/QtLocation/GeocodeModel#errorString-prop>`__****
   : string
-  ****`limit </sdk/apps/qml/QtLocation/GeocodeModel#limit-prop>`__****
   : int
-  ****`offset </sdk/apps/qml/QtLocation/GeocodeModel#offset-prop>`__****
   : int
-  ****`plugin </sdk/apps/qml/QtLocation/GeocodeModel#plugin-prop>`__****
   : Plugin
-  ****`query </sdk/apps/qml/QtLocation/GeocodeModel#query-prop>`__****
   : QVariant
-  ****`status </sdk/apps/qml/QtLocation/GeocodeModel#status-prop>`__****
   : enumeration

Methods
-------

-  ****`cancel </sdk/apps/qml/QtLocation/GeocodeModel#cancel-method>`__****\ ()
-  Location
   ****`get </sdk/apps/qml/QtLocation/GeocodeModel#get-method>`__****\ (int)
-  ****`reset </sdk/apps/qml/QtLocation/GeocodeModel#reset-method>`__****\ ()
-  ****`update </sdk/apps/qml/QtLocation/GeocodeModel#update-method>`__****\ ()

Detailed Description
--------------------

The `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ type is
used as part of a model/view grouping to match addresses or search
strings with geographic locations. How the geographic locations
generated are used or displayed is decided by any Views attached to the
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ (for example a
`MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ or ListView).

Like `Map </sdk/apps/qml/QtLocation/Map/>`__ and
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__, all the data for
a `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ to work
comes from a services plugin. This is contained in the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
property, and this must be set before the
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ can do any
useful work.

Once the plugin is set, the
`query </sdk/apps/qml/QtLocation/GeocodeModel#query-prop>`__ property
can be used to specify the address or search string to match. If
`autoUpdate </sdk/apps/qml/QtLocation/GeocodeModel#autoUpdate-prop>`__
is enabled, the Model will update its output automatically. Otherwise,
the `update </sdk/apps/qml/QtLocation/GeocodeModel#update-method>`__
method may be used. By default,
`autoUpdate </sdk/apps/qml/QtLocation/GeocodeModel#autoUpdate-prop>`__
is disabled.

The data stored and returned in the
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__ consists of
Location objects, as a list with the role name "locationData". See the
documentation for Location for further details on its structure and
contents.

Example Usage
~~~~~~~~~~~~~

The following snippet is two-part, showing firstly the declaration of
objects, and secondly a short piece of procedural code using it. We set
the geocodeModel's
`autoUpdate </sdk/apps/qml/QtLocation/GeocodeModel#autoUpdate-prop>`__
property to false, and call
`update </sdk/apps/qml/QtLocation/GeocodeModel#update-method>`__ once
the query is set up. In this case, as we use a string value in
`query </sdk/apps/qml/QtLocation/GeocodeModel#query-prop>`__, only one
update would occur, even with
`autoUpdate </sdk/apps/qml/QtLocation/GeocodeModel#autoUpdate-prop>`__
enabled. However, if we provided an Address object we may inadvertently
trigger multiple requests whilst setting its properties.

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

+--------------------------------------------------------------------------+
|        \ bounds : geoshape                                               |
+--------------------------------------------------------------------------+

This property holds the bounding area used to limit the results to those
within the area. This is particularly useful if query is only partially
filled out, as the service will attempt to (reverse) geocode all matches
for the specified data.

Accepted types are georectangle and geocircle.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds how many locations the model currently has. Amongst
other uses, you can use this value when accessing locations via the
`GeocodeModel::get </sdk/apps/qml/QtLocation/GeocodeModel#get-method>`__
-method.

| 

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This read-only property holds the latest error value of the geocoding
request.

-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.NoError -
   No error has occurred
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.EngineNotSetError
   - The plugin/service provider used does not support (reverse)
   geocoding
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.CommunicationError
   - An error occurred while communicating with the service provider
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.ParseError
   - The response from the service provider was in an unrecognizable
   format
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.UnsupportedOptionError
   - The requested operation or one of the options for the operation are
   not supported by the service provider.
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.CombinationError
   - An error occurred while results where being combined from multiple
   sources
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.UnknownError
   - An error occurred which does not fit into any of the other
   categories

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest
geocoding error. If no error has occurred or the model has been reset,
an empty string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

+--------------------------------------------------------------------------+
|        \ limit : int                                                     |
+--------------------------------------------------------------------------+

This property holds the maximum number of results. The limit and
`offset </sdk/apps/qml/QtLocation/GeocodeModel#offset-prop>`__ values
are only applicable with free string geocoding (that is they are not
considered when using addresses or coordinates in the search query).

If limit is -1 the entire result set will be returned, otherwise at most
limit results will be returned. The limit and
`offset </sdk/apps/qml/QtLocation/GeocodeModel#offset-prop>`__ results
can be used together to implement paging.

| 

+--------------------------------------------------------------------------+
|        \ offset : int                                                    |
+--------------------------------------------------------------------------+

This property tells not to return the first 'offset' number of the
results. The
`limit </sdk/apps/qml/QtLocation/GeocodeModel#limit-prop>`__ and offset
values are only applicable with free string geocoding (that is they are
not considered when using addresses or coordinates in the search query).

The `limit </sdk/apps/qml/QtLocation/GeocodeModel#limit-prop>`__ and
offset results can be used together to implement paging.

| 

+--------------------------------------------------------------------------+
|        \ plugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__          |
+--------------------------------------------------------------------------+

This property holds the plugin that provides the actual geocoding
service. Note that all plugins do not necessarily provide geocoding
(could for example provide only routing or maps).

**See also**
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__.

| 

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

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This read-only property holds the current status of the model.

-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Null - No
   geocode requests have been issued or
   `reset </sdk/apps/qml/QtLocation/GeocodeModel#reset-method>`__ has
   been called.
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Ready -
   Geocode request(s) have finished successfully.
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Loading -
   Geocode request has been issued but not yet finished
-  `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Error -
   Geocoding error has occurred, details are in
   `error </sdk/apps/qml/QtLocation/GeocodeModel#error-prop>`__ and
   `errorString </sdk/apps/qml/QtLocation/GeocodeModel#errorString-prop>`__

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels any outstanding requests and clears errors. Model status will be
set to either
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Null or
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Ready.

| 

+--------------------------------------------------------------------------+
|        \ Location get(int)                                               |
+--------------------------------------------------------------------------+

Returns the Location at given index. Use
`count </sdk/apps/qml/QtLocation/GeocodeModel#count-prop>`__ property to
check the amount of locations available. The locations are indexed from
zero, so the accessible range is 0...(count - 1).

If you access out of bounds, a zero (null object) is returned and a
warning is issued.

| 

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All location data is cleared, any outstanding requests
are aborted and possible errors are cleared. Model status will be set to
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__.Null

| 

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Instructs the `GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__
to update its data. This is most useful when
`autoUpdate </sdk/apps/qml/QtLocation/GeocodeModel#autoUpdate-prop>`__
is disabled, to force a refresh when the query has been changed.

| 

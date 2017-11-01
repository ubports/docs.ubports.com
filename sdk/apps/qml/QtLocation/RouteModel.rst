The RouteModel type provides access to routes.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`autoUpdate </sdk/apps/qml/QtLocation/RouteModel#autoUpdate-prop>`__****
   : bool
-  ****`count </sdk/apps/qml/QtLocation/RouteModel#count-prop>`__**** :
   int
-  ****`error </sdk/apps/qml/QtLocation/RouteModel#error-prop>`__**** :
   enumeration
-  ****`errorString </sdk/apps/qml/QtLocation/RouteModel#errorString-prop>`__****
   : string
-  ****`measurementSystem </sdk/apps/qml/QtLocation/RouteModel#measurementSystem-prop>`__****
   : Locale::MeasurementSystem
-  ****`plugin </sdk/apps/qml/QtLocation/RouteModel#plugin-prop>`__****
   : Plugin
-  ****`query </sdk/apps/qml/QtLocation/RouteModel#query-prop>`__**** :
   RouteQuery
-  ****`status </sdk/apps/qml/QtLocation/RouteModel#status-prop>`__****
   : enumeration

Methods
-------

-  ****`cancel </sdk/apps/qml/QtLocation/RouteModel#cancel-method>`__****\ ()
-  ****`get </sdk/apps/qml/QtLocation/RouteModel#get-method>`__****\ (int)
-  ****`reset </sdk/apps/qml/QtLocation/RouteModel#reset-method>`__****\ ()
-  ****`update </sdk/apps/qml/QtLocation/RouteModel#update-method>`__****\ ()

Detailed Description
--------------------

The `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ type is used
as part of a model/view grouping to retrieve geographic routes from a
backend provider. Routes include data about driving directions between
two points, walking directions with multiple waypoints, and various
other similar concepts. It functions much like other Model types in QML
(see for example ListModel and XmlListModel), and interacts with views
such as `MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__, and
ListView.

Like `Map </sdk/apps/qml/QtLocation/Map/>`__ and
`GeocodeModel </sdk/apps/qml/QtLocation/GeocodeModel/>`__, all the data
for a `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ to work
comes from a services plugin. This is contained in the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
property, and this must be set before the
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ can do any useful
work.

Once the plugin is set, create a
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ with the
appropriate waypoints and other settings, and set the
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__'s
`query </sdk/apps/qml/QtLocation/RouteModel#query-prop>`__ property. If
`autoUpdate </sdk/apps/qml/QtLocation/RouteModel#autoUpdate-prop>`__ is
enabled, the update will being automatically. Otherwise, the
`update </sdk/apps/qml/QtLocation/RouteModel#update-method>`__ method
may be used. By default,
`autoUpdate </sdk/apps/qml/QtLocation/RouteModel#autoUpdate-prop>`__ is
disabled.

The data stored and returned in the
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ consists of
`Route </sdk/apps/qml/QtLocation/Route/>`__ objects, as a list with the
role name "routeData". See the documentation for
`Route </sdk/apps/qml/QtLocation/Route/>`__ for further details on its
structure and contents.

Example Usage
~~~~~~~~~~~~~

The following snippet is two-part, showing firstly the declaration of
objects, and secondly a short piece of procedural code using it. We set
the routeModel's
`autoUpdate </sdk/apps/qml/QtLocation/RouteModel#autoUpdate-prop>`__
property to false, and call
`update </sdk/apps/qml/QtLocation/RouteModel#update-method>`__ once the
query is set up, to avoid useless extra requests halfway through the set
up of the query.

.. code:: cpp

    Plugin {
        id: aPlugin
        name: "nokia"
    }
    RouteQuery {
        id: aQuery
    }
    RouteModel {
        id: routeModel
        plugin: aPlugin
        query: aQuery
        autoUpdate: false
    }

.. code:: cpp

    {
        aQuery.addWaypoint(...)
        aQuery.addWaypoint(...)
        aQuery.travelModes = ...
        routeModel.update()
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property controls whether the Model automatically updates in
response to changes in its attached
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__. The default value
of this property is false.

If setting this value to 'true', note that any change at all in the
`RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ object set in the
`query </sdk/apps/qml/QtLocation/RouteModel#query-prop>`__ property will
trigger a new request to be sent. If you are adjusting many properties
of the `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__ with
autoUpdate enabled, this can generate large numbers of useless (and
later discarded) requests.

| 

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds how many routes the model currently has. Amongst
other uses, you can use this value when accessing routes via the
`QtLocation::RouteModel::get </sdk/apps/qml/QtLocation/RouteModel#get-method>`__
-method.

| 

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This read-only property holds the latest error value of the routing
request.

-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.NoError - No
   error has occurred
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.EngineNotSetError
   - The plugin/service provider used does not support routing
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.CommunicationError
   - An error occurred while communicating with the service provider
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.ParseError -
   The response from the service provider was in an unrecognizable
   format
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.UnsupportedOptionError
   - The requested operation or one of the options for the operation are
   not supported by the service provider.
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.UnknownError -
   An error occurred which does not fit into any of the other categories

| 

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest routing
error. If no error has occurred or the model has been reset, an empty
string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

+--------------------------------------------------------------------------+
|        \ measurementSystem : Locale::MeasurementSystem                   |
+--------------------------------------------------------------------------+

This property holds the measurement system which will be used when
calculating the route. This property is changed when the
`Plugin::locales </sdk/apps/qml/QtLocation/Plugin#locales-prop>`__
property of `plugin </sdk/apps/qml/QtLocation/RouteModel#plugin-prop>`__
changes.

If setting this property it must be set after the
`plugin </sdk/apps/qml/QtLocation/RouteModel#plugin-prop>`__ property is
set.

| 

+--------------------------------------------------------------------------+
|        \ plugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__          |
+--------------------------------------------------------------------------+

This property holds the plugin that providers the actual routing
service. Note that all plugins do not necessarily provide routing (could
for example provide only geocoding or maps).

A valid plugin must be set before the
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ can perform any
useful operations.

**See also**
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__.

| 

+--------------------------------------------------------------------------+
|        \ query : `RouteQuery </sdk/apps/qml/QtLocation/RouteQuery/>`__   |
+--------------------------------------------------------------------------+

This property holds the data of the route request. The primary data are
the waypoint coordinates and possible further preferences (means of
traveling, things to avoid on route etc).

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This read-only property holds the current status of the model.

-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Null - No route
   requests have been issued or
   `reset </sdk/apps/qml/QtLocation/RouteModel#reset-method>`__ has been
   called.
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Ready - Route
   request(s) have finished successfully.
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Loading - Route
   request has been issued but not yet finished
-  `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Error - Routing
   error has occurred, details are in
   `error </sdk/apps/qml/QtLocation/RouteModel#error-prop>`__ and
   `errorString </sdk/apps/qml/QtLocation/RouteModel#errorString-prop>`__

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels any outstanding requests and clears errors. Model status will be
set to either `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Null
or `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Ready.

| 

+--------------------------------------------------------------------------+
|        \ get(int)                                                        |
+--------------------------------------------------------------------------+

Returns the Route at given index. Use
`count </sdk/apps/qml/QtLocation/RouteModel#count-prop>`__ property to
check the amount of routes available. The routes are indexed from zero,
so the accessible range is 0...(count - 1).

If you access out of bounds, a zero (null object) is returned and a
warning is issued.

| 

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All route data is cleared, any outstanding requests
are aborted and possible errors are cleared. Model status will be set to
`RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__.Null

| 

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Instructs the `RouteModel </sdk/apps/qml/QtLocation/RouteModel/>`__ to
update its data. This is most useful when
`autoUpdate </sdk/apps/qml/QtLocation/RouteModel#autoUpdate-prop>`__ is
disabled, to force a refresh when the query has been changed.

| 

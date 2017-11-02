.. _sdk_qtlocation_routemodel:
QtLocation RouteModel
=====================

The RouteModel type provides access to routes.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`autoUpdate <sdk_qtlocation_routemodel_autoUpdate-prop>` :
   bool
-  :ref:`count <sdk_qtlocation_routemodel_count-prop>` : int
-  :ref:`error <sdk_qtlocation_routemodel_error-prop>` :
   enumeration
-  :ref:`errorString <sdk_qtlocation_routemodel_errorString-prop>`
   : string
-  :ref:`measurementSystem <sdk_qtlocation_routemodel_measurementSystem-prop>`
   : Locale::MeasurementSystem
-  :ref:`plugin <sdk_qtlocation_routemodel_plugin-prop>` : Plugin
-  :ref:`query <sdk_qtlocation_routemodel_query-prop>` : RouteQuery
-  :ref:`status <sdk_qtlocation_routemodel_status-prop>` :
   enumeration

Methods
-------

-  :ref:`cancel <sdk_qtlocation_routemodel_cancel-method>`\ ()
-  :ref:`get <sdk_qtlocation_routemodel_get-method>`\ (int)
-  :ref:`reset <sdk_qtlocation_routemodel_reset-method>`\ ()
-  :ref:`update <sdk_qtlocation_routemodel_update-method>`\ ()

Detailed Description
--------------------

The :ref:`RouteModel <sdk_qtlocation_routemodel>` type is used as part of a
model/view grouping to retrieve geographic routes from a backend
provider. Routes include data about driving directions between two
points, walking directions with multiple waypoints, and various other
similar concepts. It functions much like other Model types in QML (see
for example ListModel and XmlListModel), and interacts with views such
as :ref:`MapItemView <sdk_qtlocation_mapitemview>`, and ListView.

Like :ref:`Map <sdk_qtlocation_map>` and
:ref:`GeocodeModel <sdk_qtlocation_geocodemodel>`, all the data for a
:ref:`RouteModel <sdk_qtlocation_routemodel>` to work comes from a services
plugin. This is contained in the
`plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ 
property, and this must be set before the
:ref:`RouteModel <sdk_qtlocation_routemodel>` can do any useful work.

Once the plugin is set, create a
:ref:`RouteQuery <sdk_qtlocation_routequery>` with the appropriate
waypoints and other settings, and set the
:ref:`RouteModel <sdk_qtlocation_routemodel>`'s
:ref:`query <sdk_qtlocation_routemodel#query-prop>` property. If
:ref:`autoUpdate <sdk_qtlocation_routemodel#autoUpdate-prop>` is enabled,
the update will being automatically. Otherwise, the
:ref:`update <sdk_qtlocation_routemodel#update-method>` method may be used.
By default, :ref:`autoUpdate <sdk_qtlocation_routemodel#autoUpdate-prop>`
is disabled.

The data stored and returned in the
:ref:`RouteModel <sdk_qtlocation_routemodel>` consists of
:ref:`Route <sdk_qtlocation_route>` objects, as a list with the role name
"routeData". See the documentation for :ref:`Route <sdk_qtlocation_route>`
for further details on its structure and contents.

Example Usage
~~~~~~~~~~~~~

The following snippet is two-part, showing firstly the declaration of
objects, and secondly a short piece of procedural code using it. We set
the routeModel's
:ref:`autoUpdate <sdk_qtlocation_routemodel#autoUpdate-prop>` property to
false, and call :ref:`update <sdk_qtlocation_routemodel#update-method>`
once the query is set up, to avoid useless extra requests halfway
through the set up of the query.

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

.. _sdk_qtlocation_routemodel_autoUpdate-prop:

+--------------------------------------------------------------------------+
|        \ autoUpdate : bool                                               |
+--------------------------------------------------------------------------+

This property controls whether the Model automatically updates in
response to changes in its attached
:ref:`RouteQuery <sdk_qtlocation_routequery>`. The default value of this
property is false.

If setting this value to 'true', note that any change at all in the
:ref:`RouteQuery <sdk_qtlocation_routequery>` object set in the
:ref:`query <sdk_qtlocation_routemodel#query-prop>` property will trigger a
new request to be sent. If you are adjusting many properties of the
:ref:`RouteQuery <sdk_qtlocation_routequery>` with autoUpdate enabled, this
can generate large numbers of useless (and later discarded) requests.

| 

.. _sdk_qtlocation_routemodel_count-prop:

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds how many routes the model currently has. Amongst
other uses, you can use this value when accessing routes via the
:ref:`QtLocation::RouteModel::get <sdk_qtlocation_routemodel#get-method>`
-method.

| 

.. _sdk_qtlocation_routemodel_error-prop:

+--------------------------------------------------------------------------+
|        \ error : enumeration                                             |
+--------------------------------------------------------------------------+

This read-only property holds the latest error value of the routing
request.

-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.NoError - No error has
   occurred
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.EngineNotSetError - The
   plugin/service provider used does not support routing
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.CommunicationError - An
   error occurred while communicating with the service provider
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.ParseError - The response
   from the service provider was in an unrecognizable format
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.UnsupportedOptionError -
   The requested operation or one of the options for the operation are
   not supported by the service provider.
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.UnknownError - An error
   occurred which does not fit into any of the other categories

| 

.. _sdk_qtlocation_routemodel_errorString-prop:

+--------------------------------------------------------------------------+
|        \ errorString : string                                            |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest routing
error. If no error has occurred or the model has been reset, an empty
string is returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

.. _sdk_qtlocation_routemodel_measurementSystem-prop:

+--------------------------------------------------------------------------+
|        \ measurementSystem : Locale::MeasurementSystem                   |
+--------------------------------------------------------------------------+

This property holds the measurement system which will be used when
calculating the route. This property is changed when the
:ref:`Plugin::locales <sdk_qtlocation_plugin#locales-prop>` property of
:ref:`plugin <sdk_qtlocation_routemodel#plugin-prop>` changes.

If setting this property it must be set after the
:ref:`plugin <sdk_qtlocation_routemodel#plugin-prop>` property is set.

| 

.. _sdk_qtlocation_routemodel_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ plugin : `Plugin <sdk_qtlocation_plugin>`                  |
+--------------------------------------------------------------------------+

This property holds the plugin that providers the actual routing
service. Note that all plugins do not necessarily provide routing (could
for example provide only geocoding or maps).

A valid plugin must be set before the
:ref:`RouteModel <sdk_qtlocation_routemodel>` can perform any useful
operations.

**See also**
`Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

| 

.. _sdk_qtlocation_routemodel_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ query : `RouteQuery <sdk_qtlocation_routequery>`           |
+--------------------------------------------------------------------------+

This property holds the data of the route request. The primary data are
the waypoint coordinates and possible further preferences (means of
traveling, things to avoid on route etc).

| 

.. _sdk_qtlocation_routemodel_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This read-only property holds the current status of the model.

-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.Null - No route requests
   have been issued or
   :ref:`reset <sdk_qtlocation_routemodel#reset-method>` has been called.
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.Ready - Route request(s)
   have finished successfully.
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.Loading - Route request
   has been issued but not yet finished
-  :ref:`RouteModel <sdk_qtlocation_routemodel>`.Error - Routing error has
   occurred, details are in
   :ref:`error <sdk_qtlocation_routemodel#error-prop>` and
   :ref:`errorString <sdk_qtlocation_routemodel#errorString-prop>`

| 

Method Documentation
--------------------

.. _sdk_qtlocation_routemodel_cancel-method:

+--------------------------------------------------------------------------+
|        \ cancel()                                                        |
+--------------------------------------------------------------------------+

Cancels any outstanding requests and clears errors. Model status will be
set to either :ref:`RouteModel <sdk_qtlocation_routemodel>`.Null or
:ref:`RouteModel <sdk_qtlocation_routemodel>`.Ready.

| 

.. _sdk_qtlocation_routemodel_get-method:

+--------------------------------------------------------------------------+
|        \ get(int)                                                        |
+--------------------------------------------------------------------------+

Returns the Route at given index. Use
:ref:`count <sdk_qtlocation_routemodel#count-prop>` property to check the
amount of routes available. The routes are indexed from zero, so the
accessible range is 0...(count - 1).

If you access out of bounds, a zero (null object) is returned and a
warning is issued.

| 

.. _sdk_qtlocation_routemodel_reset-method:

+--------------------------------------------------------------------------+
|        \ reset()                                                         |
+--------------------------------------------------------------------------+

Resets the model. All route data is cleared, any outstanding requests
are aborted and possible errors are cleared. Model status will be set to
:ref:`RouteModel <sdk_qtlocation_routemodel>`.Null

| 

.. _sdk_qtlocation_routemodel_update-method:

+--------------------------------------------------------------------------+
|        \ update()                                                        |
+--------------------------------------------------------------------------+

Instructs the :ref:`RouteModel <sdk_qtlocation_routemodel>` to update its
data. This is most useful when
:ref:`autoUpdate <sdk_qtlocation_routemodel#autoUpdate-prop>` is disabled,
to force a refresh when the query has been changed.

| 

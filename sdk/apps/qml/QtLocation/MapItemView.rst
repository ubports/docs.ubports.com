The MapItemView is used to populate Map from a model.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`autoFitViewport </sdk/apps/qml/QtLocation/MapItemView#autoFitViewport-prop>`__****
   : Component
-  ****`delegate </sdk/apps/qml/QtLocation/MapItemView#delegate-prop>`__****
   : Component
-  ****`model </sdk/apps/qml/QtLocation/MapItemView#model-prop>`__**** :
   model

Detailed Description
--------------------

The `MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ is used to
populate Map with MapItems from a model. The
`MapItemView </sdk/apps/qml/QtLocation/MapItemView/>`__ type only makes
sense when contained in a Map, meaning that it has no standalone
presentation.

Example Usage
~~~~~~~~~~~~~

This example demonstrates how to use the MapViewItem object to display a
`route </sdk/apps/qml/QtLocation/Route/>`__ on a
`map </sdk/apps/qml/QtLocation/Map/>`__:

.. code:: qml

    import QtQuick 2.0
    import QtLocation 5.3
    Map {
        RouteModel {
            id: routeModel
        }
        MapItemView {
            model: routeModel
            delegate: routeDelegate
        }
        Component {
            id: routeDelegate
            MapRoute {
                route: routeData
                line.color: "blue"
                line.width: 5
                smooth: true
                opacity: 0.8
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ autoFitViewport : Component                                     |
+--------------------------------------------------------------------------+

This property controls whether to automatically pan and zoom the
viewport to display all map items when items are added or removed.

Defaults to false.

| 

+--------------------------------------------------------------------------+
|        \ delegate : Component                                            |
+--------------------------------------------------------------------------+

This property holds the delegate which defines how each item in the
model should be displayed. The Component must contain exactly one
MapItem -derived object as the root object.

| 

+--------------------------------------------------------------------------+
|        \ model : model                                                   |
+--------------------------------------------------------------------------+

This property holds the model that provides data used for creating the
map items defined by the delegate. Only QAbstractItemModel based models
are supported.

| 

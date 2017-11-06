.. _sdk_qtlocation_mapitemview:

QtLocation MapItemView
======================

The MapItemView is used to populate Map from a model.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`autoFitViewport <sdk_qtlocation_mapitemview_autoFitViewport>` : Component
-  :ref:`delegate <sdk_qtlocation_mapitemview_delegate>` : Component
-  :ref:`model <sdk_qtlocation_mapitemview_model>` : model

Detailed Description
--------------------

The :ref:`MapItemView <sdk_qtlocation_mapitemview>` is used to populate Map with MapItems from a model. The :ref:`MapItemView <sdk_qtlocation_mapitemview>` type only makes sense when contained in a Map, meaning that it has no standalone presentation.

Example Usage
~~~~~~~~~~~~~

This example demonstrates how to use the MapViewItem object to display a :ref:`route <sdk_qtlocation_route>` on a :ref:`map <sdk_qtlocation_map>`:

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

.. _sdk_qtlocation_mapitemview_autoFitViewport:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| autoFitViewport : Component                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property controls whether to automatically pan and zoom the viewport to display all map items when items are added or removed.

Defaults to false.

.. _sdk_qtlocation_mapitemview_delegate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : Component                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the delegate which defines how each item in the model should be displayed. The Component must contain exactly one MapItem -derived object as the root object.

.. _sdk_qtlocation_mapitemview_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : model                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the model that provides data used for creating the map items defined by the delegate. Only QAbstractItemModel based models are supported.


.. _sdk_qtqml_objectmodel:

QtQml ObjectModel
=================

Defines a set of items to be used as a model

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`count <sdk_qtqml_objectmodel_count>` : int

Attached Properties
-------------------

-  :ref:`index <sdk_qtqml_objectmodel_index>` : int

Detailed Description
--------------------

A :ref:`ObjectModel <sdk_qtqml_objectmodel>` contains the visual items to be used in a view. When a :ref:`ObjectModel <sdk_qtqml_objectmodel>` is used in a view, the view does not require a delegate since the :ref:`ObjectModel <sdk_qtqml_objectmodel>` already contains the visual delegate (items).

An item can determine its index within the model via the :ref:`index <sdk_qtqml_objectmodel_index>` attached property.

The example below places three colored rectangles in a ListView.

.. code:: cpp

    import QtQuick 2.0
    import QtQml.Models 2.1
    Rectangle {
        ObjectModel {
            id: itemModel
            Rectangle { height: 30; width: 80; color: "red" }
            Rectangle { height: 30; width: 80; color: "green" }
            Rectangle { height: 30; width: 80; color: "blue" }
        }
        ListView {
            anchors.fill: parent
            model: itemModel
        }
    }

**See also** Qt Quick Examples - Views.

Property Documentation
----------------------

.. _sdk_qtqml_objectmodel_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of items in the model. This property is readonly.

Attached Property Documentation
-------------------------------

.. _sdk_qtqml_objectmodel_index:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ObjectModel.index : int                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the index of this delegate's item within the model.

It is attached to each instance of the delegate.


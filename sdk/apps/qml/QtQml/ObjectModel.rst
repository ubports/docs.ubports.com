Defines a set of items to be used as a model

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/QtQml/ObjectModel#count-prop>`__**** : int

Attached Properties
-------------------

-  ****`index </sdk/apps/qml/QtQml/ObjectModel#index-attached-prop>`__****
   : int

Detailed Description
--------------------

A `ObjectModel </sdk/apps/qml/QtQml/ObjectModel/>`__ contains the visual
items to be used in a view. When a
`ObjectModel </sdk/apps/qml/QtQml/ObjectModel/>`__ is used in a view,
the view does not require a delegate since the
`ObjectModel </sdk/apps/qml/QtQml/ObjectModel/>`__ already contains the
visual delegate (items).

An item can determine its index within the model via the
`index </sdk/apps/qml/QtQml/ObjectModel#index-attached-prop>`__ attached
property.

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

|image0|

**See also** Qt Quick Examples - Views.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

The number of items in the model. This property is readonly.

| 

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ ObjectModel.index : int                                         |
+--------------------------------------------------------------------------+

This attached property holds the index of this delegate's item within
the model.

It is attached to each instance of the delegate.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQml/ObjectModel/images/visualitemmodel.png


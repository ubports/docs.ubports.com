The CategoryModel type provides a model of the categories supported by a
Plugin.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`hierarchical </sdk/apps/qml/QtLocation/CategoryModel#hierarchical-prop>`__****
   : bool
-  ****`plugin </sdk/apps/qml/QtLocation/CategoryModel#plugin-prop>`__****
   : Plugin
-  ****`status </sdk/apps/qml/QtLocation/CategoryModel#status-prop>`__****
   : enumeration

Signals
-------

-  ****`dataChanged </sdk/apps/qml/QtLocation/CategoryModel#dataChanged-signal>`__****\ ()

Methods
-------

-  string
   ****`errorString </sdk/apps/qml/QtLocation/CategoryModel#errorString-method>`__****\ ()

Detailed Description
--------------------

The `CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__ type
provides a model of the categories that are available from the current
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__. The
model supports both a flat list of categories and a hierarchical tree
representing category groupings. This can be controlled by the
`hierarchical </sdk/apps/qml/QtLocation/CategoryModel#hierarchical-prop>`__
property.

The model supports the following roles:

+------------------+---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| Role             | Type                                                                | Description                                                                             |
+==================+=====================================================================+=========================================================================================+
| category         | `Category </sdk/apps/qml/QtLocation/location-cpp-qml#category>`__   | Category object for the current item.                                                   |
+------------------+---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| parentCategory   | `Category </sdk/apps/qml/QtLocation/location-cpp-qml#category>`__   | Parent category object for the current item. If there is no parent, null is returned.   |
+------------------+---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+

The following example displays a flat list of all available categories:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    ListView {
        model: CategoryModel {
            plugin: myPlugin
            hierarchical: false
        }
        delegate: Text { text: category.name }
    }

To access the hierarchical category model it is necessary to use a
DelegateModel to access the child items.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ hierarchical : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether the model provides a hierarchical tree of
categories or a flat list. The default is true.

| 

+--------------------------------------------------------------------------+
|        \ plugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__          |
+--------------------------------------------------------------------------+

This property holds the provider
`Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ used by
this model.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| `CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__.Null      | No category fetch query has been executed. The model is empty.                                         |
+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| `CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__.Ready     | No error occurred during the last operation, further operations may be performed on the model.         |
+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| `CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__.Loading   | The model is being updated, no other operations may be performed until complete.                       |
+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| `CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__.Error     | An error occurred during the last operation, further operations can still be performed on the model.   |
+-----------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ dataChanged()                                                   |
+--------------------------------------------------------------------------+

This signal is emitted when significant changes have been made to the
underlying datastore.

Applications should act on this signal at their own discretion. The data
provided by the model could be out of date and so the model should be
reupdated sometime, however an immediate reupdate may be disconcerting
to users if the categories change without any action on their part.

The corresponding handler is ``onDataChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ string errorString() const                                      |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest
category model error. If no error has occurred, an empty string is
returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

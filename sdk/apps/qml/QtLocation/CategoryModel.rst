.. _sdk_qtlocation_categorymodel:
QtLocation CategoryModel
========================

The CategoryModel type provides a model of the categories supported by a
Plugin.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`hierarchical <sdk_qtlocation_categorymodel_hierarchical-prop>`
   : bool
-  :ref:`plugin <sdk_qtlocation_categorymodel_plugin-prop>` :
   Plugin
-  :ref:`status <sdk_qtlocation_categorymodel_status-prop>` :
   enumeration

Signals
-------

-  :ref:`dataChanged <sdk_qtlocation_categorymodel_dataChanged-signal>`\ ()

Methods
-------

-  string
   **:ref:`errorString <sdk_qtlocation_categorymodel#errorString-method>`**\ ()

Detailed Description
--------------------

The :ref:`CategoryModel <sdk_qtlocation_categorymodel>` type provides a
model of the categories that are available from the current
`Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ . The
model supports both a flat list of categories and a hierarchical tree
representing category groupings. This can be controlled by the
:ref:`hierarchical <sdk_qtlocation_categorymodel#hierarchical-prop>`
property.

The model supports the following roles:

+------------------+----------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| Role             | Type                                                                 | Description                                                                             |
+==================+======================================================================+=========================================================================================+
| category         | `Category </sdk/apps/qml/QtLocation/location-cpp-qml/#category>`_    | Category object for the current item.                                                   |
+------------------+----------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
| parentCategory   | `Category </sdk/apps/qml/QtLocation/location-cpp-qml/#category>`_    | Parent category object for the current item. If there is no parent, null is returned.   |
+------------------+----------------------------------------------------------------------+-----------------------------------------------------------------------------------------+

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

.. _sdk_qtlocation_categorymodel_hierarchical-prop:

+--------------------------------------------------------------------------+
|        \ hierarchical : bool                                             |
+--------------------------------------------------------------------------+

This property holds whether the model provides a hierarchical tree of
categories or a flat list. The default is true.

| 

.. _sdk_qtlocation_categorymodel_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ plugin : `Plugin <sdk_qtlocation_plugin>`                  |
+--------------------------------------------------------------------------+

This property holds the provider
`Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  used
by this model.

| 

.. _sdk_qtlocation_categorymodel_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the status of the model. It can be one of:

.. _sdk_qtlocation_categorymodel_-prop:

+------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
.. _sdk_qtlocation_categorymodel_-prop:
| :ref:`CategoryModel <sdk_qtlocation_categorymodel>`.Null      | No category fetch query has been executed. The model is empty.                                         |
+------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
.. _sdk_qtlocation_categorymodel_-prop:
| :ref:`CategoryModel <sdk_qtlocation_categorymodel>`.Ready     | No error occurred during the last operation, further operations may be performed on the model.         |
+------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
.. _sdk_qtlocation_categorymodel_-prop:
| :ref:`CategoryModel <sdk_qtlocation_categorymodel>`.Loading   | The model is being updated, no other operations may be performed until complete.                       |
+------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| :ref:`CategoryModel <sdk_qtlocation_categorymodel>`.Error     | An error occurred during the last operation, further operations can still be performed on the model.   |
+------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+

| 

Signal Documentation
--------------------

.. _sdk_qtlocation_categorymodel_dataChanged()-prop:

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

.. _sdk_qtlocation_categorymodel_string errorString-method:

+--------------------------------------------------------------------------+
|        \ string errorString() const                                      |
+--------------------------------------------------------------------------+

This read-only property holds the textual presentation of latest
category model error. If no error has occurred, an empty string is
returned.

An empty string may also be returned if an error occurred which has no
associated textual representation.

| 

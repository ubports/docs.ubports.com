.. _sdk_qtlocation_category:

QtLocation Category
===================

The Category type represents a category that a Place can be associated with.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`category <sdk_qtlocation_category_category>` : QPlaceCategory
-  :ref:`categoryId <sdk_qtlocation_category_categoryId>` : string
-  :ref:`icon <sdk_qtlocation_category_icon>` : PlaceIcon
-  :ref:`name <sdk_qtlocation_category_name>` : string
-  :ref:`plugin <sdk_qtlocation_category_plugin>` : Plugin
-  :ref:`status <sdk_qtlocation_category_status>` : enumeration
-  :ref:`visibility <sdk_qtlocation_category_visibility>` : enumeration

Methods
-------

-  string :ref:`errorString <sdk_qtlocation_category_errorString>`\ ()
-  void :ref:`remove <sdk_qtlocation_category_remove>`\ ()
-  void :ref:`save <sdk_qtlocation_category_save>`\ ()

Detailed Description
--------------------

Categories are used to search for places based on the categories they are associated with. The list of available categories can be obtained from the :ref:`CategoryModel <sdk_qtlocation_categorymodel>`. The :ref:`PlaceSearchModel <sdk_qtlocation_placesearchmodel>` has a :ref:`categories <sdk_qtlocation_placesearchmodel_categories>` property that is used to limit the search results to places with the specified categories.

If the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  supports it, categories can be created or removed. To create a new category construct a new Category object and set its properties, then invoke the :ref:`save() <sdk_qtlocation_category_save>` method.

.. code:: qml

    import QtPositioning 5.2
    import QtLocation 5.3
    Category {
        id: category
        plugin: myPlugin
        name: "New Category"
        visibility: Category.PrivateVisibility
    }
    ...
    category.save();

To remove a category ensure that the `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  and :ref:`categoryId <sdk_qtlocation_category_categoryId>` properties are set and call the :ref:`remove() <sdk_qtlocation_category_remove>` method.

**See also** :ref:`CategoryModel <sdk_qtlocation_categorymodel>`.

Property Documentation
----------------------

.. _sdk_qtlocation_category_category:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| category : QPlaceCategory                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

.. _sdk_qtlocation_category_categoryId:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| categoryId : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the identifier of the category. The categoryId is a string which uniquely identifies this category within the categories `plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_ .

.. _sdk_qtlocation_category_icon:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| icon : PlaceIcon                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the image source associated with the category. To display the icon you can use the Image type.

.. _sdk_qtlocation_category_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds string based name of the category.

.. _sdk_qtlocation_category_plugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| plugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the location based service to which the category belongs.

.. _sdk_qtlocation_category_status:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| status : enumeration                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the status of the category. It can be one of:

+---------------------+------------------------------------------------------------------------------------------------------------------------+
| Category.Ready      | No error occurred during the last operation, further operations may be performed on the category.                      |
+---------------------+------------------------------------------------------------------------------------------------------------------------+
| Category.Saving     | The category is currently being saved, no other operations may be performed until the current operation completes.     |
+---------------------+------------------------------------------------------------------------------------------------------------------------+
| Category.Removing   | The category is currently being removed, no other operations can be performed until the current operation completes.   |
+---------------------+------------------------------------------------------------------------------------------------------------------------+
| Category.Error      | An error occurred during the last operation, further operations can still be performed on the category.                |
+---------------------+------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtlocation_category_visibility:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| visibility : enumeration                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the visibility of the category. It can be one of:

+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Category.UnspecifiedVisibility   | The visibility of the category is unspecified. If saving a category, the plugin will automatically set a default visibility to the category saved in the backend. This default is dependent on the plugin implementation.   |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Category.DeviceVisibility        | The category is limited to the current device. The category will not be transferred off of the device.                                                                                                                      |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Category.PrivateVisibility       | The category is private to the current user. The category may be transferred to an online service but is only ever visible to the current user.                                                                             |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Category.PublicVisibility        | The category is public.                                                                                                                                                                                                     |
+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Note that visibility does not affect how `Place </sdk/apps/qml/QtLocation/location-cpp-qml/#place>`_ \ s associated with the category are displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the category.

Method Documentation
--------------------

.. _sdk_qtlocation_category_errorString:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| string errorString()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a string description of the error of the last operation. If the last operation completed successfully then the string is empty.

.. _sdk_qtlocation_category_remove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void remove()                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method permanently removes the category from the backend service.

.. _sdk_qtlocation_category_save:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void save()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This method saves the category to the backend service.


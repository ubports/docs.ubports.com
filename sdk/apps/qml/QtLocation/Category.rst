The Category type represents a category that a Place can be associated
with.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  ****`category </sdk/apps/qml/QtLocation/Category#category-prop>`__****
   : QPlaceCategory
-  ****`categoryId </sdk/apps/qml/QtLocation/Category#categoryId-prop>`__****
   : string
-  ****`icon </sdk/apps/qml/QtLocation/Category#icon-prop>`__**** :
   PlaceIcon
-  ****`name </sdk/apps/qml/QtLocation/Category#name-prop>`__**** :
   string
-  ****`plugin </sdk/apps/qml/QtLocation/Category#plugin-prop>`__**** :
   Plugin
-  ****`status </sdk/apps/qml/QtLocation/Category#status-prop>`__**** :
   enumeration
-  ****`visibility </sdk/apps/qml/QtLocation/Category#visibility-prop>`__****
   : enumeration

Methods
-------

-  string
   ****`errorString </sdk/apps/qml/QtLocation/Category#errorString-method>`__****\ ()
-  void
   ****`remove </sdk/apps/qml/QtLocation/Category#remove-method>`__****\ ()
-  void
   ****`save </sdk/apps/qml/QtLocation/Category#save-method>`__****\ ()

Detailed Description
--------------------

Categories are used to search for places based on the categories they
are associated with. The list of available categories can be obtained
from the `CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__.
The `PlaceSearchModel </sdk/apps/qml/QtLocation/PlaceSearchModel/>`__
has a
`categories </sdk/apps/qml/QtLocation/PlaceSearchModel#categories-prop>`__
property that is used to limit the search results to places with the
specified categories.

If the `Plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__
supports it, categories can be created or removed. To create a new
category construct a new Category object and set its properties, then
invoke the `save() </sdk/apps/qml/QtLocation/Category#save-method>`__
method.

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

To remove a category ensure that the
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__ and
`categoryId </sdk/apps/qml/QtLocation/Category#categoryId-prop>`__
properties are set and call the
`remove() </sdk/apps/qml/QtLocation/Category#remove-method>`__ method.

**See also**
`CategoryModel </sdk/apps/qml/QtLocation/CategoryModel/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ category : QPlaceCategory                                       |
+--------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

| 

+--------------------------------------------------------------------------+
|        \ categoryId : string                                             |
+--------------------------------------------------------------------------+

This property holds the identifier of the category. The categoryId is a
string which uniquely identifies this category within the categories
`plugin </sdk/apps/qml/QtLocation/location-places-qml#plugin>`__.

| 

+--------------------------------------------------------------------------+
|        \ icon : PlaceIcon                                                |
+--------------------------------------------------------------------------+

This property holds the image source associated with the category. To
display the icon you can use the Image type.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds string based name of the category.

| 

+--------------------------------------------------------------------------+
|        \ plugin : `Plugin </sdk/apps/qml/QtLocation/Plugin/>`__          |
+--------------------------------------------------------------------------+

This property holds the location based service to which the category
belongs.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

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

| 

+--------------------------------------------------------------------------+
|        \ visibility : enumeration                                        |
+--------------------------------------------------------------------------+

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

Note that visibility does not affect how
`Place </sdk/apps/qml/QtLocation/location-cpp-qml#place>`__\ s
associated with the category are displayed in the user-interface of an
application on the device. Instead, it defines the sharing semantics of
the category.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ string errorString()                                            |
+--------------------------------------------------------------------------+

Returns a string description of the error of the last operation. If the
last operation completed successfully then the string is empty.

| 

+--------------------------------------------------------------------------+
|        \ void remove()                                                   |
+--------------------------------------------------------------------------+

This method permanently removes the category from the backend service.

| 

+--------------------------------------------------------------------------+
|        \ void save()                                                     |
+--------------------------------------------------------------------------+

This method saves the category to the backend service.

| 

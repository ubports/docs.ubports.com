The Collection element represents a collection of items in an organizer
manager.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  ****`collectionId </sdk/apps/qml/QtOrganizer/Collection#collectionId-prop>`__****
   : string
-  ****`color </sdk/apps/qml/QtOrganizer/Collection#color-prop>`__**** :
   color
-  ****`description </sdk/apps/qml/QtOrganizer/Collection#description-prop>`__****
   : string
-  ****`image </sdk/apps/qml/QtOrganizer/Collection#image-prop>`__**** :
   url
-  ****`name </sdk/apps/qml/QtOrganizer/Collection#name-prop>`__**** :
   string
-  ****`secondaryColor </sdk/apps/qml/QtOrganizer/Collection#secondaryColor-prop>`__****
   : color

Methods
-------

-  var
   ****`extendedMetaData </sdk/apps/qml/QtOrganizer/Collection#extendedMetaData-method>`__****\ (key)
-  var
   ****`metaData </sdk/apps/qml/QtOrganizer/Collection#metaData-method>`__****\ (key)
-  ****`setExtendedMetaData </sdk/apps/qml/QtOrganizer/Collection#setExtendedMetaData-method>`__****\ (key,
   value)
-  ****`setMetaData </sdk/apps/qml/QtOrganizer/Collection#setMetaData-method>`__****\ (key,
   value)

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ collectionId : string                                           |
+--------------------------------------------------------------------------+

This property holds the ID of the collection.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

This property holds the color meta data of a collection.

| 

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property holds the description meta data of a collection.

| 

+--------------------------------------------------------------------------+
|        \ image : url                                                     |
+--------------------------------------------------------------------------+

This property holds the image url meta data of a collection.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name meta data of a collection.

| 

+--------------------------------------------------------------------------+
|        \ secondaryColor : color                                          |
+--------------------------------------------------------------------------+

This property holds the secondary color meta data of a collection.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ var extendedMetaData(key)                                       |
+--------------------------------------------------------------------------+

Returns the value of extended metadata with the given *key*.

| 

+--------------------------------------------------------------------------+
|        \ var metaData(key)                                               |
+--------------------------------------------------------------------------+

Returns the meta data stored in this collection for the given *key*.
Possible keys include:

-  Collection.KeyName
-  Collection.KeyDescription
-  Collection.KeyColor
-  Collection.KeyImage
-  Collection.KeyExtended

| 

+--------------------------------------------------------------------------+
|        \ setExtendedMetaData(key, value)                                 |
+--------------------------------------------------------------------------+

Sets the value of the extended metadata with the given *key* to *value*.

| 

+--------------------------------------------------------------------------+
|        \ setMetaData(key, value)                                         |
+--------------------------------------------------------------------------+

Sets the meta data of the collection for the given *key* to the given
*value*. Possible keys include:

-  Collection.KeyName
-  Collection.KeyDescription
-  Collection.KeyColor
-  Collection.KeySecondaryColor
-  Collection.KeyImage
-  Collection.KeyExtended

| 

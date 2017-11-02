.. _sdk_qtorganizer_collection:
QtOrganizer Collection
======================

The Collection element represents a collection of items in an organizer
manager.

+---------------------+--------------------------+
| Import Statement:   | import QtOrganizer 5.0   |
+---------------------+--------------------------+

Properties
----------

-  :ref:`collectionId <sdk_qtorganizer_collection_collectionId-prop>`
   : string
-  :ref:`color <sdk_qtorganizer_collection_color-prop>` : color
-  :ref:`description <sdk_qtorganizer_collection_description-prop>`
   : string
-  :ref:`image <sdk_qtorganizer_collection_image-prop>` : url
-  :ref:`name <sdk_qtorganizer_collection_name-prop>` : string
-  :ref:`secondaryColor <sdk_qtorganizer_collection_secondaryColor-prop>`
   : color

Methods
-------

-  var
   **:ref:`extendedMetaData <sdk_qtorganizer_collection#extendedMetaData-method>`**\ (key)
-  var
   **:ref:`metaData <sdk_qtorganizer_collection#metaData-method>`**\ (key)
-  :ref:`setExtendedMetaData <sdk_qtorganizer_collection_setExtendedMetaData-method>`\ (key,
   value)
-  :ref:`setMetaData <sdk_qtorganizer_collection_setMetaData-method>`\ (key,
   value)

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_qtorganizer_collection_collectionId-prop:

+--------------------------------------------------------------------------+
|        \ collectionId : string                                           |
+--------------------------------------------------------------------------+

This property holds the ID of the collection.

| 

.. _sdk_qtorganizer_collection_color-prop:

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

This property holds the color meta data of a collection.

| 

.. _sdk_qtorganizer_collection_description-prop:

+--------------------------------------------------------------------------+
|        \ description : string                                            |
+--------------------------------------------------------------------------+

This property holds the description meta data of a collection.

| 

.. _sdk_qtorganizer_collection_image-prop:

+--------------------------------------------------------------------------+
|        \ image : url                                                     |
+--------------------------------------------------------------------------+

This property holds the image url meta data of a collection.

| 

.. _sdk_qtorganizer_collection_name-prop:

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name meta data of a collection.

| 

.. _sdk_qtorganizer_collection_secondaryColor-prop:

+--------------------------------------------------------------------------+
|        \ secondaryColor : color                                          |
+--------------------------------------------------------------------------+

This property holds the secondary color meta data of a collection.

| 

Method Documentation
--------------------

.. _sdk_qtorganizer_collection_var extendedMetaData-method:

+--------------------------------------------------------------------------+
|        \ var extendedMetaData(key)                                       |
+--------------------------------------------------------------------------+

Returns the value of extended metadata with the given *key*.

| 

.. _sdk_qtorganizer_collection_var metaData-method:

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

.. _sdk_qtorganizer_collection_setExtendedMetaData-method:

+--------------------------------------------------------------------------+
|        \ setExtendedMetaData(key, value)                                 |
+--------------------------------------------------------------------------+

Sets the value of the extended metadata with the given *key* to *value*.

| 

.. _sdk_qtorganizer_collection_setMetaData-method:

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

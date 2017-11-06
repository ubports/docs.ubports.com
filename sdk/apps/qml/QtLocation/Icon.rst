.. _sdk_qtlocation_icon:

QtLocation Icon
===============

The Icon type represents an icon image source which can have multiple sizes.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`icon <sdk_qtlocation_icon_icon>` : QPlaceIcon
-  :ref:`parameters <sdk_qtlocation_icon_parameters>` : Object
-  :ref:`plugin <sdk_qtlocation_icon_plugin>` : Plugin

Methods
-------

-  url :ref:`url <sdk_qtlocation_icon_url>`\ (size *size*)

Detailed Description
--------------------

The Icon type can be used in conjunction with an Image type to display an icon. The :ref:`url() <sdk_qtlocation_icon_url>` function is used to construct an icon URL of a requested size, the icon which most closely matches the requested size is returned.

The Icon type also has a parameters map which is a set of key value pairs. The precise keys to use depend on the `plugin </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_  being used. The parameters map is used by the `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  to determine which URL to return.

In the case where an icon can only possibly have one image URL, the parameter key of ``"singleUrl"`` can be used with a QUrl value. Any Icon with this parameter will always return the specified URL regardless of the requested icon size and not defer to any Plugin.

The following code shows how to display a 64x64 pixel icon:

.. code:: qml

    import QtQuick 2.0
    import QtPositioning 5.2
    import QtLocation 5.3
    Image {
        source: icon.url(Qt.size(64, 64))
    }

Alternatively, a default sized icon can be specified like so:

.. code:: qml

        source: icon.url()

Property Documentation
----------------------

.. _sdk_qtlocation_icon_icon:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| icon : QPlaceIcon                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

.. _sdk_qtlocation_icon_parameters:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| parameters : Object                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the parameters of the icon and is a map. These parameters are used by the plugin to return the appropriate URL when :ref:`url() <sdk_qtlocation_icon_url>` is called and to specify locations to save to when saving icons.

Consult the `plugin documentation </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_  for what parameters are supported and how they should be used.

Note, due to limitations of the QQmlPropertyMap, it is not possible to declaratively specify the parameters in QML, assignment of parameters keys and values can only be accomplished by JavaScript.

.. _sdk_qtlocation_icon_plugin:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| plugin : :ref:`Plugin <sdk_qtlocation_plugin>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the plugin that is responsible for managing this icon.

Method Documentation
--------------------

.. _sdk_qtlocation_icon_:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`url <sdk_qtlocation_icon_url>` url(size *size*)                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a URL for the icon image that most closely matches the given *size*.

If no plugin has been assigned to the icon, and the parameters do not contain the 'singleUrl' key, a default constructed URL is returned.


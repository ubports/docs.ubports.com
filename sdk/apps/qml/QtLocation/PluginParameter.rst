.. _sdk_qtlocation_pluginparameter:

QtLocation PluginParameter
==========================

The PluginParameter type describes a parameter to a Plugin.

+---------------------+-------------------------+
| Import Statement:   | import QtLocation 5.3   |
+---------------------+-------------------------+
| Since:              | Qt Location 5.0         |
+---------------------+-------------------------+

Properties
----------

-  :ref:`name <sdk_qtlocation_pluginparameter_name>` : string
-  :ref:`value <sdk_qtlocation_pluginparameter_value>` : QVariant

Detailed Description
--------------------

The :ref:`PluginParameter <sdk_qtlocation_pluginparameter>` object is used to provide a parameter of some kind to a Plugin. Typically these parameters contain details like an application token for access to a service, or a proxy server to use for network access.

To set such a parameter, declare a :ref:`PluginParameter <sdk_qtlocation_pluginparameter>` inside a `Plugin </sdk/apps/qml/QtLocation/location-places-qml/#plugin>`_  object, and give it :ref:`name <sdk_qtlocation_pluginparameter_name>` and :ref:`value <sdk_qtlocation_pluginparameter_value>` properties. A list of valid parameter names for each plugin is available from the `plugin reference pages </sdk/apps/qml/QtLocation/qtlocation-index/#plugin-references-and-parameters>`_ .

Example Usage
~~~~~~~~~~~~~

The following example shows an instantiation of the `Nokia </sdk/apps/qml/QtLocation/location-plugin-nokia/>`_  plugin with a mapping API *app\_id* and *token* pair specific to the application.

.. code:: cpp

    Plugin {
        name: "nokia"
        PluginParameter { name: "app_id"; value: "EXAMPLE_API_ID" }
        PluginParameter { name: "token"; value: "EXAMPLE_TOKEN_123" }
    }

Property Documentation
----------------------

.. _sdk_qtlocation_pluginparameter_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the plugin parameter as a single formatted string.

.. _sdk_qtlocation_pluginparameter_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| value : QVariant                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value of the plugin parameter which support different types of values (variant).


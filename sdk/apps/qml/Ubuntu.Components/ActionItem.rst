.. _sdk_ubuntu_components_actionitem:

Ubuntu.Components ActionItem
============================

A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`AbstractButton <sdk_ubuntu_components_abstractbutton>`, :ref:`BottomEdgeHint <sdk_ubuntu_components_bottomedgehint>`, and                              |
|                                                                                                                                                        | `ToolbarButton </sdk/apps/qml/Ubuntu.Components/ToolbarButton/>`_ .                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`action <sdk_ubuntu_components_actionitem_action>` : Action
-  :ref:`iconName <sdk_ubuntu_components_actionitem_iconName>` : string
-  :ref:`iconSource <sdk_ubuntu_components_actionitem_iconSource>` : url
-  :ref:`text <sdk_ubuntu_components_actionitem_text>` : string

Signals
-------

-  :ref:`triggered <sdk_ubuntu_components_actionitem_triggered>`\ (var *value*)

Methods
-------

-  void :ref:`trigger <sdk_ubuntu_components_actionitem_trigger>`\ (var *value*)

Detailed Description
--------------------

If :ref:`action <sdk_ubuntu_components_actionitem_action>` is set, the values of the other properties will by default be identical to the :ref:`Action <sdk_ubuntu_components_action>`'s property values. Setting the other properties will override the properties copied from the :ref:`Action <sdk_ubuntu_components_action>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_actionitem_action:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| action : :ref:`Action <sdk_ubuntu_components_action>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`Action <sdk_ubuntu_components_action>` associated with this :ref:`ActionItem <sdk_ubuntu_components_actionitem>`. If action is set, the values of the :ref:`Action <sdk_ubuntu_components_action>` properties are copied to the values of the :ref:`ActionItem <sdk_ubuntu_components_actionitem>` properties, unless those were previously overridden.

.. _sdk_ubuntu_components_actionitem_iconName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconName : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The icon associated with the actionItem in the suru icon theme. Defaults to ``action.iconName``.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-  Ubuntu Touch: /usr/share/icons/suru
-  Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

If both :ref:`iconSource <sdk_ubuntu_components_actionitem_iconSource>` and iconName are defined, iconName will be ignored.

.. _sdk_ubuntu_components_actionitem_iconSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconSource : `url <http://doc.qt.io/qt-5/qml-url.html>`_                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The image associated with the :ref:`ActionItem <sdk_ubuntu_components_actionitem>`. Defaults to ``action.iconSource``.

This is the URL of any image file. If both iconSource and :ref:`iconName <sdk_ubuntu_components_actionitem_iconName>` are defined, :ref:`iconName <sdk_ubuntu_components_actionitem_iconName>` will be ignored.

.. _sdk_ubuntu_components_actionitem_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The title of the actionItem. Defaults to the ``action.text``.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_actionitem_triggered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| triggered(`var <http://doc.qt.io/qt-5/qml-var.html>`_  *value*)                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Called when the actionItem is triggered.

Method Documentation
--------------------

.. _sdk_ubuntu_components_actionitem_trigger:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void trigger(`var <http://doc.qt.io/qt-5/qml-var.html>`_  *value*)                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Trigger this action item if it is enabled.


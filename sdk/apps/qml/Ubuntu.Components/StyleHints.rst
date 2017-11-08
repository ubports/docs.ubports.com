.. _sdk_ubuntu_components_stylehints:

Ubuntu.Components StyleHints
============================

Component holding style specific properties to configure a particular StyledItem's style runtime.

+---------------------+-------------------------+
| Import Statement:   | import .                |
+---------------------+-------------------------+
| Since:              | Ubuntu.Components 1.3   |
+---------------------+-------------------------+

Properties
----------

-  :ref:`ignoreUnknownProperties <sdk_ubuntu_components_stylehints_ignoreUnknownProperties>` : bool

Detailed Description
--------------------

:ref:`StyleHints <sdk_ubuntu_components_stylehints>` is a custom parser, meaning style properties can be listed without any property declaration, same way as in :ref:`PropertyChanges <sdk_qtquick_propertychanges>` or Connections, which are similar custom parsers. Properties enumerated do not have to be present in the component's style as default, behavior which can be chenged by setting :ref:`ignoreUnknownProperties <sdk_ubuntu_components_stylehints_ignoreUnknownProperties>` to true. In this case properties not found in the style will be displayed as warnings.

In the following example the Button will be drawn as white when not pressed, and colored as blue when pressed.

.. code:: qml

    Button {
        id: button
        StyleHints {
            defaultColor: button.pressed ? "blue" : "white"
        }
    }

:ref:`StyleHints <sdk_ubuntu_components_stylehints>` does not support signal properties (i.e signal handlers) and object declarations as property values.

:ref:`StyleHints <sdk_ubuntu_components_stylehints>` can be only declared in a :ref:`StyledItem <sdk_ubuntu_components_styleditem>` or as a derivate of it.

Property Documentation
----------------------

.. _sdk_ubuntu_components_stylehints_ignoreUnknownProperties:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ignoreUnknownProperties : bool                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property drives whether component should warn on properties not found in the component's style. The default setting is not to warn.


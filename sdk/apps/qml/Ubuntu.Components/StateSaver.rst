.. _sdk_ubuntu_components_statesaver:

Ubuntu.Components StateSaver
============================

Attached properties to save component property states.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`enabled <sdk_ubuntu_components_statesaver_enabled>` : bool
-  :ref:`properties <sdk_ubuntu_components_statesaver_properties>` : string

Detailed Description
--------------------

:ref:`StateSaver <sdk_ubuntu_components_statesaver>` attached object provides the ability to save component property values that can be restored after an inproper application close. The properties subject of serialization must be given in the :ref:`properties <sdk_ubuntu_components_statesaver_properties>` as a string, separated with commas. The serialization will happen automatically on component's completion time, as well as when the application is deactivated. Automatic serialization of a component can be turned off by simply setting false to :ref:`enabled <sdk_ubuntu_components_statesaver_enabled>` property.

**Note:** The application name must be set correctly to the package name so that state saving can work (e.g. com.ubuntu.calendar) through :ref:`MainView <sdk_ubuntu_components_mainview>`'s applicationName property.

States saved are discarded when the application is closed properly. The state loading is ignored (but not discarded) when the application is launched through :ref:`UriHandler <sdk_ubuntu_components_urihandler>`.

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    TextField {
        id: input
        StateSaver.properties: "text"
        StateSaver.enabled: input.enabled
    }

In this example the state saver is synchronized with the attachee's one.

Group properties can also be serialized by specifying the path to their individual properties.

.. code:: qml

    Rectangle {
        id: rect
        color: "gray"
        border {
            color: "blue"
            width: units.gu(1)
        }
        StateSaver.properties: "color, border.color, border.width"
    }

:ref:`StateSaver <sdk_ubuntu_components_statesaver>` computes a unique identifier for the attachee using the component's and all its parents' *id*. Therefore attachee component as well as all its parents must have a valid ID set.

The following example will give error for the *input*, as the root component has no id specified:

.. code:: qml

    Item {
        //[...]
        Item {
            id: parent
            //[...]
            TextField {
                id: input
                StateSaver.properties: "text"
            }
        }
    }

but the following example will successfully save the text field content

.. code:: qml

    Item {
        id: root
        //[...]
        Item {
            id: parent
            //[...]
            TextField {
                id: input
                StateSaver.properties: "text"
            }
        }
    }

When used with Repeater, each created item from the Repeater's delegate will be saved separately. Note that due to the way Repeater works, Repeaters do not need to have id specified.

.. code:: qml

    Item {
        id: root
        // [...]
        Repeater {
            model: 10
            Rectangle {
                id: rect
                width: 50; height: 50
                StateSaver.properties: "width, height"
            }
        }
        // [...]
    }

It can be used in the same way in :ref:`ListView <sdk_qtquick_listview>` or `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_ , except that both :ref:`ListView <sdk_qtquick_listview>` and `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_  must have an id set.

The :ref:`StateSaver <sdk_ubuntu_components_statesaver>` can save all `QML base types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_ , Objects, list of objects or variants containing any of these cannot be saved.

Property Documentation
----------------------

.. _sdk_ubuntu_components_statesaver_enabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| enabled : bool                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property drives the automatic state saving. When disabled, state saving will not happen on properties.

The default value is true.

.. _sdk_ubuntu_components_statesaver_properties:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| properties : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of properties to be serialized, separated with commas. Properties must be writable and can only be `QML base types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_ .

A custom single line input which saves the text, placeholderText, font and color would look as follows:

.. code:: qml

    TextField {
        id: input
        StateSaver.properties: "text, placeholderText, font, color"
    }


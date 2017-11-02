.. _sdk_ubuntuuserinterfacetoolkit_saving_multiple_properties:
UbuntuUserInterfaceToolkit Saving multiple properties
=====================================================



.. rubric:: Specifying more properties
   :name: specifying-more-properties

So far we have saved one single property, but as the
{:ref:`StateSaver::properties <sdk_ubuntu_components_statesaver#properties-prop>`}
property name suggests, there can be more properties serialized at the
same time. For example, to serialize both color and opacity of a
Rectangle, the code would look as follows:

.. code:: qml

    Rectangle {
        id: rectangle
        color: "green"
        opacity: 0.9
        StateSaver.properties: "color, opacity"
    }

**Note** that not all types of properties can be saved. Object types or
list models for example are excluded from the types that can be saved,
but all properties listed as `QML base
types </sdk/apps/qml/QtQml/qtqml-typesystem-basictypes/>`_  can be
serialized.

.. rubric:: Grouped properties
   :name: grouped-properties

Grouped properties, which have serializable types can also be saved. It
simply needs to be specified together with the group identifier.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Rectangle {
        id: root
        width: units.gu(40)
        height: units.gu(71)
        color: "green"
        StateSaver.properties: "color, border.color, border.width"
        Button {
            text: "Change"
            anchors.centerIn: parent
            onClicked: {
                root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
                root.border.width = units.gu(2) * Math.random(1)
                root.border.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
            }
        }
    }

.. rubric:: Property groups
   :name: property-groups

Using the same logic, custom property groups can also be saved.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Rectangle {
        id: root
        width: units.gu(40)
        height: units.gu(71)
        color: "green"
        StateSaver.properties: "border.color, border.width, innerRect.color"
        property Rectangle innerRect: Rectangle {
            width: units.gu(20)
            height: units.gu(40)
            parent: root
            z: 0
            anchors.centerIn: root
        }
        Button {
            text: "Change"
            anchors.centerIn: parent
            z: 1
            onClicked: {
                root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
                root.border.width = units.gu(2) * Math.random(1)
                root.border.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
                innerRect.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
            }
        }
    }

Alternatively, individual properties of the property group can be saved
in the following way:

.. code:: qml

    property Rectangle innerRect: Rectangle {
        id: inner
        width: units.gu(20)
        height: units.gu(40)
        parent: root
        z: 0
        anchors.centerIn: root
        StateSaver.properties: "color"
    }

`Recap on state
saving </sdk/apps/qml/UbuntuUserInterfaceToolkit/statesaving3/>`_ 

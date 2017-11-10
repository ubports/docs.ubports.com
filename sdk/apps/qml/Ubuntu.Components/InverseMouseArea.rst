.. _sdk_ubuntu_components_inversemousearea:

Ubuntu.Components InverseMouseArea
==================================

The InverseMouseArea captures mouse events happening outside of a given area.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`sensingArea <sdk_ubuntu_components_inversemousearea_sensingArea>` : Item
-  :ref:`topmostItem <sdk_ubuntu_components_inversemousearea_topmostItem>` : bool

Detailed Description
--------------------

A typical use case is hiding of a popup or tooltip when the user presses or taps outside of the popup or tooltip area. The following example illustrates the use of :ref:`InverseMouseArea <sdk_ubuntu_components_inversemousearea>` in a Popup.

Popup.qml

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Rectangle {
        anchors.centerIn: parent
        width: 200; height: 200
        color: "darkgray"
        radius: 10
        InverseMouseArea {
           anchors.fill: parent
           acceptedButtons: Qt.LeftButton
           onPressed: parent.destroy()
        }
    }

In the Popup above the mouse presses happening outside the area will cause closing and destroying the popup.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Item {
        width: 640
        height: 480
        Button {
            id: button
            text: "Press me"
            onClicked: {
                var component = Qt.createComponent("Popup.qml");
                var obj = component.create(parent);
                obj.visible = true;
            }
        }
    }

By default the :ref:`InverseMouseArea <sdk_ubuntu_components_inversemousearea>` sensing area (the area from which the mouse clicks will be taken) is the application's root component, or the Window in which the topmost parent component of the mouse area resides. This area can be however altered to a different area by setting the :ref:`sensingArea <sdk_ubuntu_components_inversemousearea_sensingArea>` property to a component which is either a parent of the mouse area or a sibling of it.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    Item {
        width: units.gu(40)
        height: units.gu(71)
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("clicked on the root component")
        }
        Rectangle {
            id: blueRect
            width: units.gu(30)
            height: units.gu(51)
            anchors.centerIn: parent
            color: "blue"
            Rectangle {
                width: units.gu(20)
                height: units.gu(20)
                anchors.centerIn: parent
                color: "red"
                InverseMouseArea {
                    anchors.fill: parent
                    sensingArea: blueRect
                    onClicked: console.log("clicked on the blue rect")
                }
            }
        }
    }

In this example the inverse mouse area will get mouse presses only when those happen on the blue rectangle area. When clicked outside of the blue rectangle or inside the red rectangle, the mouse area covering the root item will get click signals.

:ref:`InverseMouseArea <sdk_ubuntu_components_inversemousearea>`, being derived from :ref:`MouseArea <sdk_qtquick_mousearea>` respects the stacking and z-order of the components. This should be taken into account when combining it with MouseAreas within the same level of the component hierarchy or when combined with :ref:`MouseArea <sdk_qtquick_mousearea>` siblings. In these cases it is recommended to have the :ref:`InverseMouseArea <sdk_ubuntu_components_inversemousearea>` declared as last component, having it in this way as last one oin the component stack.

.. code:: qml

     Item {
        id: page
        width: units.gu(40)
        height: units.gu(71)
        Rectangle {
            id: label
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: parent.top
            }
            height: units.gu(5)
            width: parent.width
            color: "red"
            MouseArea {
                anchors.fill: parent
                z: 1
                onPressed: console.log("red band")
            }
        }
        Rectangle {
            anchors {
                top: label.bottom
                topMargin: units.gu(2)
                horizontalCenter: parent.horizontalCenter
            }
            height: units.gu(10)
            width: parent.width
            color: "green"
            Button {
                id: button
                anchors.centerIn: parent
                text: "I'm a button, I do nothing."
            }
            MouseArea {
                anchors.fill: parent
                onPressed: console.log("green band")
            }
            InverseMouseArea {
                anchors.fill: button
                onPressed: console.log("all over except button")
            }
        }
    }

When this is not enough, and you want to grab all the mouse events that have been sent to the :ref:`sensingArea <sdk_ubuntu_components_inversemousearea_sensingArea>`, you can use :ref:`topmostItem <sdk_ubuntu_components_inversemousearea_topmostItem>` to place the mouse area above all the components that were instantiated under the sensing area. Beware that setting this property will no longer consider neither the z-order nor the component stack order anymore, as it will steal all the mouse events from the component set as :ref:`sensingArea <sdk_ubuntu_components_inversemousearea_sensingArea>`.

.. code:: qml

    Item {
        width: units.gu(40)
        height: units.gu(71)
        Rectangle {
            id: firstRect
            anchors {
                left: parent.left
                top: parent.top
                leftMargin: units.gu(10)
                topMargin: units.gu(10)
            }
            width: units.gu(15)
            height: width
            color: "blue"
            InverseMouseArea {
                anchors.fill: parent
                objectName: "IMA"
                topmostItem: true
                onPressed: print("IMA")
            }
        }
        Rectangle {
            anchors {
                left: firstRect.right
                top: firstRect.bottom
            }
            width: units.gu(10)
            height: width
            color: "red"
            MouseArea {
                anchors.fill: parent
                objectName: "MA"
                onPressed: print("MA")
            }
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_inversemousearea_sensingArea:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sensingArea : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the sensing area of the inverse mouse area. By default it is the root item but it can be set to any other area. The area can be reset to the root item by setting null to the property.

.. _sdk_ubuntu_components_inversemousearea_topmostItem:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| topmostItem : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies whether the :ref:`InverseMouseArea <sdk_ubuntu_components_inversemousearea>` should be above all components taking all mouse, wheel and hover events from the application's or from the area specified by the :ref:`sensingArea <sdk_ubuntu_components_inversemousearea_sensingArea>` (true), or only from the siblings (false). The default value is false.


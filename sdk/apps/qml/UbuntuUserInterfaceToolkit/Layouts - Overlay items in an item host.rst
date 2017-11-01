

There is one more thing you can do with
`ItemLayout </sdk/apps/qml/Ubuntu.Layouts/ItemLayout/>`__ container,
which is to define overlay items for certain hosted items on certain
layouts. If an `ItemLayout </sdk/apps/qml/Ubuntu.Layouts/ItemLayout/>`__
has child elements defined, the hosted item will be stacked as topmost
element, so all the child elements declared in
`ItemLayout </sdk/apps/qml/Ubuntu.Layouts/ItemLayout/>`__ will be
rendered as overlay on top of the hosted item.

|image0|

.. code:: qml

    ConditionalLayout {
        name: "row"
        when: layouts.width > units.gu(50)
        Row {
            anchors.fill: parent
            ItemLayout {
                item: "red"
                width: parent.width / 2
                height: units.gu(20)
                Rectangle {
                    anchors{
                        left: parent.left
                        right: parent.right
                        bottom: parent.bottom
                        margins: units.dp(3)
                    }
                    radius: units.dp(1)
                    height: units.gu(8)
                    color: "#bbbbbb88"
                    Label {
                        anchors.centerIn: parent
                        text: "Overlay item"
                    }
                }
            }
            ItemLayout {
                item: "green"
                width: parent.width / 2
                height: units.gu(20)
            }
        }
    }

`Layouts - Defining more layouts for different form
factors </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts7/>`__

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts6/images/layout7.png


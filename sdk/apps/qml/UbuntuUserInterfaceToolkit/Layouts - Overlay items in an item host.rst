.. _sdk_ubuntuuserinterfacetoolkit_layouts_-_overlay_items_in_an_item_host:
UbuntuUserInterfaceToolkit Layouts - Overlay items in an item host
==================================================================



There is one more thing you can do with
:ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` container, which is to
define overlay items for certain hosted items on certain layouts. If an
:ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` has child elements
defined, the hosted item will be stacked as topmost element, so all the
child elements declared in
:ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` will be rendered as
overlay on top of the hosted item.

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
factors </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts7/>`_ 

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts6/images/layout7.png


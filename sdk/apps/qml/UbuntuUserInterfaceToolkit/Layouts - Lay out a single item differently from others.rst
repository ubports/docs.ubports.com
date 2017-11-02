.. _sdk_ubuntuuserinterfacetoolkit_layouts_-_lay_out_a_single_item_differently_from_others:
UbuntuUserInterfaceToolkit Layouts - Lay out a single item differently from others
==================================================================================



As mentioned, :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` has control
over the size, anchors and visibility of the hosted element. Therefore
we can have the blue button with a different size than the other two.
Let's have the blue button's width set to 10 GUs and its height to 10
GUs less than the positioner's height.

The code will look as follows:

.. code:: qml

    ConditionalLayout {
        name: "row"
        when: layouts.width > units.gu(50)
        Row {
            anchors.fill: parent
            ItemLayout {
                item: "blue"
                width: units.gu(10)
                height: parent.height - units.gu(10)
            }
            ItemLayout {
                item: "red"
                width: parent.width / 3
                anchors {
                    top: parent.top
                    bottom: parent.bottom
                }
            }
            ItemLayout {
                item: "green"
                width: parent.width / 3
                anchors {
                    top: parent.top
                    bottom: parent.bottom
                }
            }
        }
    }

|image0|

`Layouts - Hiding elements, showing
more </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts5/>`_ 

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts4/images/layout3.png


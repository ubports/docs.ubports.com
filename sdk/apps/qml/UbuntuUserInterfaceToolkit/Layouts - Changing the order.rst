

So far we have seen how to define the default layout, a conditional
layout and how to place items into those.

As mentioned in the
`ConditionalLayout </sdk/apps/qml/Ubuntu.Layouts/ConditionalLayout/>`__
documentation, items hosted by the container are laid out based on the
order they are hosted by the
`ItemLayout </sdk/apps/qml/Ubuntu.Layouts/ItemLayout/>`__.

So let's change the order the buttons are laid out so that we have blue,
red and green order.

.. code:: qml

    ConditionalLayout {
        name: "row"
        when: layouts.width > units.gu(50)
        Row {
            anchors.fill: parent
            ItemLayout {
                item: "blue"
                width: parent.width / 3
                anchors {
                    top: parent.top
                    bottom: parent.bottom
                }
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

The layout after resizing the window width to exceed 50 GU will look as
follows:

|image0|

Note that when resizing the window width to < 50 GU, you will get all
your components back to their original (default) positions and anchors.

`Layouts - Lay out a single item differently from
others </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts4/>`__

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts3/images/layout2.png


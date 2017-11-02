.. _sdk_ubuntuuserinterfacetoolkit_layouts_-_the_first_conditional_layout:
UbuntuUserInterfaceToolkit Layouts - The first conditional layout
=================================================================



As first let's create the following default layout, with anchored
buttons to each other.

|image0|

Defined by the following code:

.. code:: qml

    Button {
        id: redButton
        text: "Item #1"
        color: "red"
        Layouts.item: "red"
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: units.gu(15)
    }
    Button {
        id: greenButton
        text: "Item #2"
        color: "green"
        Layouts.item: "green"
        anchors {
            top: parent.top
            left: redButton.right
            right: parent.right
        }
        height: units.gu(10)
    }
    Button {
        id: blueButton
        text: "Item #3"
        color: "blue"
        Layouts.item: "blue"
        anchors{
            left: redButton.right
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(10)
    }

.. rubric:: Walkthrough
   :name: walkthrough

.. rubric:: Import
   :name: import

First of all, in order to use the layouting abilities, you need to
import Ubuntu.Layouts.

.. code:: cpp

    import Ubuntu.Layouts 1.0

This layout will have the red button anchored to the parent's left, top
and bottom, having a width of 15 grid units. The green and blue buttons
are anchored left to the red button, righ to their parent, top and
bottom to the parent top respectively to the parent bottom and both
having a height of 10 grid units.

This layout looks good in small form factors, however as the width,
height and grid unit changes, this layout will start to look cumbersome.

Every component we wan to lay out must be marked. This "marking" is done
by attaching the Layouts.item property to erach item participating in
the layouting. Therefore we mark each button with a unique name, "red",
"green" and "blue".

.. rubric:: Define the conditional layout
   :name: define-the-conditional-layout

Let's define a column layout for the case when the layout block width
passes 50 GU, and move the items into a
`Row <http://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-row.html>`_ 
container in the following order: "red", "green" and "blue". We also
need to specify the size these components will have, so let's set the
width to one third of the container's width and top and bottom anchored
to the row's top and bottom.

.. code:: qml

    ConditionalLayout {
        name: "row"
        when: layouts.width > units.gu(50)
        Row {
            anchors.fill: parent
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
            ItemLayout {
                item: "blue"
                width: parent.width / 3
                anchors {
                    top: parent.top
                    bottom: parent.bottom
                }
            }
        }
    }

Note the way the container is defined. Items are laid out using
:ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` host items. The items
will be laid out in the order the
:ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` hosts are declared.
Beside this :ref:`ItemLayout <sdk_ubuntu_layouts_itemlayout>` also drives
the size, scale, rotation, availability (enabled) visibility and opacity
of the hosted item.

The conditional layout is given a name so it can be identified when the
layout is set through Layouts.curentLayout property. This, beside
debugging abilities, gives additional possibilities to configure
properties that are not directly updated by the layouting.

Combining this with the default layout we will see the following layout
when width exceeds 50 GU:

|image1|

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    import Ubuntu.Layouts 1.0
    Item {
        id: root
        width: units.gu(30)
        height: units.gu(30)
        Layouts {
            objectName: "layouts"
            id: layouts
            anchors.fill: parent
            layouts: [
                ConditionalLayout {
                    name: "row"
                    when: layouts.width > units.gu(50)
                    Row {
                        anchors.fill: parent
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
                        ItemLayout {
                            item: "blue"
                            width: parent.width / 3
                            anchors {
                                top: parent.top
                                bottom: parent.bottom
                            }
                        }
                    }
                }
            ]
            Button {
                id: redButton
                text: "Item #1"
                color: "red"
                Layouts.item: "red"
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                }
                width: units.gu(15)
            }
            Button {
                id: greenButton
                text: "Item #2"
                color: "green"
                Layouts.item: "green"
                anchors {
                    top: parent.top
                    left: redButton.right
                    right: parent.right
                }
                height: units.gu(10)
            }
            Button {
                id: blueButton
                text: "Item #3"
                color: "blue"
                Layouts.item: "blue"
                anchors{
                    left: redButton.right
                    right: parent.right
                    bottom: parent.bottom
                }
                height: units.gu(10)
            }
        }
    }

`Layouts - Changing the
order </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts3/>`_ 

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts2/images/default-layout.png
.. |image1| image:: /media/sdk/apps/qml/ubuntu-layouts2/images/layout1.png


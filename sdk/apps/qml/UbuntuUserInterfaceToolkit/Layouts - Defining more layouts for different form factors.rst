

As mentioned, with Layouts we can achieve to have a single code base
supporting different form factors. The following example illustrates how
to support different layouts with the same code base.

.. rubric:: Default layout
   :name: default-layout

|image0|

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
        id: nolayout
        text: "Non-laid out"
        color: "brown"
        anchors {
            top: greenButton.bottom
            left: redButton.right
            right: parent.right
            bottom: blueButton.top
        }
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

.. rubric:: Conditional layouts
   :name: conditional-layouts

.. rubric:: Column layout
   :name: column-layout

|image1|

.. code:: qml

    ConditionalLayout {
        name: "column"
        when: layouts.width > units.gu(50) && layouts.width <= units.gu(70)
        Column {
            anchors.fill: parent
            ItemLayout {
                item: "red"
                height: parent.height / 3
                anchors {
                    left: parent.left
                    right: parent.right
                }
            }
            ItemLayout {
                item: "green"
                height: parent.height / 3
                anchors {
                    left: parent.left
                    right: parent.right
                }
            }
            ItemLayout {
                item: "blue"
                height: parent.height / 3
                anchors {
                    left: parent.left
                    right: parent.right
                }
            }
        }
    },

.. rubric:: Row layout
   :name: row-layout

|image2|

.. code:: qml

    ConditionalLayout {
        name: "row"
        when: layouts.width > units.gu(70) && layouts.width <= units.gu(90)
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
    },

.. rubric:: Layout hiding element
   :name: layout-hiding-element

|image3|

.. code:: qml

    ConditionalLayout {
        name: "hiding-element"
        when: layouts.width > units.gu(90) && layouts.width < units.gu(100)
        Row {
            anchors.fill: parent
            ItemLayout {
                item: "red"
                width: parent.width / 2
                height: units.gu(20)
            }
            ItemLayout {
                item: "green"
                width: parent.width / 2
                height: units.gu(20)
            }
        }
    },

.. rubric:: Layout showing more
   :name: layout-showing-more

|image4|

.. code:: qml

    ConditionalLayout {
        name: "showing-more"
        when: layouts.width >= units.gu(100)
        Flow {
            anchors.fill: parent
            ItemLayout {
                item: "red"
                width: units.gu(50)
                height: units.gu(20)
            }
            ItemLayout {
                item: "green"
                width: units.gu(50)
                height: units.gu(20)
            }
            ItemLayout {
                item: "blue"
                width: units.gu(50)
                height: units.gu(20)
            }
            Button {
                text: "Flow item"
                width: units.gu(50)
                height: units.gu(20)
            }
        }
    }

.. rubric:: The entire code
   :name: the-entire-code

.. code:: qml

    Layouts {
        id: layouts
        anchors.fill: parent
        layouts: [
            ConditionalLayout {
                name: "column"
                when: layouts.width > units.gu(50) && layouts.width <= units.gu(70)
                Column {
                    anchors.fill: parent
                    ItemLayout {
                        item: "red"
                        height: parent.height / 3
                        anchors {
                            left: parent.left
                            right: parent.right
                        }
                    }
                    ItemLayout {
                        item: "green"
                        height: parent.height / 3
                        anchors {
                            left: parent.left
                            right: parent.right
                        }
                    }
                    ItemLayout {
                        item: "blue"
                        height: parent.height / 3
                        anchors {
                            left: parent.left
                            right: parent.right
                        }
                    }
                }
            },
            ConditionalLayout {
                name: "row"
                when: layouts.width > units.gu(70) && layouts.width <= units.gu(90)
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
            },
            ConditionalLayout {
                name: "hiding-element"
                when: layouts.width > units.gu(90) && layouts.width < units.gu(100)
                Row {
                    anchors.fill: parent
                    ItemLayout {
                        item: "red"
                        width: parent.width / 2
                        height: units.gu(20)
                    }
                    ItemLayout {
                        item: "green"
                        width: parent.width / 2
                        height: units.gu(20)
                    }
                }
            },
            ConditionalLayout {
                name: "showing-more"
                when: layouts.width >= units.gu(100)
                Flow {
                    anchors.fill: parent
                    ItemLayout {
                        item: "red"
                        width: units.gu(50)
                        height: units.gu(20)
                    }
                    ItemLayout {
                        item: "green"
                        width: units.gu(50)
                        height: units.gu(20)
                    }
                    ItemLayout {
                        item: "blue"
                        width: units.gu(50)
                        height: units.gu(20)
                    }
                    Button {
                        text: "Flow item"
                        width: units.gu(50)
                        height: units.gu(20)
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
            id: nolayout
            text: "Non-laid out"
            color: "brown"
            anchors {
                top: greenButton.bottom
                left: redButton.right
                right: parent.right
                bottom: blueButton.top
            }
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

.. rubric:: That's it
   :name: that-s-it

You're ready to go. You can find the layouting components under
`Layouting </sdk/apps/qml/UbuntuUserInterfaceToolkit/overview-ubuntu-sdk#layouting>`__.
For further questions please visit **#ubuntu-app-devel** irc channel on
freenode.

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts7/images/simple-layout1.png
.. |image1| image:: /media/sdk/apps/qml/ubuntu-layouts7/images/simple-layout2.png
.. |image2| image:: /media/sdk/apps/qml/ubuntu-layouts7/images/simple-layout3.png
.. |image3| image:: /media/sdk/apps/qml/ubuntu-layouts7/images/simple-layout4.png
.. |image4| image:: /media/sdk/apps/qml/ubuntu-layouts7/images/simple-layout5.png


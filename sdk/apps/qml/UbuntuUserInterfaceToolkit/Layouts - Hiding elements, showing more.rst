

Till this point we know how to define a layout block, what is the
default layout, how to create layout, how to define the container and
how to define the hosted elements and how to define item hosts to lay
out individual items.

There can be situations when for certain layouts we don't want to
transfer all the components of a default layout. More, there can be
situations when we want to show more components when we have more space
to our disposal. Perhaps we want to provide more functionality when the
phone is turned from portrait to landscape (typical use case is a
Calculator application which on portrait is a simple calculator but on
landscape provides scientific calculator functions). In the following we
will define two layouts where we cover both use cases.

.. rubric:: Hiding components
   :name: hiding-components

Let's create a layout where we only show the red and green buttons. This
can be achieved by specifying only those components to be hosted by the
container.

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
            }
            ItemLayout {
                item: "green"
                width: parent.width / 2
                height: units.gu(20)
            }
        }
    }

The layout when the block width exceeds 50 GU will look like this:

|image0|

.. rubric:: Showing more content
   :name: showing-more-content

Another use case is to show extra content in a different layout/form
factor. These components can simply be declared inside the layout
itself, assuming that those are not going to be used in any other
layout. If yes, those must also be declared in the default layout in
order to preserve their state, or other modalities to transfer the
component state must be used. Let's create a layout which will be
activated when the layout block width exceeds 70 GU.

.. code:: qml

    ConditionalLayout {
        name: "flow"
        when: layouts.width > units.gu(70)
        Flow {
            anchors.fill: parent
            ItemLayout {
                item: "red"
                width: units.gu(20)
                height: units.gu(20)
            }
            ItemLayout {
                item: "green"
                width: units.gu(20)
                height: units.gu(20)
            }
            ItemLayout {
                item: "blue"
                width: units.gu(20)
                height: units.gu(20)
            }
            Button {
                text: "Flow item"
                width: units.gu(20)
                height: units.gu(20)
            }
        }
    }

|image1|

`Layouts - Overlay items in an item
host </sdk/apps/qml/UbuntuUserInterfaceToolkit/ubuntu-layouts6/>`__

.. |image0| image:: /media/sdk/apps/qml/ubuntu-layouts5/images/layout6.png
.. |image1| image:: /media/sdk/apps/qml/ubuntu-layouts5/images/layout6-2.png


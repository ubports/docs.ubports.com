.. _sdk_qtquick_concepts_-_visual_coordinates_in_qt_quick:

QtQuick Concepts - Visual Coordinates in Qt Quick
=================================================



The default system of visual coordinates used in Qt Quick is item coordinates. This is a cartesian coordinate system with (0,0) at the top left corner of the item. The x-axis grows to the right and the y-axis grows downwards, so that the bottom right corner of the item is at coordinates (width, height).

An individual item's position is specified in terms of its parent's coordinate system. This means that reading x,y values from non-sibling items may require conversion to convert them into the same coordinate system. Scene coordinates are often used as the intermediate coordinate system when this occurs.

Scene coordinates are the coordinates where (0,0) corresponds to the top left corner of the window the scene is currently being rendered. Scene coordinates are usually the same as the item coordinates of the root item in the window.

You can convert from item to scene coordinates using the functions on the item whose coordinate system you are interested in. See :ref:`Item::mapFromItem <sdk_qtquick_item_mapFromItem>` and :ref:`Item::mapToItem <sdk_qtquick_item_mapToItem>` for converting to scene coordinates, or another item's coordinates.

The below QML code creates an arrangment of squares, with dots added for identification of points:

.. code:: cpp

    Rectangle {
        width: 200
        height: 200
        color: "red"
        Rectangle {
            x: 100
            y: 100
            width: 100
            height: 100
            color: "blue"
            Rectangle {
                width: 50
                height: 50
                color: "green"
            }
        }
    }

In this image the black dot is positioned at (0,0) within the item coordinates of the red rectangle. If the red rectangle was the root item of the scene, then the black dot would also be positioned at (0,0) in scene coordinates.

The blue rectangle is positioned at the white dot, (100,100), relative to the red rectangle's top left corner.

The green rectangle has no x,y specified, so its position defaults to (0,0). Because it is at (0,0) in the coordinates of its parent, the blue rectangle, it is positioned at the top left corner of that rectangle. This is the same point as the white dot at (100,100) in the coordinates of the red rectangle.


.. _sdk_qtquick_rectangle:

QtQuick Rectangle
=================

Paints a filled rectangle with an optional border

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`antialiasing <sdk_qtquick_rectangle_antialiasing>` : bool
-  :ref:`border <sdk_qtquick_rectangle_border>`

   -  :ref:`border.width <sdk_qtquick_rectangle_border_width>` : int
   -  :ref:`border.color <sdk_qtquick_rectangle_border_color>` : color

-  :ref:`color <sdk_qtquick_rectangle_color>` : color
-  :ref:`gradient <sdk_qtquick_rectangle_gradient>` : Gradient
-  :ref:`radius <sdk_qtquick_rectangle_radius>` : real

Detailed Description
--------------------

Rectangle items are used to fill areas with solid color or gradients, and/or to provide a rectangular border.

Appearance
----------

Each Rectangle item is painted using either a solid fill color, specified using the :ref:`color <sdk_qtquick_rectangle_color>` property, or a gradient, defined using a Gradient type and set using the :ref:`gradient <sdk_qtquick_rectangle_gradient>` property. If both a color and a gradient are specified, the gradient is used.

You can add an optional border to a rectangle with its own color and thickness by setting the :ref:`border.color <sdk_qtquick_rectangle_border_color>` and :ref:`border.width <sdk_qtquick_rectangle_border_width>` properties. Set the color to "transparent" to paint a border without a fill color.

You can also create rounded rectangles using the :ref:`radius <sdk_qtquick_rectangle_radius>` property. Since this introduces curved edges to the corners of a rectangle, it may be appropriate to set the :ref:`Item::antialiasing <sdk_qtquick_item_antialiasing>` property to improve its appearance.

Example Usage
-------------

The following example shows the effects of some of the common properties on a Rectangle item, which in this case is used to create a square:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 100
        height: 100
        color: "red"
        border.color: "black"
        border.width: 5
        radius: 10
    }

Performance
-----------

Using the :ref:`Item::antialiasing <sdk_qtquick_item_antialiasing>` property improves the appearance of a rounded rectangle at the cost of rendering performance. You should consider unsetting this property for rectangles in motion, and only set it when they are stationary.

**See also** `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_rectangle_antialiasing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| antialiasing : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Used to decide if the Rectangle should use antialiasing or not. `Antialiasing </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer/#antialiasing>`_  provides information on the performance implications of this property.

The default is true for Rectangles with a radius, and false otherwise.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **border group**                                                                                                                                                                                                                                                                                             |
+==============================================================================================================================================================================================================================================================================================================+
| border.width : int                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| border.color : color                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The width and color used to draw the border of the rectangle.

A width of 1 creates a thin line. For no line, use a width of 0 or a transparent color.

**Note:** The width of the rectangle's border does not affect the geometry of the rectangle itself or its position relative to other items if anchors are used.

The border is rendered within the rectangle's boundaries.

.. _sdk_qtquick_rectangle_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the color used to fill the rectangle.

The default color is white.

The following example shows rectangles with colors specified using hexadecimal and named color notation:

.. code:: qml

    Rectangle {
        color: "#00B000"
        width: 80; height: 80
    }
    Rectangle {
        color: "steelblue"
        y: 100; width: 80; height: 80
    }

If both a gradient and a color are specified, the gradient will be used.

**See also** :ref:`gradient <sdk_qtquick_rectangle_gradient>`.

.. _sdk_qtquick_rectangle_gradient:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| gradient : :ref:`Gradient <sdk_qtquick_gradient>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The gradient to use to fill the rectangle.

This property allows for the construction of simple vertical gradients. Other gradients may by formed by adding rotation to the rectangle.

.. code:: qml

    Rectangle {
        y: 0; width: 80; height: 80
        color: "lightsteelblue"
    }
    Rectangle {
        y: 100; width: 80; height: 80
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }
    Rectangle {
        y: 200; width: 80; height: 80
        rotation: 90
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }

If both a gradient and a color are specified, the gradient will be used.

**See also** :ref:`Gradient <sdk_qtquick_gradient>` and :ref:`color <sdk_qtquick_rectangle_color>`.

.. _sdk_qtquick_rectangle_radius:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| radius : real                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the corner radius used to draw a rounded rectangle.

If radius is non-zero, the rectangle will be painted as a rounded rectangle, otherwise it will be painted as a normal rectangle. The same radius is used by all 4 corners; there is currently no way to specify different radii for different corners.


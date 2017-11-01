Paints a filled rectangle with an optional border

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`antialiasing </sdk/apps/qml/QtQuick/Rectangle#antialiasing-prop>`__****
   : bool
-  ****`border </sdk/apps/qml/QtQuick/Rectangle#border-prop>`__****

   -  ****`border.width </sdk/apps/qml/QtQuick/Rectangle#border.width-prop>`__****
      : int
   -  ****`border.color </sdk/apps/qml/QtQuick/Rectangle#border.color-prop>`__****
      : color

-  ****`color </sdk/apps/qml/QtQuick/Rectangle#color-prop>`__**** :
   color
-  ****`gradient </sdk/apps/qml/QtQuick/Rectangle#gradient-prop>`__****
   : Gradient
-  ****`radius </sdk/apps/qml/QtQuick/Rectangle#radius-prop>`__**** :
   real

Detailed Description
--------------------

Rectangle items are used to fill areas with solid color or gradients,
and/or to provide a rectangular border.

Appearance
----------

Each Rectangle item is painted using either a solid fill color,
specified using the
`color </sdk/apps/qml/QtQuick/Rectangle#color-prop>`__ property, or a
gradient, defined using a Gradient type and set using the
`gradient </sdk/apps/qml/QtQuick/Rectangle#gradient-prop>`__ property.
If both a color and a gradient are specified, the gradient is used.

You can add an optional border to a rectangle with its own color and
thickness by setting the
`border.color </sdk/apps/qml/QtQuick/Rectangle#border.color-prop>`__ and
`border.width </sdk/apps/qml/QtQuick/Rectangle#border.width-prop>`__
properties. Set the color to "transparent" to paint a border without a
fill color.

You can also create rounded rectangles using the
`radius </sdk/apps/qml/QtQuick/Rectangle#radius-prop>`__ property. Since
this introduces curved edges to the corners of a rectangle, it may be
appropriate to set the
`Item::antialiasing </sdk/apps/qml/QtQuick/Item#antialiasing-prop>`__
property to improve its appearance.

Example Usage
-------------

|image0|

The following example shows the effects of some of the common properties
on a Rectangle item, which in this case is used to create a square:

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

| 
|        

Performance
-----------

Using the
`Item::antialiasing </sdk/apps/qml/QtQuick/Item#antialiasing-prop>`__
property improves the appearance of a rounded rectangle at the cost of
rendering performance. You should consider unsetting this property for
rectangles in motion, and only set it when they are stationary.

**See also** `Image </sdk/apps/qml/QtQuick/imageelements#image>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ antialiasing : bool                                             |
+--------------------------------------------------------------------------+

Used to decide if the Rectangle should use antialiasing or not.
`Antialiasing </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph-renderer#antialiasing>`__
provides information on the performance implications of this property.

The default is true for Rectangles with a radius, and false otherwise.

| 

+--------------------------------------------------------------------------+
|        \ **border group**                                                |
+==========================================================================+
|        \ border.width : int                                              |
+--------------------------------------------------------------------------+
|        \ border.color : color                                            |
+--------------------------------------------------------------------------+

The width and color used to draw the border of the rectangle.

A width of 1 creates a thin line. For no line, use a width of 0 or a
transparent color.

**Note:** The width of the rectangle's border does not affect the
geometry of the rectangle itself or its position relative to other items
if anchors are used.

The border is rendered within the rectangle's boundaries.

| 

+--------------------------------------------------------------------------+
|        \ color : color                                                   |
+--------------------------------------------------------------------------+

This property holds the color used to fill the rectangle.

The default color is white.

|image1|

The following example shows rectangles with colors specified using
hexadecimal and named color notation:

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

**See also**
`gradient </sdk/apps/qml/QtQuick/Rectangle#gradient-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ gradient : `Gradient </sdk/apps/qml/QtQuick/Gradient/>`__       |
+--------------------------------------------------------------------------+

The gradient to use to fill the rectangle.

This property allows for the construction of simple vertical gradients.
Other gradients may by formed by adding rotation to the rectangle.

|image2|

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

**See also** `Gradient </sdk/apps/qml/QtQuick/Gradient/>`__ and
`color </sdk/apps/qml/QtQuick/Rectangle#color-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ radius : real                                                   |
+--------------------------------------------------------------------------+

This property holds the corner radius used to draw a rounded rectangle.

If radius is non-zero, the rectangle will be painted as a rounded
rectangle, otherwise it will be painted as a normal rectangle. The same
radius is used by all 4 corners; there is currently no way to specify
different radii for different corners.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Rectangle/images/declarative-rect.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Rectangle/images/rect-color.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Rectangle/images/declarative-rect_gradient.png


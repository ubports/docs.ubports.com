Defines a gradient fill

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`stops </sdk/apps/qml/QtQuick/Gradient#stops-prop>`__**** :
   list<GradientStop>

Detailed Description
--------------------

A gradient is defined by two or more colors, which will be blended
seamlessly.

The colors are specified as a set of
`GradientStop </sdk/apps/qml/QtQuick/GradientStop/>`__ child items, each
of which defines a position on the gradient from 0.0 to 1.0 and a color.
The position of each
`GradientStop </sdk/apps/qml/QtQuick/GradientStop/>`__ is defined by
setting its
`position </sdk/apps/qml/QtQuick/GradientStop#position-prop>`__
property; its color is defined using its
`color </sdk/apps/qml/QtQuick/GradientStop#color-prop>`__ property.

A gradient without any gradient stops is rendered as a solid white fill.

Note that this item is not a visual representation of a gradient. To
display a gradient, use a visual item (like
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__) which supports the use
of gradients.

Example Usage
-------------

|image0|

The following example declares a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ item with a gradient
starting with red, blending to yellow at one third of the height of the
rectangle, and ending with green:

.. code:: qml

    Rectangle {
        width: 100; height: 100
        gradient: Gradient {
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 0.33; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }
    }

| 
|        

Performance and Limitations
---------------------------

Calculating gradients can be computationally expensive compared to the
use of solid color fills or images. Consider using gradients for static
items in a user interface.

In Qt 5.0, only vertical, linear gradients can be applied to items. If
you need to apply different orientations of gradients, a combination of
rotation and clipping will need to be applied to the relevant items.
This can introduce additional performance requirements for your
application.

The use of animations involving gradient stops may not give the desired
result. An alternative way to animate gradients is to use pre-generated
images or SVG drawings containing gradients.

**See also** `GradientStop </sdk/apps/qml/QtQuick/GradientStop/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] stops :                                               |
| list<`GradientStop </sdk/apps/qml/QtQuick/GradientStop/>`__>             |
+--------------------------------------------------------------------------+

This property holds the gradient stops describing the gradient.

By default, this property contains an empty list.

To set the gradient stops, define them as children of the Gradient.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Gradient/images/qml-gradient.png


Provides ordered and indexed access to the components of each pixel in
image data

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`length </sdk/apps/qml/QtQuick/CanvasPixelArray#length-prop>`__****
   : int

Detailed Description
--------------------

The `CanvasPixelArray </sdk/apps/qml/QtQuick/CanvasPixelArray/>`__
object provides ordered, indexed access to the color components of each
pixel of the image data. The
`CanvasPixelArray </sdk/apps/qml/QtQuick/CanvasPixelArray/>`__ can be
accessed as normal Javascript array.

**See also**
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ and `W3C 2d
context standard for
PixelArray <http://www.w3.org/TR/2dcontext#canvaspixelarray>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ length : int                                                    |
+--------------------------------------------------------------------------+

The `CanvasPixelArray </sdk/apps/qml/QtQuick/CanvasPixelArray/>`__
object represents h×w×4 integers which w and h comes from
`CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__. The length
attribute of a
`CanvasPixelArray </sdk/apps/qml/QtQuick/CanvasPixelArray/>`__ object
must return this h×w×4 number value. This property is read only.

| 

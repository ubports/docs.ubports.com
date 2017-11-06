.. _sdk_qtquick_canvaspixelarray:

QtQuick CanvasPixelArray
========================

Provides ordered and indexed access to the components of each pixel in image data

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`length <sdk_qtquick_canvaspixelarray_length>` : int

Detailed Description
--------------------

The :ref:`CanvasPixelArray <sdk_qtquick_canvaspixelarray>` object provides ordered, indexed access to the color components of each pixel of the image data. The :ref:`CanvasPixelArray <sdk_qtquick_canvaspixelarray>` can be accessed as normal Javascript array.

**See also** :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` and `W3C 2d context standard for PixelArray <http://www.w3.org/TR/2dcontext/#canvaspixelarray>`_ .

Property Documentation
----------------------

.. _sdk_qtquick_canvaspixelarray_length:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| length : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The :ref:`CanvasPixelArray <sdk_qtquick_canvaspixelarray>` object represents h×w×4 integers which w and h comes from :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>`. The length attribute of a :ref:`CanvasPixelArray <sdk_qtquick_canvaspixelarray>` object must return this h×w×4 number value. This property is read only.


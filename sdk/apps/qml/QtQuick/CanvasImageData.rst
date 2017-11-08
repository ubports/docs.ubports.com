.. _sdk_qtquick_canvasimagedata:

QtQuick CanvasImageData
=======================

Contains image pixel data in RGBA order

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`data <sdk_qtquick_canvasimagedata_data>` : object
-  :ref:`height <sdk_qtquick_canvasimagedata_height>` : int
-  :ref:`width <sdk_qtquick_canvasimagedata_width>` : int

Detailed Description
--------------------

The :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object holds the image pixel data.

The :ref:`CanvasImageData <sdk_qtquick_canvasimagedata>` object has the actual dimensions of the data stored in this object and holds the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.

**See also** :ref:`width <sdk_qtquick_canvasimagedata_width>`, :ref:`height <sdk_qtquick_canvasimagedata_height>`, :ref:`data <sdk_qtquick_canvasimagedata_data>`, :ref:`Context2D::createImageData() <sdk_qtquick_context2d_createImageData>`, :ref:`Context2D::getImageData() <sdk_qtquick_context2d_getImageData>`, and :ref:`Context2D::putImageData() <sdk_qtquick_context2d_putImageData>`.

Property Documentation
----------------------

.. _sdk_qtquick_canvasimagedata_data:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| data : object                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.

.. _sdk_qtquick_canvasimagedata_height:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| height : int                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the actual height dimension of the data in the ImageData object, in device pixels.

.. _sdk_qtquick_canvasimagedata_width:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| width : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Holds the actual width dimension of the data in the ImageData object, in device pixels.


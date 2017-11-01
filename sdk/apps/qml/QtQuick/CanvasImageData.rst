Contains image pixel data in RGBA order

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`data </sdk/apps/qml/QtQuick/CanvasImageData#data-prop>`__**** :
   object
-  ****`height </sdk/apps/qml/QtQuick/CanvasImageData#height-prop>`__****
   : int
-  ****`width </sdk/apps/qml/QtQuick/CanvasImageData#width-prop>`__****
   : int

Detailed Description
--------------------

The `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object
holds the image pixel data.

The `CanvasImageData </sdk/apps/qml/QtQuick/CanvasImageData/>`__ object
has the actual dimensions of the data stored in this object and holds
the one-dimensional array containing the data in RGBA order, as integers
in the range 0 to 255.

**See also**
`width </sdk/apps/qml/QtQuick/CanvasImageData#width-prop>`__,
`height </sdk/apps/qml/QtQuick/CanvasImageData#height-prop>`__,
`data </sdk/apps/qml/QtQuick/CanvasImageData#data-prop>`__,
`Context2D::createImageData() </sdk/apps/qml/QtQuick/Context2D#createImageData-method>`__,
`Context2D::getImageData() </sdk/apps/qml/QtQuick/Context2D#getImageData-method>`__,
and
`Context2D::putImageData() </sdk/apps/qml/QtQuick/Context2D#putImageData-method>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ data : object                                                   |
+--------------------------------------------------------------------------+

Holds the one-dimensional array containing the data in RGBA order, as
integers in the range 0 to 255.

| 

+--------------------------------------------------------------------------+
|        \ height : int                                                    |
+--------------------------------------------------------------------------+

Holds the actual height dimension of the data in the ImageData object,
in device pixels.

| 

+--------------------------------------------------------------------------+
|        \ width : int                                                     |
+--------------------------------------------------------------------------+

Holds the actual width dimension of the data in the ImageData object, in
device pixels.

| 

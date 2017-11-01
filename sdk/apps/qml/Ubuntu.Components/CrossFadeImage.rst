An Image like component which smoothly fades when its source is updated.

+---------------------+------------+
| Import Statement:   | import .   |
+---------------------+------------+

Properties
----------

-  ****`fadeDuration </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#fadeDuration-prop>`__****
   : int
-  ****`fadeStyle </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#fadeStyle-prop>`__****
   : string
-  ****`fillMode </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#fillMode-prop>`__****
   : enumeration
-  ****`running </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#running-prop>`__****
   : bool
-  ****`source </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#source-prop>`__****
   : url
-  ****`sourceSize </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#sourceSize-prop>`__****
   : size
-  ****`status </sdk/apps/qml/Ubuntu.Components/CrossFadeImage#status-prop>`__****
   : enumeration

Detailed Description
--------------------

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    CrossFadeImage {
        width: units.gu(100)
        height: units.gu(75)
        source: "http://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png"
        fadeDuration: 1000
        MouseArea {
            anchors.fill: parent
            onClicked: parent.source = "http://design.ubuntu.com/wp-content/uploads/canonical-logo1.png"
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ fadeDuration : int                                              |
+--------------------------------------------------------------------------+

The time over which to fade between images. Defaults to
``UbuntuAnimation.FastDuration``.

**See also**
`UbuntuAnimation </sdk/apps/qml/Ubuntu.Components/UbuntuAnimation/>`__.

| 

+--------------------------------------------------------------------------+
|        \ fadeStyle : string                                              |
+--------------------------------------------------------------------------+

Style of the fade effect

Defaults to ``overlay``

-  overlay - the new fading image overlays the current one
-  cross - the current one fades out while the new image fades in

This QML property was introduced in Ubuntu.Components 1.1.

| 

+--------------------------------------------------------------------------+
|        \ fillMode : enumeration                                          |
+--------------------------------------------------------------------------+

Defaults to ``Image.PreserveAspectFit``

-  Image.Stretch - the image is scaled to fit
-  Image.PreserveAspectFit - the image is scaled uniformly to fit
   without cropping
-  Image.PreserveAspectCrop - the image is scaled uniformly to fill,
   cropping if necessary
-  Image.Tile - the image is duplicated horizontally and vertically
-  Image.TileVertically - the image is stretched horizontally and tiled
   vertically
-  Image.TileHorizontally - the image is stretched vertically and tiled
   horizontally
-  Image.Pad - the image is not transformed

| 

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

Whether the animation is running

| 

+--------------------------------------------------------------------------+
|        \ source : `url <http://doc.qt.io/qt-5/qml-url.html>`__           |
+--------------------------------------------------------------------------+

The image being displayed. Can be a URL to any image format supported by
Qt.

| 

+--------------------------------------------------------------------------+
|        \ sourceSize : size                                               |
+--------------------------------------------------------------------------+

The actual width and height of the loaded image This property holds the
actual width and height of the loaded image.

Unlike the width and height properties, which scale the painting of the
image, this property sets the actual number of pixels stored for the
loaded image so that large images do not use more memory than necessary.

Note: Changing this property dynamically causes the image source to be
reloaded, potentially even from the network, if it is not in the disk
cache.

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the status of image loading. It can be one of:

-  Image.Null - no image has been set
-  Image.Ready - the image has been loaded
-  Image.Loading - the image is currently being loaded
-  Image.Error - an error occurred while loading the image

| 

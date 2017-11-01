Displays an image

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `AnimatedImage </sdk/apps/qml/QtQuic |
|                                      | k/AnimatedImage/>`__.                |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`asynchronous </sdk/apps/qml/QtQuick/Image#asynchronous-prop>`__****
   : bool
-  ****`cache </sdk/apps/qml/QtQuick/Image#cache-prop>`__**** : bool
-  ****`fillMode </sdk/apps/qml/QtQuick/Image#fillMode-prop>`__**** :
   enumeration
-  ****`horizontalAlignment </sdk/apps/qml/QtQuick/Image#horizontalAlignment-prop>`__****
   : enumeration
-  ****`mipmap </sdk/apps/qml/QtQuick/Image#mipmap-prop>`__**** : bool
-  ****`mirror </sdk/apps/qml/QtQuick/Image#mirror-prop>`__**** : bool
-  ****`paintedHeight </sdk/apps/qml/QtQuick/Image#paintedHeight-prop>`__****
   : real
-  ****`paintedWidth </sdk/apps/qml/QtQuick/Image#paintedWidth-prop>`__****
   : real
-  ****`progress </sdk/apps/qml/QtQuick/Image#progress-prop>`__**** :
   real
-  ****`smooth </sdk/apps/qml/QtQuick/Image#smooth-prop>`__**** : bool
-  ****`source </sdk/apps/qml/QtQuick/Image#source-prop>`__**** : url
-  ****`sourceSize </sdk/apps/qml/QtQuick/Image#sourceSize-prop>`__****
   : QSize
-  ****`status </sdk/apps/qml/QtQuick/Image#status-prop>`__**** :
   enumeration
-  ****`verticalAlignment </sdk/apps/qml/QtQuick/Image#verticalAlignment-prop>`__****
   : enumeration

Detailed Description
--------------------

The Image type displays an image.

The source of the image is specified as a URL using the
`source </sdk/apps/qml/QtQuick/Image#source-prop>`__ property. Images
can be supplied in any of the standard image formats supported by Qt,
including bitmap formats such as PNG and JPEG, and vector graphics
formats such as SVG. If you need to display animated images, use
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites#animatedsprite>`__
or `AnimatedImage </sdk/apps/qml/QtQuick/AnimatedImage/>`__.

If the `width </sdk/apps/qml/QtQuick/Item#width-prop>`__ and
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__ properties are not
specified, the Image automatically uses the size of the loaded image. By
default, specifying the width and height of the item causes the image to
be scaled to that size. This behavior can be changed by setting the
`fillMode </sdk/apps/qml/QtQuick/Image#fillMode-prop>`__ property,
allowing the image to be stretched and tiled instead.

Example Usage
-------------

The following example shows the simplest usage of the Image type.

.. code:: qml

    import QtQuick 2.0
    Image {
        source: "pics/qtlogo.png"
    }

|image0|

| 
|        

Performance
-----------

By default, locally available images are loaded immediately, and the
user interface is blocked until loading is complete. If a large image is
to be loaded, it may be preferable to load the image in a low priority
thread, by enabling the
`asynchronous </sdk/apps/qml/QtQuick/Image#asynchronous-prop>`__
property.

If the image is obtained from a network rather than a local resource, it
is automatically loaded asynchronously, and the
`progress </sdk/apps/qml/QtQuick/Image#progress-prop>`__ and
`status </sdk/apps/qml/QtQuick/Image#status-prop>`__ properties are
updated as appropriate.

Images are cached and shared internally, so if several Image items have
the same `source </sdk/apps/qml/QtQuick/Image#source-prop>`__, only one
copy of the image will be loaded.

**Note**: Images are often the greatest user of memory in QML user
interfaces. It is recommended that images which do not form part of the
user interface have their size bounded via the
`sourceSize </sdk/apps/qml/QtQuick/Image#sourceSize-prop>`__ property.
This is especially important for content that is loaded from external
sources or provided by the user.

**See also** Qt Quick Examples - Image Elements and QQuickImageProvider.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ asynchronous : bool                                             |
+--------------------------------------------------------------------------+

Specifies that images on the local filesystem should be loaded
asynchronously in a separate thread. The default value is false, causing
the user interface thread to block while the image is loaded. Setting
*asynchronous* to true is useful where maintaining a responsive user
interface is more desirable than having images immediately visible.

Note that this property is only valid for images read from the local
filesystem. Images loaded via a network resource (e.g. HTTP) are always
loaded asynchronously.

| 

+--------------------------------------------------------------------------+
|        \ cache : bool                                                    |
+--------------------------------------------------------------------------+

Specifies whether the image should be cached. The default value is true.
Setting *cache* to false is useful when dealing with large images, to
make sure that they aren't cached at the expense of small 'ui element'
images.

| 

+--------------------------------------------------------------------------+
|        \ fillMode : enumeration                                          |
+--------------------------------------------------------------------------+

Set this property to define what happens when the source image has a
different size than the item.

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

+--------------------------------------+--------------------------------------+
| |image1|                             | Stretch (default)                    |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 130; height: 100      |
|                                      |         source: "qtlogo.png"         |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image2|                             | PreserveAspectFit                    |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 130; height: 100      |
|                                      |         fillMode: Image.PreserveAspe |
|                                      | ctFit                                |
|                                      |         source: "qtlogo.png"         |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image3|                             | PreserveAspectCrop                   |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 130; height: 100      |
|                                      |         fillMode: Image.PreserveAspe |
|                                      | ctCrop                               |
|                                      |         source: "qtlogo.png"         |
|                                      |         clip: true                   |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image4|                             | Tile                                 |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 120; height: 120      |
|                                      |         fillMode: Image.Tile         |
|                                      |         horizontalAlignment: Image.A |
|                                      | lignLeft                             |
|                                      |         verticalAlignment: Image.Ali |
|                                      | gnTop                                |
|                                      |         source: "qtlogo.png"         |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image5|                             | TileVertically                       |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 120; height: 120      |
|                                      |         fillMode: Image.TileVertical |
|                                      | ly                                   |
|                                      |         verticalAlignment: Image.Ali |
|                                      | gnTop                                |
|                                      |         source: "qtlogo.png"         |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image6|                             | TileHorizontally                     |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 120; height: 120      |
|                                      |         fillMode: Image.TileHorizont |
|                                      | ally                                 |
|                                      |         verticalAlignment: Image.Ali |
|                                      | gnLeft                               |
|                                      |         source: "qtlogo.png"         |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

Note that ``clip`` is ``false`` by default which means that the item
might paint outside its bounding rectangle even if the fillMode is set
to ``PreserveAspectCrop``.

**See also** `Qt Quick Examples - Image
Elements </sdk/apps/qml/QtQuick/imageelements/>`__.

| 

+--------------------------------------------------------------------------+
|        \ horizontalAlignment : enumeration                               |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the image. By default, the
image is center aligned.

The valid values for ``horizontalAlignment`` are ``Image.AlignLeft``,
``Image.AlignRight`` and ``Image.AlignHCenter``. The valid values for
``verticalAlignment`` are ``Image.AlignTop``, ``Image.AlignBottom`` and
``Image.AlignVCenter``.

| 

+--------------------------------------------------------------------------+
|        \ mipmap : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image uses mipmap filtering when scaled
or transformed.

Mipmap filtering gives better visual quality when scaling down compared
to smooth, but it may come at a performance cost (both when initializing
the image and during rendering).

By default, this property is set to false.

This QML property was introduced in Qt 5.3.

**See also** `smooth </sdk/apps/qml/QtQuick/Image#smooth-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ mirror : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image should be horizontally inverted
(effectively displaying a mirrored image).

The default value is false.

| 

+--------------------------------------------------------------------------+
|        \ paintedHeight : real                                            |
+--------------------------------------------------------------------------+

These properties hold the size of the image that is actually painted. In
most cases it is the same as ``width`` and ``height``, but when using a
``fillMode`` ``PreserveAspectFit`` or ``fillMode``
``PreserveAspectCrop`` ``paintedWidth`` or ``paintedHeight`` can be
smaller or larger than ``width`` and ``height`` of the Image item.

| 

+--------------------------------------------------------------------------+
|        \ paintedWidth : real                                             |
+--------------------------------------------------------------------------+

These properties hold the size of the image that is actually painted. In
most cases it is the same as ``width`` and ``height``, but when using a
``fillMode`` ``PreserveAspectFit`` or ``fillMode``
``PreserveAspectCrop`` ``paintedWidth`` or ``paintedHeight`` can be
smaller or larger than ``width`` and ``height`` of the Image item.

| 

+--------------------------------------------------------------------------+
|        \ progress : real                                                 |
+--------------------------------------------------------------------------+

This property holds the progress of image loading, from 0.0 (nothing
loaded) to 1.0 (finished).

**See also** `status </sdk/apps/qml/QtQuick/Image#status-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ smooth : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image is smoothly filtered when scaled
or transformed. Smooth filtering gives better visual quality, but it may
be slower on some hardware. If the image is displayed at its natural
size, this property has no visual or performance effect.

By default, this property is set to true.

**See also** `mipmap </sdk/apps/qml/QtQuick/Image#mipmap-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

Image can handle any image format supported by Qt, loaded from any URL
scheme supported by Qt.

The URL may be absolute, or relative to the URL of the component.

**See also** QQuickImageProvider.

| 

+--------------------------------------------------------------------------+
|        \ sourceSize : QSize                                              |
+--------------------------------------------------------------------------+

This property holds the actual width and height of the loaded image.

Unlike the `width </sdk/apps/qml/QtQuick/Item#width-prop>`__ and
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__ properties, which
scale the painting of the image, this property sets the actual number of
pixels stored for the loaded image so that large images do not use more
memory than necessary. For example, this ensures the image in memory is
no larger than 1024x1024 pixels, regardless of the Image's
`width </sdk/apps/qml/QtQuick/Item#width-prop>`__ and
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__ values:

.. code:: cpp

    Rectangle {
        width: ...
        height: ...
        Image {
           anchors.fill: parent
           source: "reallyBigImage.jpg"
           sourceSize.width: 1024
           sourceSize.height: 1024
        }
    }

If the image's actual size is larger than the sourceSize, the image is
scaled down. If only one dimension of the size is set to greater than 0,
the other dimension is set in proportion to preserve the source image's
aspect ratio. (The
`fillMode </sdk/apps/qml/QtQuick/Image#fillMode-prop>`__ is independent
of this.)

If both the sourceSize.width and sourceSize.height are set the image
will be scaled down to fit within the specified size, maintaining the
image's aspect ratio. The actual size of the image after scaling is
available via
`Item::implicitWidth </sdk/apps/qml/QtQuick/Item#implicitWidth-prop>`__
and
`Item::implicitHeight </sdk/apps/qml/QtQuick/Item#implicitHeight-prop>`__.

If the source is an intrinsically scalable image (eg. SVG), this
property determines the size of the loaded image regardless of intrinsic
size. Avoid changing this property dynamically; rendering an SVG is
*slow* compared to an image.

If the source is a non-scalable image (eg. JPEG), the loaded image will
be no greater than this property specifies. For some formats (currently
only JPEG), the whole image will never actually be loaded into memory.

sourceSize can be cleared to the natural size of the image by setting
sourceSize to ``undefined``.

**Note:** *Changing this property dynamically causes the image source to
be reloaded, potentially even from the network, if it is not in the disk
cache.*

| 

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property holds the status of image loading. It can be one of:

-  Image.Null - no image has been set
-  Image.Ready - the image has been loaded
-  Image.Loading - the image is currently being loaded
-  Image.Error - an error occurred while loading the image

Use this status to provide an update or respond to the status change in
some way. For example, you could:

-  Trigger a state change:

   .. code:: qml

       State { name: 'loaded'; when: image.status == Image.Ready }

-  Implement an ``onStatusChanged`` signal handler:

   .. code:: qml

       Image {
           id: image
           onStatusChanged: if (image.status == Image.Ready) console.log('Loaded')
       }

-  Bind to the status value:

   .. code:: qml

       Text { text: image.status == Image.Ready ? 'Loaded' : 'Not loaded' }

**See also** `progress </sdk/apps/qml/QtQuick/Image#progress-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ verticalAlignment : enumeration                                 |
+--------------------------------------------------------------------------+

Sets the horizontal and vertical alignment of the image. By default, the
image is center aligned.

The valid values for ``horizontalAlignment`` are ``Image.AlignLeft``,
``Image.AlignRight`` and ``Image.AlignHCenter``. The valid values for
``verticalAlignment`` are ``Image.AlignTop``, ``Image.AlignBottom`` and
``Image.AlignVCenter``.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo-stretch.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo-preserveaspectfit.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo-preserveaspectcrop.png
.. |image4| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo-tile.png
.. |image5| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo-tilevertically.png
.. |image6| image:: /media/sdk/apps/qml/QtQuick/Image/images/declarative-qtlogo-tilehorizontally.png


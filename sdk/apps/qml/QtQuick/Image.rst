.. _sdk_qtquick_image:
QtQuick Image
=============

Displays an image

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`AnimatedImage <sdk_qtquick_animated |
|                                      | image>`_ .                           |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`asynchronous <sdk_qtquick_image_asynchronous-prop>` : bool
-  :ref:`cache <sdk_qtquick_image_cache-prop>` : bool
-  :ref:`fillMode <sdk_qtquick_image_fillMode-prop>` : enumeration
-  :ref:`horizontalAlignment <sdk_qtquick_image_horizontalAlignment-prop>`
   : enumeration
-  :ref:`mipmap <sdk_qtquick_image_mipmap-prop>` : bool
-  :ref:`mirror <sdk_qtquick_image_mirror-prop>` : bool
-  :ref:`paintedHeight <sdk_qtquick_image_paintedHeight-prop>` :
   real
-  :ref:`paintedWidth <sdk_qtquick_image_paintedWidth-prop>` : real
-  :ref:`progress <sdk_qtquick_image_progress-prop>` : real
-  :ref:`smooth <sdk_qtquick_image_smooth-prop>` : bool
-  :ref:`source <sdk_qtquick_image_source-prop>` : url
-  :ref:`sourceSize <sdk_qtquick_image_sourceSize-prop>` : QSize
-  :ref:`status <sdk_qtquick_image_status-prop>` : enumeration
-  :ref:`verticalAlignment <sdk_qtquick_image_verticalAlignment-prop>`
   : enumeration

Detailed Description
--------------------

The Image type displays an image.

The source of the image is specified as a URL using the
:ref:`source <sdk_qtquick_image#source-prop>` property. Images can be
supplied in any of the standard image formats supported by Qt, including
bitmap formats such as PNG and JPEG, and vector graphics formats such as
SVG. If you need to display animated images, use
`AnimatedSprite </sdk/apps/qml/QtQuick/qtquick-effects-sprites/#animatedsprite>`_ 
or :ref:`AnimatedImage <sdk_qtquick_animatedimage>`.

If the :ref:`width <sdk_qtquick_item#width-prop>` and
:ref:`height <sdk_qtquick_item#height-prop>` properties are not specified,
the Image automatically uses the size of the loaded image. By default,
specifying the width and height of the item causes the image to be
scaled to that size. This behavior can be changed by setting the
:ref:`fillMode <sdk_qtquick_image#fillMode-prop>` property, allowing the
image to be stretched and tiled instead.

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
:ref:`asynchronous <sdk_qtquick_image#asynchronous-prop>` property.

If the image is obtained from a network rather than a local resource, it
is automatically loaded asynchronously, and the
:ref:`progress <sdk_qtquick_image#progress-prop>` and
:ref:`status <sdk_qtquick_image#status-prop>` properties are updated as
appropriate.

Images are cached and shared internally, so if several Image items have
the same :ref:`source <sdk_qtquick_image#source-prop>`, only one copy of
the image will be loaded.

**Note**: Images are often the greatest user of memory in QML user
interfaces. It is recommended that images which do not form part of the
user interface have their size bounded via the
:ref:`sourceSize <sdk_qtquick_image#sourceSize-prop>` property. This is
especially important for content that is loaded from external sources or
provided by the user.

**See also** Qt Quick Examples - Image Elements and QQuickImageProvider.

Property Documentation
----------------------

.. _sdk_qtquick_image_asynchronous-prop:

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

.. _sdk_qtquick_image_cache-prop:

+--------------------------------------------------------------------------+
|        \ cache : bool                                                    |
+--------------------------------------------------------------------------+

Specifies whether the image should be cached. The default value is true.
Setting *cache* to false is useful when dealing with large images, to
make sure that they aren't cached at the expense of small 'ui element'
images.

| 

.. _sdk_qtquick_image_fillMode-prop:

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

.. _sdk_qtquick_image_image1                              Stretch (default)-prop:

+--------------------------------------+--------------------------------------+
| |image1|                             | Stretch (default)                    |
|                                      | .. code:: qml                        |
|                                      |                                      |
|                                      |     Image {                          |
|                                      |         width: 130; height: 100      |
|                                      |         source: "qtlogo.png"         |
.. _sdk_qtquick_image_image2                              PreserveAspectFit-prop:
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
.. _sdk_qtquick_image_image3                              PreserveAspectCrop-prop:
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
.. _sdk_qtquick_image_image4                              Tile-prop:
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
.. _sdk_qtquick_image_image5                              TileVertically-prop:
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
.. _sdk_qtquick_image_image6                              TileHorizontally-prop:
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
Elements </sdk/apps/qml/QtQuick/imageelements/>`_ .

| 

.. _sdk_qtquick_image_horizontalAlignment-prop:

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

.. _sdk_qtquick_image_mipmap-prop:

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

**See also** :ref:`smooth <sdk_qtquick_image#smooth-prop>`.

| 

.. _sdk_qtquick_image_mirror-prop:

+--------------------------------------------------------------------------+
|        \ mirror : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image should be horizontally inverted
(effectively displaying a mirrored image).

The default value is false.

| 

.. _sdk_qtquick_image_paintedHeight-prop:

+--------------------------------------------------------------------------+
|        \ paintedHeight : real                                            |
+--------------------------------------------------------------------------+

These properties hold the size of the image that is actually painted. In
most cases it is the same as ``width`` and ``height``, but when using a
``fillMode`` ``PreserveAspectFit`` or ``fillMode``
``PreserveAspectCrop`` ``paintedWidth`` or ``paintedHeight`` can be
smaller or larger than ``width`` and ``height`` of the Image item.

| 

.. _sdk_qtquick_image_paintedWidth-prop:

+--------------------------------------------------------------------------+
|        \ paintedWidth : real                                             |
+--------------------------------------------------------------------------+

These properties hold the size of the image that is actually painted. In
most cases it is the same as ``width`` and ``height``, but when using a
``fillMode`` ``PreserveAspectFit`` or ``fillMode``
``PreserveAspectCrop`` ``paintedWidth`` or ``paintedHeight`` can be
smaller or larger than ``width`` and ``height`` of the Image item.

| 

.. _sdk_qtquick_image_progress-prop:

+--------------------------------------------------------------------------+
|        \ progress : real                                                 |
+--------------------------------------------------------------------------+

This property holds the progress of image loading, from 0.0 (nothing
loaded) to 1.0 (finished).

**See also** :ref:`status <sdk_qtquick_image#status-prop>`.

| 

.. _sdk_qtquick_image_smooth-prop:

+--------------------------------------------------------------------------+
|        \ smooth : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image is smoothly filtered when scaled
or transformed. Smooth filtering gives better visual quality, but it may
be slower on some hardware. If the image is displayed at its natural
size, this property has no visual or performance effect.

By default, this property is set to true.

**See also** :ref:`mipmap <sdk_qtquick_image#mipmap-prop>`.

| 

.. _sdk_qtquick_image_source-prop:

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

Image can handle any image format supported by Qt, loaded from any URL
scheme supported by Qt.

The URL may be absolute, or relative to the URL of the component.

**See also** QQuickImageProvider.

| 

.. _sdk_qtquick_image_sourceSize-prop:

+--------------------------------------------------------------------------+
|        \ sourceSize : QSize                                              |
+--------------------------------------------------------------------------+

This property holds the actual width and height of the loaded image.

Unlike the :ref:`width <sdk_qtquick_item#width-prop>` and
:ref:`height <sdk_qtquick_item#height-prop>` properties, which scale the
painting of the image, this property sets the actual number of pixels
stored for the loaded image so that large images do not use more memory
than necessary. For example, this ensures the image in memory is no
larger than 1024x1024 pixels, regardless of the Image's
:ref:`width <sdk_qtquick_item#width-prop>` and
:ref:`height <sdk_qtquick_item#height-prop>` values:

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
aspect ratio. (The :ref:`fillMode <sdk_qtquick_image#fillMode-prop>` is
independent of this.)

If both the sourceSize.width and sourceSize.height are set the image
will be scaled down to fit within the specified size, maintaining the
image's aspect ratio. The actual size of the image after scaling is
available via
:ref:`Item::implicitWidth <sdk_qtquick_item#implicitWidth-prop>` and
:ref:`Item::implicitHeight <sdk_qtquick_item#implicitHeight-prop>`.

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

.. _sdk_qtquick_image_status-prop:

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

**See also** :ref:`progress <sdk_qtquick_image#progress-prop>`.

| 

.. _sdk_qtquick_image_verticalAlignment-prop:

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

.. |image0| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo.png
.. |image1| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo-stretch.png
.. |image2| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo-preserveaspectfit.png
.. |image3| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo-preserveaspectcrop.png
.. |image4| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo-tile.png
.. |image5| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo-tilevertically.png
.. |image6| image:: /mediasdk_qtquick_imageimages/declarative-qtlogo-tilehorizontally.png


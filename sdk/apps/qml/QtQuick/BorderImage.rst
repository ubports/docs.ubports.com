.. _sdk_qtquick_borderimage:
QtQuick BorderImage
===================

Paints a border based on an image

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`Item <sdk_qtquick_item>`       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`asynchronous <sdk_qtquick_borderimage_asynchronous-prop>`
   : bool
-  :ref:`border <sdk_qtquick_borderimage_border-prop>`

   -  :ref:`border.left <sdk_qtquick_borderimage_border.left-prop>`
      : int
   -  :ref:`border.right <sdk_qtquick_borderimage_border.right-prop>`
      : int
   -  :ref:`border.top <sdk_qtquick_borderimage_border.top-prop>` :
      int
   -  :ref:`border.bottom <sdk_qtquick_borderimage_border.bottom-prop>`
      : int

-  :ref:`cache <sdk_qtquick_borderimage_cache-prop>` : bool
-  :ref:`horizontalTileMode <sdk_qtquick_borderimage_horizontalTileMode-prop>`
   : enumeration
-  :ref:`mirror <sdk_qtquick_borderimage_mirror-prop>` : bool
-  :ref:`progress <sdk_qtquick_borderimage_progress-prop>` : real
-  :ref:`smooth <sdk_qtquick_borderimage_smooth-prop>` : bool
-  :ref:`source <sdk_qtquick_borderimage_source-prop>` : url
-  :ref:`sourceSize <sdk_qtquick_borderimage_sourceSize-prop>` :
   QSize
-  :ref:`status <sdk_qtquick_borderimage_status-prop>` :
   enumeration
-  :ref:`verticalTileMode <sdk_qtquick_borderimage_verticalTileMode-prop>`
   : enumeration

Detailed Description
--------------------

The `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ 
type is used to create borders out of images by scaling or tiling parts
of each image.

A `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ 
breaks a source image, specified using the
:ref:`source <sdk_qtquick_borderimage#source-prop>` property, into 9
regions, as shown below:

|image0|

When the image is scaled, regions of the source image are scaled or
tiled to create the displayed border image in the following way:

-  The corners (regions 1, 3, 7, and 9) are not scaled at all.
-  Regions 2 and 8 are scaled according to
   :ref:`horizontalTileMode <sdk_qtquick_borderimage#horizontalTileMode-prop>`.
-  Regions 4 and 6 are scaled according to
   :ref:`verticalTileMode <sdk_qtquick_borderimage#verticalTileMode-prop>`.
-  The middle (region 5) is scaled according to both
   :ref:`horizontalTileMode <sdk_qtquick_borderimage#horizontalTileMode-prop>`
   and
   :ref:`verticalTileMode <sdk_qtquick_borderimage#verticalTileMode-prop>`.

The regions of the image are defined using the
:ref:`border <sdk_qtquick_borderimage#border-prop>` property group, which
describes the distance from each edge of the source image to use as a
border.

Example Usage
-------------

The following examples show the effects of the different modes on an
image. Guide lines are overlaid onto the image to show the different
regions of the image as described above.

|image1|

An unscaled image is displayed using an Image. The
:ref:`border <sdk_qtquick_borderimage#border-prop>` property is used to
determine the parts of the image that will lie inside the unscaled
corner areas and the parts that will be stretched horizontally and
vertically.

.. code:: qml

    Image {
        source: "pics/borderframe.png"
    }

| 

|image2|

A `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  is
used to display the image, and it is given a size that is larger than
the original image. Since the
:ref:`horizontalTileMode <sdk_qtquick_borderimage#horizontalTileMode-prop>`
property is set to
:ref:`BorderImage.Stretch <sdk_qtquick_borderimage#horizontalTileMode-prop>`,
the parts of image in regions 2 and 8 are stretched horizontally. Since
the :ref:`verticalTileMode <sdk_qtquick_borderimage#verticalTileMode-prop>`
property is set to
:ref:`BorderImage.Stretch <sdk_qtquick_borderimage#verticalTileMode-prop>`,
the parts of image in regions 4 and 6 are stretched vertically.

.. code:: qml

    BorderImage {
        width: 180; height: 180
        border { left: 30; top: 30; right: 30; bottom: 30 }
        horizontalTileMode: BorderImage.Stretch
        verticalTileMode: BorderImage.Stretch
        source: "pics/borderframe.png"
    }

| 

|image3|

Again, a large
`BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  is
used to display the image. With the
:ref:`horizontalTileMode <sdk_qtquick_borderimage#horizontalTileMode-prop>`
property set to
:ref:`BorderImage.Repeat <sdk_qtquick_borderimage#horizontalTileMode-prop>`,
the parts of image in regions 2 and 8 are tiled so that they fill the
space at the top and bottom of the item. Similarly, the
:ref:`verticalTileMode <sdk_qtquick_borderimage#verticalTileMode-prop>`
property is set to
:ref:`BorderImage.Repeat <sdk_qtquick_borderimage#verticalTileMode-prop>`,
the parts of image in regions 4 and 6 are tiled so that they fill the
space at the left and right of the item.

.. code:: qml

    BorderImage {
        width: 180; height: 180
        border { left: 30; top: 30; right: 30; bottom: 30 }
        horizontalTileMode: BorderImage.Repeat
        verticalTileMode: BorderImage.Repeat
        source: "pics/borderframe.png"
    }

| 

In some situations, the width of regions 2 and 8 may not be an exact
multiple of the width of the corresponding regions in the source image.
Similarly, the height of regions 4 and 6 may not be an exact multiple of
the height of the corresponding regions. It can be useful to use
:ref:`BorderImage.Round <sdk_qtquick_borderimage#horizontalTileMode-prop>`
instead of
:ref:`BorderImage.Repeat <sdk_qtquick_borderimage#horizontalTileMode-prop>`
in cases like these.

The Border Image example in `Qt Quick Examples - Image
Elements </sdk/apps/qml/QtQuick/imageelements/>`_  shows how a
`BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  can
be used to simulate a shadow effect on a rectangular item.

Image Loading
-------------

The source image may not be loaded instantaneously, depending on its
original location. Loading progress can be monitored with the
:ref:`progress <sdk_qtquick_borderimage#progress-prop>` property.

**See also** `Image </sdk/apps/qml/QtQuick/imageelements/#image>`_  and
:ref:`AnimatedImage <sdk_qtquick_animatedimage>`.

Property Documentation
----------------------

.. _sdk_qtquick_borderimage_asynchronous-prop:

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

.. _sdk_qtquick_borderimage_**border group**-prop:

+--------------------------------------------------------------------------+
|        \ **border group**                                                |
+==========================================================================+
.. _sdk_qtquick_borderimage_border.right-prop:
|        \ border.left : int                                               |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_borderimage_border.top-prop:
|        \ border.right : int                                              |
+--------------------------------------------------------------------------+
.. _sdk_qtquick_borderimage_border.bottom-prop:
|        \ border.top : int                                                |
+--------------------------------------------------------------------------+
|        \ border.bottom : int                                             |
+--------------------------------------------------------------------------+

The 4 border lines (2 horizontal and 2 vertical) break the image into 9
sections, as shown below:

|image4|

Each border line (left, right, top, and bottom) specifies an offset in
pixels from the respective edge of the source image. By default, each
border line has a value of 0.

For example, the following definition sets the bottom line 10 pixels up
from the bottom of the image:

.. code:: qml

    BorderImage {
        border.bottom: 10
        // ...
    }

The border lines can also be specified using a `.sci
file <sdk_qtquick_borderimage#source-prop>:ref:`.

| 

.. _sdk_qtquick_borderimage_cache-prop:

+--------------------------------------------------------------------------+
|        \ cache : bool                                                    |
+--------------------------------------------------------------------------+

Specifies whether the image should be cached. The default value is true.
Setting *cache* to false is useful when dealing with large images, to
make sure that they aren't cached at the expense of small 'ui element'
images.

| 

.. _sdk_qtquick_borderimage_horizontalTileMode-prop:

+--------------------------------------------------------------------------+
|        \ horizontalTileMode : enumeration                                |
+--------------------------------------------------------------------------+

This property describes how to repeat or stretch the middle parts of the
border image.

-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Stretch
   - Scales the image to fit to the available area.
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Repeat
   - Tile the image until there is no more space. May crop the last
   image.
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Round
   - Like Repeat, but scales the images down to ensure that the last
   image is not cropped.

The default tile mode for each property is
`BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Stretch.

| 

.. _sdk_qtquick_borderimage_mirror-prop:

+--------------------------------------------------------------------------+
|        \ mirror : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image should be horizontally inverted
(effectively displaying a mirrored image).

The default value is false.

| 

.. _sdk_qtquick_borderimage_progress-prop:

+--------------------------------------------------------------------------+
|        \ progress : real                                                 |
+--------------------------------------------------------------------------+

This property holds the progress of image loading, from 0.0 (nothing
loaded) to 1.0 (finished).

**See also** :ref:`status <sdk_qtquick_borderimage#status-prop>`.

| 

.. _sdk_qtquick_borderimage_smooth-prop:

+--------------------------------------------------------------------------+
|        \ smooth : bool                                                   |
+--------------------------------------------------------------------------+

This property holds whether the image is smoothly filtered when scaled
or transformed. Smooth filtering gives better visual quality, but it may
be slower on some hardware. If the image is displayed at its natural
size, this property has no visual or performance effect.

By default, this property is set to true.

| 

.. _sdk_qtquick_borderimage_source-prop:

+--------------------------------------------------------------------------+
|        \ source : url                                                    |
+--------------------------------------------------------------------------+

This property holds the URL that refers to the source image.

`BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_  can
handle any image format supported by Qt, loaded from any URL scheme
supported by Qt.

This property can also be used to refer to .sci files, which are written
in a QML-specific, text-based format that specifies the borders, the
image file and the tile rules for a given border image.

The following .sci file sets the borders to 10 on each side for the
image ``picture.png``:

.. code:: cpp

    border.left: 10
    border.top: 10
    border.bottom: 10
    border.right: 10
    source: "picture.png"

The URL may be absolute, or relative to the URL of the component.

**See also** QQuickImageProvider.

| 

.. _sdk_qtquick_borderimage_sourceSize-prop:

+--------------------------------------------------------------------------+
|        \ sourceSize : QSize                                              |
+--------------------------------------------------------------------------+

This property holds the actual width and height of the loaded image.

In `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ ,
this property is read-only.

**See also** :ref:`Image::sourceSize <sdk_qtquick_image#sourceSize-prop>`.

| 

.. _sdk_qtquick_borderimage_status-prop:

+--------------------------------------------------------------------------+
|        \ status : enumeration                                            |
+--------------------------------------------------------------------------+

This property describes the status of image loading. It can be one of:

-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Null
   - no image has been set
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Ready
   - the image has been loaded
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Loading
   - the image is currently being loaded
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Error
   - an error occurred while loading the image

**See also** :ref:`progress <sdk_qtquick_borderimage#progress-prop>`.

| 

.. _sdk_qtquick_borderimage_verticalTileMode-prop:

+--------------------------------------------------------------------------+
|        \ verticalTileMode : enumeration                                  |
+--------------------------------------------------------------------------+

This property describes how to repeat or stretch the middle parts of the
border image.

-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Stretch
   - Scales the image to fit to the available area.
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Repeat
   - Tile the image until there is no more space. May crop the last
   image.
-  `BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Round
   - Like Repeat, but scales the images down to ensure that the last
   image is not cropped.

The default tile mode for each property is
`BorderImage </sdk/apps/qml/QtQuick/imageelements/#borderimage>`_ .Stretch.

| 

.. |image0| image:: /mediasdk_qtquick_borderimageimages/declarative-scalegrid.png
.. |image1| image:: /mediasdk_qtquick_borderimageimages/qml-borderimage-normal-image.png
.. |image2| image:: /mediasdk_qtquick_borderimageimages/qml-borderimage-scaled.png
.. |image3| image:: /mediasdk_qtquick_borderimageimages/qml-borderimage-tiled.png
.. |image4| image:: /mediasdk_qtquick_borderimageimages/declarative-scalegrid.png


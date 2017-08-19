QtQuick.BorderImage
===================

.. raw:: html

   <p>

Paints a border based on an image More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BorderImage -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

asynchronous : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

border

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

border.left : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

border.right : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

border.top : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

border.bottom : int

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

cache : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

horizontalTileMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mirror : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

progress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

smooth : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceSize : QSize

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

verticalTileMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$BorderImage-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The BorderImage type is used to create borders out of images by scaling
or tiling parts of each image.

.. raw:: html

   </p>

.. raw:: html

   <p>

A BorderImage breaks a source image, specified using the source
property, into 9 regions, as shown below:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

When the image is scaled, regions of the source image are scaled or
tiled to create the displayed border image in the following way:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The corners (regions 1, 3, 7, and 9) are not scaled at all.

.. raw:: html

   </li>

.. raw:: html

   <li>

Regions 2 and 8 are scaled according to horizontalTileMode.

.. raw:: html

   </li>

.. raw:: html

   <li>

Regions 4 and 6 are scaled according to verticalTileMode.

.. raw:: html

   </li>

.. raw:: html

   <li>

The middle (region 5) is scaled according to both horizontalTileMode and
verticalTileMode.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The regions of the image are defined using the border property group,
which describes the distance from each edge of the source image to use
as a border.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following examples show the effects of the different modes on an
image. Guide lines are overlaid onto the image to show the different
regions of the image as described above.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

An unscaled image is displayed using an Image. The border property is
used to determine the parts of the image that will lie inside the
unscaled corner areas and the parts that will be stretched horizontally
and vertically.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;pics/borderframe.png&quot;</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

A BorderImage is used to display the image, and it is given a size that
is larger than the original image. Since the horizontalTileMode property
is set to BorderImage.Stretch, the parts of image in regions 2 and 8 are
stretched horizontally. Since the verticalTileMode property is set to
BorderImage.Stretch, the parts of image in regions 4 and 6 are stretched
vertically.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BorderImage</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">180</span>
   <span class="type">border</span> { <span class="name">left</span>: <span class="number">30</span>; <span class="name">top</span>: <span class="number">30</span>; <span class="name">right</span>: <span class="number">30</span>; <span class="name">bottom</span>: <span class="number">30</span> }
   <span class="name">horizontalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Stretch</span>
   <span class="name">verticalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Stretch</span>
   <span class="name">source</span>: <span class="string">&quot;pics/borderframe.png&quot;</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Again, a large BorderImage is used to display the image. With the
horizontalTileMode property set to BorderImage.Repeat, the parts of
image in regions 2 and 8 are tiled so that they fill the space at the
top and bottom of the item. Similarly, the verticalTileMode property is
set to BorderImage.Repeat, the parts of image in regions 4 and 6 are
tiled so that they fill the space at the left and right of the item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BorderImage</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">180</span>
   <span class="type">border</span> { <span class="name">left</span>: <span class="number">30</span>; <span class="name">top</span>: <span class="number">30</span>; <span class="name">right</span>: <span class="number">30</span>; <span class="name">bottom</span>: <span class="number">30</span> }
   <span class="name">horizontalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Repeat</span>
   <span class="name">verticalTileMode</span>: <span class="name">BorderImage</span>.<span class="name">Repeat</span>
   <span class="name">source</span>: <span class="string">&quot;pics/borderframe.png&quot;</span>
   }</pre>

.. raw:: html

   <p>

In some situations, the width of regions 2 and 8 may not be an exact
multiple of the width of the corresponding regions in the source image.
Similarly, the height of regions 4 and 6 may not be an exact multiple of
the height of the corresponding regions. It can be useful to use
BorderImage.Round instead of BorderImage.Repeat in cases like these.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Border Image example in Qt Quick Examples - Image Elements shows how
a BorderImage can be used to simulate a shadow effect on a rectangular
item.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="image-loading">

Image Loading

.. raw:: html

   </h2>

.. raw:: html

   <p>

The source image may not be loaded instantaneously, depending on its
original location. Loading progress can be monitored with the progress
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Image and AnimatedImage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@BorderImage -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="asynchronous-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

asynchronous : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Specifies that images on the local filesystem should be loaded
asynchronously in a separate thread. The default value is false, causing
the user interface thread to block while the image is loaded. Setting
asynchronous to true is useful where maintaining a responsive user
interface is more desirable than having images immediately visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that this property is only valid for images read from the local
filesystem. Images loaded via a network resource (e.g. HTTP) are always
loaded asynchronously.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="border-prop">

.. raw:: html

   <th class="centerAlign">

.. raw:: html

   <p>

border group

.. raw:: html

   </p>

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="border.left-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

border.left : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="border.right-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

border.right : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="border.top-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

border.top : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top" id="border.bottom-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

border.bottom : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The 4 border lines (2 horizontal and 2 vertical) break the image into 9
sections, as shown below:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Each border line (left, right, top, and bottom) specifies an offset in
pixels from the respective edge of the source image. By default, each
border line has a value of 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following definition sets the bottom line 10 pixels up
from the bottom of the image:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">BorderImage</a></span> {
   <span class="name">border</span>.bottom: <span class="number">10</span>
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <p>

The border lines can also be specified using a .sci file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@border -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="cache-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

cache : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Specifies whether the image should be cached. The default value is true.
Setting cache to false is useful when dealing with large images, to make
sure that they aren't cached at the expense of small 'ui element'
images.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@cache -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="horizontalTileMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

horizontalTileMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property describes how to repeat or stretch the middle parts of the
border image.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

BorderImage.Stretch - Scales the image to fit to the available area.

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Repeat - Tile the image until there is no more space. May
crop the last image.

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Round - Like Repeat, but scales the images down to ensure
that the last image is not cropped.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default tile mode for each property is BorderImage.Stretch.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@horizontalTileMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mirror-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mirror : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the image should be horizontally inverted
(effectively displaying a mirrored image).

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is false.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mirror -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="progress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

progress : real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the progress of image loading, from 0.0 (nothing
loaded) to 1.0 (finished).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also status.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="smooth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

smooth : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether the image is smoothly filtered when scaled
or transformed. Smooth filtering gives better visual quality, but it may
be slower on some hardware. If the image is displayed at its natural
size, this property has no visual or performance effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is set to true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@smooth -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the URL that refers to the source image.

.. raw:: html

   </p>

.. raw:: html

   <p>

BorderImage can handle any image format supported by Qt, loaded from any
URL scheme supported by Qt.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property can also be used to refer to .sci files, which are written
in a QML-specific, text-based format that specifies the borders, the
image file and the tile rules for a given border image.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following .sci file sets the borders to 10 on each side for the
image picture.png:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">border<span class="operator">.</span>left: <span class="number">10</span>
   border<span class="operator">.</span>top: <span class="number">10</span>
   border<span class="operator">.</span>bottom: <span class="number">10</span>
   border<span class="operator">.</span>right: <span class="number">10</span>
   source: <span class="string">&quot;picture.png&quot;</span></pre>

.. raw:: html

   <p>

The URL may be absolute, or relative to the URL of the component.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QQuickImageProvider.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceSize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceSize : QSize

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the actual width and height of the loaded image.

.. raw:: html

   </p>

.. raw:: html

   <p>

In BorderImage, this property is read-only.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Image::sourceSize.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceSize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property describes the status of image loading. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

BorderImage.Null - no image has been set

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Ready - the image has been loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Loading - the image is currently being loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Error - an error occurred while loading the image

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="verticalTileMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

verticalTileMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property describes how to repeat or stretch the middle parts of the
border image.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

BorderImage.Stretch - Scales the image to fit to the available area.

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Repeat - Tile the image until there is no more space. May
crop the last image.

.. raw:: html

   </li>

.. raw:: html

   <li>

BorderImage.Round - Like Repeat, but scales the images down to ensure
that the last image is not cropped.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default tile mode for each property is BorderImage.Stretch.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verticalTileMode -->



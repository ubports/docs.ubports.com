QtQuick.Image
=============

.. raw:: html

   <p>

Displays an image More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Image -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherited By:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

AnimatedImage.

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

cache : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fillMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

horizontalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mipmap : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

mirror : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paintedHeight : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paintedWidth : real

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

verticalAlignment : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Image-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Image type displays an image.

.. raw:: html

   </p>

.. raw:: html

   <p>

The source of the image is specified as a URL using the source property.
Images can be supplied in any of the standard image formats supported by
Qt, including bitmap formats such as PNG and JPEG, and vector graphics
formats such as SVG. If you need to display animated images, use
AnimatedSprite or AnimatedImage.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the width and height properties are not specified, the Image
automatically uses the size of the loaded image. By default, specifying
the width and height of the item causes the image to be scaled to that
size. This behavior can be changed by setting the fillMode property,
allowing the image to be stretched and tiled instead.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows the simplest usage of the Image type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">Image</a></span> {
   <span class="name">source</span>: <span class="string">&quot;pics/qtlogo.png&quot;</span>
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <h2 id="performance">

Performance

.. raw:: html

   </h2>

.. raw:: html

   <p>

By default, locally available images are loaded immediately, and the
user interface is blocked until loading is complete. If a large image is
to be loaded, it may be preferable to load the image in a low priority
thread, by enabling the asynchronous property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the image is obtained from a network rather than a local resource, it
is automatically loaded asynchronously, and the progress and status
properties are updated as appropriate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Images are cached and shared internally, so if several Image items have
the same source, only one copy of the image will be loaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Images are often the greatest user of memory in QML user
interfaces. It is recommended that images which do not form part of the
user interface have their size bounded via the sourceSize property. This
is especially important for content that is loaded from external sources
or provided by the user.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick Examples - Image Elements and QQuickImageProvider.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Image -->

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

   <tr valign="top" id="fillMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fillMode : enumeration

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

Set this property to define what happens when the source image has a
different size than the item.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Image.Stretch - the image is scaled to fit

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.PreserveAspectFit - the image is scaled uniformly to fit without
cropping

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.PreserveAspectCrop - the image is scaled uniformly to fill,
cropping if necessary

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.Tile - the image is duplicated horizontally and vertically

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.TileVertically - the image is stretched horizontally and tiled
vertically

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.TileHorizontally - the image is stretched vertically and tiled
horizontally

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.Pad - the image is not transformed

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

Stretch (default)

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

PreserveAspectFit

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectFit</span>
   <span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

PreserveAspectCrop

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectCrop</span>
   <span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
   <span class="name">clip</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

Tile

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">Tile</span>
   <span class="name">horizontalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignLeft</span>
   <span class="name">verticalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignTop</span>
   <span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

TileVertically

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">TileVertically</span>
   <span class="name">verticalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignTop</span>
   <span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td>

TileHorizontally

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">TileHorizontally</span>
   <span class="name">verticalAlignment</span>: <span class="name">Image</span>.<span class="name">AlignLeft</span>
   <span class="name">source</span>: <span class="string">&quot;qtlogo.png&quot;</span>
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note that clip is false by default which means that the item might paint
outside its bounding rectangle even if the fillMode is set to
PreserveAspectCrop.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick Examples - Image Elements.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="horizontalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

horizontalAlignment : enumeration

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

Sets the horizontal and vertical alignment of the image. By default, the
image is center aligned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are Image.AlignLeft,
Image.AlignRight and Image.AlignHCenter. The valid values for
verticalAlignment are Image.AlignTop, Image.AlignBottom and
Image.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@horizontalAlignment -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mipmap-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mipmap : bool

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

This property holds whether the image uses mipmap filtering when scaled
or transformed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Mipmap filtering gives better visual quality when scaling down compared
to smooth, but it may come at a performance cost (both when initializing
the image and during rendering).

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is set to false.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in Qt 5.3.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also smooth.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mipmap -->

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

   <tr valign="top" id="paintedHeight-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

paintedHeight : real

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

These properties hold the size of the image that is actually painted. In
most cases it is the same as width and height, but when using a fillMode
PreserveAspectFit or fillMode PreserveAspectCrop paintedWidth or
paintedHeight can be smaller or larger than width and height of the
Image item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paintedHeight -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="paintedWidth-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

paintedWidth : real

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

These properties hold the size of the image that is actually painted. In
most cases it is the same as width and height, but when using a fillMode
PreserveAspectFit or fillMode PreserveAspectCrop paintedWidth or
paintedHeight can be smaller or larger than width and height of the
Image item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paintedWidth -->

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

   <p>

See also mipmap.

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

Image can handle any image format supported by Qt, loaded from any URL
scheme supported by Qt.

.. raw:: html

   </p>

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

Unlike the width and height properties, which scale the painting of the
image, this property sets the actual number of pixels stored for the
loaded image so that large images do not use more memory than necessary.
For example, this ensures the image in memory is no larger than
1024x1024 pixels, regardless of the Image's width and height values:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Rectangle {
   width: <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   height: <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   Image {
   anchors<span class="operator">.</span>fill: parent
   source: <span class="string">&quot;reallyBigImage.jpg&quot;</span>
   sourceSize<span class="operator">.</span>width: <span class="number">1024</span>
   sourceSize<span class="operator">.</span>height: <span class="number">1024</span>
   }
   }</pre>

.. raw:: html

   <p>

If the image's actual size is larger than the sourceSize, the image is
scaled down. If only one dimension of the size is set to greater than 0,
the other dimension is set in proportion to preserve the source image's
aspect ratio. (The fillMode is independent of this.)

.. raw:: html

   </p>

.. raw:: html

   <p>

If both the sourceSize.width and sourceSize.height are set the image
will be scaled down to fit within the specified size, maintaining the
image's aspect ratio. The actual size of the image after scaling is
available via Item::implicitWidth and Item::implicitHeight.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the source is an intrinsically scalable image (eg. SVG), this
property determines the size of the loaded image regardless of intrinsic
size. Avoid changing this property dynamically; rendering an SVG is slow
compared to an image.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the source is a non-scalable image (eg. JPEG), the loaded image will
be no greater than this property specifies. For some formats (currently
only JPEG), the whole image will never actually be loaded into memory.

.. raw:: html

   </p>

.. raw:: html

   <p>

sourceSize can be cleared to the natural size of the image by setting
sourceSize to undefined.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Changing this property dynamically causes the image source to be
reloaded, potentially even from the network, if it is not in the disk
cache.

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

This property holds the status of image loading. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Image.Null - no image has been set

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.Ready - the image has been loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.Loading - the image is currently being loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

Image.Error - an error occurred while loading the image

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Use this status to provide an update or respond to the status change in
some way. For example, you could:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Trigger a state change:

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">'loaded'</span>; <span class="name">when</span>: <span class="name">image</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span> }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Implement an onStatusChanged signal handler:

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Image</a></span> {
   <span class="name">id</span>: <span class="name">image</span>
   <span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">image</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Bind to the status value:

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">image</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span> ? <span class="string">'Loaded'</span> : <span class="string">'Not loaded'</span> }</pre>

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

   <tr valign="top" id="verticalAlignment-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

verticalAlignment : enumeration

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

Sets the horizontal and vertical alignment of the image. By default, the
image is center aligned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The valid values for horizontalAlignment are Image.AlignLeft,
Image.AlignRight and Image.AlignHCenter. The valid values for
verticalAlignment are Image.AlignTop, Image.AlignBottom and
Image.AlignVCenter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@verticalAlignment -->



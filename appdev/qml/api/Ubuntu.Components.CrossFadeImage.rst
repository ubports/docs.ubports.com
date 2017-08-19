Ubuntu.Components.CrossFadeImage
================================

.. raw:: html

   <p>

An Image like component which smoothly fades when its source is updated.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CrossFadeImage -->

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

import .

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

fadeDuration : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fadeStyle : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fillMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

running : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceSize : size

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CrossFadeImage-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="index.html">CrossFadeImage</a></span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">75</span>)
   <span class="name">source</span>: <span class="string">&quot;http://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png&quot;</span>
   <span class="name">fadeDuration</span>: <span class="number">1000</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">parent</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;http://design.ubuntu.com/wp-content/uploads/canonical-logo1.png&quot;</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@CrossFadeImage -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$fadeDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fadeDuration-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fadeDuration : int

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

The time over which to fade between images. Defaults to
UbuntuAnimation.FastDuration.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also UbuntuAnimation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fadeDuration -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fadeStyle-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fadeStyle : string

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

Style of the fade effect

.. raw:: html

   </p>

.. raw:: html

   <p>

Defaults to overlay

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

overlay - the new fading image overlays the current one

.. raw:: html

   </li>

.. raw:: html

   <li>

cross - the current one fades out while the new image fades in

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This QML property was introduced in Ubuntu.Components 1.1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fadeStyle -->

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

Defaults to Image.PreserveAspectFit

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

   <!-- @@@fillMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="running-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

running : bool

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

Whether the animation is running

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->

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

The image being displayed. Can be a URL to any image format supported by
Qt.

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

sourceSize : size

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

The actual width and height of the loaded image This property holds the
actual width and height of the loaded image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Unlike the width and height properties, which scale the painting of the
image, this property sets the actual number of pixels stored for the
loaded image so that large images do not use more memory than necessary.

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

   <!-- @@@status -->



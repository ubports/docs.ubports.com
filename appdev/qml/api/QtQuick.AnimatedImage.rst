QtQuick.AnimatedImage
=====================

.. raw:: html

   <p>

Plays animations stored as a series of images More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnimatedImage -->

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

Image

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

currentFrame : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

frameCount : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

paused : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

playing : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AnimatedImage-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AnimatedImage type extends the features of the Image type, providing
a way to play animations stored as images containing a series of frames,
such as those stored in GIF files.

.. raw:: html

   </p>

.. raw:: html

   <p>

Information about the current frame and total length of the animation
can be obtained using the currentFrame and frameCount properties. You
can start, pause and stop the animation by changing the values of the
playing and paused properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The full list of supported formats can be determined with
QMovie::supportedFormats().

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The following QML shows how to display an animated image and obtain
information about its state, such as the current frame and total number
of frames. The result is an animated image with a simple progress
indicator underneath it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: Unlike images, animated images are not cached or shared
internally.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="name">animation</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">animation</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">8</span>
   <span class="type"><a href="index.html">AnimatedImage</a></span> { <span class="name">id</span>: <span class="name">animation</span>; <span class="name">source</span>: <span class="string">&quot;animation.gif&quot;</span> }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   property <span class="type">int</span> <span class="name">frames</span>: <span class="name">animation</span>.<span class="name">frameCount</span>
   <span class="name">width</span>: <span class="number">4</span>; <span class="name">height</span>: <span class="number">8</span>
   <span class="name">x</span>: (<span class="name">animation</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">width</span>) <span class="operator">*</span> <span class="name">animation</span>.<span class="name">currentFrame</span> <span class="operator">/</span> <span class="name">frames</span>
   <span class="name">y</span>: <span class="name">animation</span>.<span class="name">height</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

See also BorderImage and Image.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AnimatedImage -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$currentFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="currentFrame-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

currentFrame : int

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

currentFrame is the frame that is currently visible. By monitoring this
property for changes, you can animate other items at the same time as
the image.

.. raw:: html

   </p>

.. raw:: html

   <p>

frameCount is the number of frames in the animation. For some animation
formats, frameCount is unknown and has a value of zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@currentFrame -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="frameCount-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

frameCount : int

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

currentFrame is the frame that is currently visible. By monitoring this
property for changes, you can animate other items at the same time as
the image.

.. raw:: html

   </p>

.. raw:: html

   <p>

frameCount is the number of frames in the animation. For some animation
formats, frameCount is unknown and has a value of zero.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@frameCount -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="paused-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

paused : bool

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

This property holds whether the animated image is paused.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is false. Set it to true when you want to
pause the animation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@paused -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="playing-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

playing : bool

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

This property holds whether the animated image is playing.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, this property is true, meaning that the animation will start
playing immediately.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: this property is affected by changes to the actual playing state
of AnimatedImage. If non-animated images are used, playing will need to
be manually set to true in order to animate following images.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">AnimatedImage</a></span> {
   <span class="name">onStatusChanged</span>: <span class="name">playing</span> <span class="operator">=</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">AnimatedImage</span>.<span class="name">Ready</span>)
   }</pre>

.. raw:: html

   <!-- @@@playing -->

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

AnimatedImage can handle any image format supported by Qt, loaded from
any URL scheme supported by Qt.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QQuickImageProvider.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->



QtMultimedia.VideoOutput
========================

.. raw:: html

   <p>

Render video or camera viewfinder. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@VideoOutput -->

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

import QtMultimedia 5.4

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

autoOrientation : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contentRect : rectangle

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

fillMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

orientation : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceRect : rectangle

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

QPointF mapNormalizedPointToItem(const QPointF & point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QRectF mapNormalizedRectToItem(const QRectF & rectangle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QPointF mapPointToItem(const QPointF & point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QPointF mapPointToSource(const QPointF & point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QPointF mapPointToSourceNormalized(const QPointF & point)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QRectF mapRectToItem(const QRectF & rectangle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QRectF mapRectToSource(const QRectF & rectangle)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QRectF mapRectToSourceNormalized(const QRectF & rectangle)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$VideoOutput-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

VideoOutput is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">800</span>
   <span class="name">height</span>: <span class="number">600</span>
   <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
   <span class="type"><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></span> {
   <span class="name">id</span>: <span class="name">player</span>
   <span class="name">source</span>: <span class="string">&quot;file://video.webm&quot;</span>
   <span class="name">autoPlay</span>: <span class="number">true</span>
   }
   <span class="type"><a href="index.html">VideoOutput</a></span> {
   <span class="name">id</span>: <span class="name">videoOutput</span>
   <span class="name">source</span>: <span class="name">player</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   }</pre>

.. raw:: html

   <p>

The VideoOutput item supports untransformed, stretched, and uniformly
scaled video presentation. For a description of stretched uniformly
scaled presentation, see the fillMode property description.

.. raw:: html

   </p>

.. raw:: html

   <p>

The VideoOutput item works with backends that support either
QVideoRendererControl or QVideoWindowControl. If the backend only
supports QVideoWindowControl, the video is rendered onto an overlay
window that is layered on top of the QtQuick window. Due to the nature
of the video overlays, certain features are not available for these kind
of backends:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Some transformations like rotations

.. raw:: html

   </li>

.. raw:: html

   <li>

Having other QtQuick items on top of the VideoOutput item

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Most backends however do support QVideoRendererControl and therefore
don't have the limitations listed above.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also MediaPlayer and Camera.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@VideoOutput -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$autoOrientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="autoOrientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

autoOrientation : bool

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

This property allows you to enable and disable auto orientation of the
video stream, so that its orientation always matches the orientation of
the screen. If autoOrientation is enabled, the orientation property is
overwritten.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default autoOrientation is disabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

This QML property was introduced in QtMultimedia 5.2.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also orientation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@autoOrientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contentRect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contentRect : rectangle

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

This property holds the item coordinates of the area that would contain
video to render. With certain fill modes, this rectangle will be larger
than the visible area of the VideoOutput.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property is useful when other coordinates are specified in terms of
the source dimensions - this applied for relative (normalized) frame
coordinates in the range of 0 to 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Areas outside this will be transparent.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also mapRectToItem() and mapPointToItem().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contentRect -->

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

Set this property to define how the video is scaled to fit the target
area.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Stretch - the video is scaled to fit.

.. raw:: html

   </li>

.. raw:: html

   <li>

PreserveAspectFit - the video is scaled uniformly to fit without
cropping

.. raw:: html

   </li>

.. raw:: html

   <li>

PreserveAspectCrop - the video is scaled uniformly to fill, cropping if
necessary

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The default fill mode is PreserveAspectFit.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fillMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="orientation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

orientation : int

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

In some cases the source video stream requires a certain orientation to
be correct. This includes sources like a camera viewfinder, where the
displayed viewfinder should match reality, no matter what rotation the
rest of the user interface has.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property allows you to apply a rotation (in steps of 90 degrees) to
compensate for any user interface rotation, with positive values in the
anti-clockwise direction.

.. raw:: html

   </p>

.. raw:: html

   <p>

The orientation change will also affect the mapping of coordinates from
source to viewport.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also autoOrientation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@orientation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : variant

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

This property holds the source item providing the video frames like
MediaPlayer or Camera.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you are extending your own C++ classes to interoperate with
VideoOutput, you can either provide a QObject based class with a
mediaObject property that exposes a QMediaObject derived class that has
a QVideoRendererControl available, or you can provide a QObject based
class with a writable videoSurface property that can accept a
QAbstractVideoSurface based class and can follow the correct protocol to
deliver QVideoFrames to it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceRect-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceRect : rectangle

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

This property holds the area of the source video content that is
considered for rendering. The values are in source pixel coordinates,
adjusted for the source's pixel aspect ratio.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that typically the top left corner of this rectangle will be 0,0
while the width and height will be the width and height of the input
content. Only when the video source has a viewport set, these values
will differ.

.. raw:: html

   </p>

.. raw:: html

   <p>

The orientation setting does not affect this rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QVideoSurfaceFormat::pixelAspectRatio() and
QVideoSurfaceFormat::viewport().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceRect -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$mapNormalizedPointToItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapNormalizedPointToItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QPointF mapNormalizedPointToItem(const QPointF & point) const

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

Given normalized coordinates point (that is, each component in the range
of 0 to 1.0), return the mapped point that it corresponds to (in item
coordinates). This mapping is affected by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Depending on the fill mode, this point may lie outside the rendered
rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapNormalizedPointToItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapNormalizedRectToItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QRectF mapNormalizedRectToItem(const QRectF & rectangle) const

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

Given a rectangle rectangle in normalized coordinates (that is, each
component in the range of 0 to 1.0), return the mapped rectangle that it
corresponds to (in item coordinates). This mapping is affected by the
orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Depending on the fill mode, this rectangle may extend outside the
rendered rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapNormalizedRectToItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapPointToItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QPointF mapPointToItem(const QPointF & point) const

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

Given a point point in source coordinates, return the corresponding
point in item coordinates. This mapping is affected by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Depending on the fill mode, this point may lie outside the rendered
rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapPointToItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapPointToSource-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QPointF mapPointToSource(const QPointF & point) const

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

Given a point point in item coordinates, return the corresponding point
in source coordinates. This mapping is affected by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapPointToSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapPointToSourceNormalized-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QPointF mapPointToSourceNormalized(const QPointF & point) const

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

Given a point point in item coordinates, return the corresponding point
in normalized source coordinates. This mapping is affected by the
orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle. No clamping is performed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapPointToSourceNormalized -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapRectToItem-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QRectF mapRectToItem(const QRectF & rectangle) const

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

Given a rectangle rectangle in source coordinates, return the
corresponding rectangle in item coordinates. This mapping is affected by
the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

Depending on the fill mode, this rectangle may extend outside the
rendered rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapRectToItem -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapRectToSource-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QRectF mapRectToSource(const QRectF & rectangle) const

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

Given a rectangle rectangle in item coordinates, return the
corresponding rectangle in source coordinates. This mapping is affected
by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

This mapping is affected by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapRectToSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mapRectToSourceNormalized-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QRectF mapRectToSourceNormalized(const QRectF & rectangle) const

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

Given a rectangle rectangle in item coordinates, return the
corresponding rectangle in normalized source coordinates. This mapping
is affected by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

This mapping is affected by the orientation.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle. No clamping is performed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@mapRectToSourceNormalized -->



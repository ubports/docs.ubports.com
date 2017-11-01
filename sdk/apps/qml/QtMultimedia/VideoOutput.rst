Render video or camera viewfinder.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`autoOrientation </sdk/apps/qml/QtMultimedia/VideoOutput#autoOrientation-prop>`__****
   : bool
-  ****`contentRect </sdk/apps/qml/QtMultimedia/VideoOutput#contentRect-prop>`__****
   : rectangle
-  ****`fillMode </sdk/apps/qml/QtMultimedia/VideoOutput#fillMode-prop>`__****
   : enumeration
-  ****`orientation </sdk/apps/qml/QtMultimedia/VideoOutput#orientation-prop>`__****
   : int
-  ****`source </sdk/apps/qml/QtMultimedia/VideoOutput#source-prop>`__****
   : variant
-  ****`sourceRect </sdk/apps/qml/QtMultimedia/VideoOutput#sourceRect-prop>`__****
   : rectangle

Methods
-------

-  QPointF
   ****`mapNormalizedPointToItem </sdk/apps/qml/QtMultimedia/VideoOutput#mapNormalizedPointToItem-method>`__****\ (const
   QPointF & *point*)
-  QRectF
   ****`mapNormalizedRectToItem </sdk/apps/qml/QtMultimedia/VideoOutput#mapNormalizedRectToItem-method>`__****\ (const
   QRectF & *rectangle*)
-  QPointF
   ****`mapPointToItem </sdk/apps/qml/QtMultimedia/VideoOutput#mapPointToItem-method>`__****\ (const
   QPointF & *point*)
-  QPointF
   ****`mapPointToSource </sdk/apps/qml/QtMultimedia/VideoOutput#mapPointToSource-method>`__****\ (const
   QPointF & *point*)
-  QPointF
   ****`mapPointToSourceNormalized </sdk/apps/qml/QtMultimedia/VideoOutput#mapPointToSourceNormalized-method>`__****\ (const
   QPointF & *point*)
-  QRectF
   ****`mapRectToItem </sdk/apps/qml/QtMultimedia/VideoOutput#mapRectToItem-method>`__****\ (const
   QRectF & *rectangle*)
-  QRectF
   ****`mapRectToSource </sdk/apps/qml/QtMultimedia/VideoOutput#mapRectToSource-method>`__****\ (const
   QRectF & *rectangle*)
-  QRectF
   ****`mapRectToSourceNormalized </sdk/apps/qml/QtMultimedia/VideoOutput#mapRectToSourceNormalized-method>`__****\ (const
   QRectF & *rectangle*)

Detailed Description
--------------------

``VideoOutput`` is part of the **QtMultimedia 5.0** module.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Rectangle {
        width: 800
        height: 600
        color: "black"
        MediaPlayer {
            id: player
            source: "file://video.webm"
            autoPlay: true
        }
        VideoOutput {
            id: videoOutput
            source: player
            anchors.fill: parent
        }
    }

The `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__ item
supports untransformed, stretched, and uniformly scaled video
presentation. For a description of stretched uniformly scaled
presentation, see the
`fillMode </sdk/apps/qml/QtMultimedia/VideoOutput#fillMode-prop>`__
property description.

The VideoOutput item works with backends that support either
QVideoRendererControl or QVideoWindowControl. If the backend only
supports QVideoWindowControl, the video is rendered onto an overlay
window that is layered on top of the QtQuick window. Due to the nature
of the video overlays, certain features are not available for these kind
of backends:

-  Some transformations like rotations
-  Having other QtQuick items on top of the
   `VideoOutput </sdk/apps/qml/QtMultimedia/VideoOutput/>`__ item

Most backends however do support QVideoRendererControl and therefore
don't have the limitations listed above.

**See also** `MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__
and `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ autoOrientation : bool                                          |
+--------------------------------------------------------------------------+

This property allows you to enable and disable auto orientation of the
video stream, so that its orientation always matches the orientation of
the screen. If ``autoOrientation`` is enabled, the ``orientation``
property is overwritten.

By default ``autoOrientation`` is disabled.

This QML property was introduced in QtMultimedia 5.2.

**See also**
`orientation </sdk/apps/qml/QtMultimedia/VideoOutput#orientation-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ contentRect : rectangle                                         |
+--------------------------------------------------------------------------+

This property holds the item coordinates of the area that would contain
video to render. With certain fill modes, this rectangle will be larger
than the visible area of the ``VideoOutput``.

This property is useful when other coordinates are specified in terms of
the source dimensions - this applied for relative (normalized) frame
coordinates in the range of 0 to 1.0.

Areas outside this will be transparent.

**See also**
`mapRectToItem() </sdk/apps/qml/QtMultimedia/VideoOutput#mapRectToItem-method>`__
and
`mapPointToItem() </sdk/apps/qml/QtMultimedia/VideoOutput#mapPointToItem-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ fillMode : enumeration                                          |
+--------------------------------------------------------------------------+

Set this property to define how the video is scaled to fit the target
area.

-  Stretch - the video is scaled to fit.
-  PreserveAspectFit - the video is scaled uniformly to fit without
   cropping
-  PreserveAspectCrop - the video is scaled uniformly to fill, cropping
   if necessary

The default fill mode is PreserveAspectFit.

| 

+--------------------------------------------------------------------------+
|        \ orientation : int                                               |
+--------------------------------------------------------------------------+

In some cases the source video stream requires a certain orientation to
be correct. This includes sources like a camera viewfinder, where the
displayed viewfinder should match reality, no matter what rotation the
rest of the user interface has.

This property allows you to apply a rotation (in steps of 90 degrees) to
compensate for any user interface rotation, with positive values in the
anti-clockwise direction.

The orientation change will also affect the mapping of coordinates from
source to viewport.

**See also**
`autoOrientation </sdk/apps/qml/QtMultimedia/VideoOutput#autoOrientation-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ source : variant                                                |
+--------------------------------------------------------------------------+

This property holds the source item providing the video frames like
`MediaPlayer </sdk/apps/qml/QtMultimedia/MediaPlayer/>`__ or Camera.

If you are extending your own C++ classes to interoperate with
VideoOutput, you can either provide a QObject based class with a
``mediaObject`` property that exposes a QMediaObject derived class that
has a QVideoRendererControl available, or you can provide a QObject
based class with a writable ``videoSurface`` property that can accept a
QAbstractVideoSurface based class and can follow the correct protocol to
deliver QVideoFrames to it.

| 

+--------------------------------------------------------------------------+
|        \ sourceRect : rectangle                                          |
+--------------------------------------------------------------------------+

This property holds the area of the source video content that is
considered for rendering. The values are in source pixel coordinates,
adjusted for the source's pixel aspect ratio.

Note that typically the top left corner of this rectangle will be
``0,0`` while the width and height will be the width and height of the
input content. Only when the video source has a viewport set, these
values will differ.

The orientation setting does not affect this rectangle.

**See also** QVideoSurfaceFormat::pixelAspectRatio() and
QVideoSurfaceFormat::viewport().

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ QPointF mapNormalizedPointToItem(const QPointF & *point*) const |
+--------------------------------------------------------------------------+

Given normalized coordinates *point* (that is, each component in the
range of 0 to 1.0), return the mapped point that it corresponds to (in
item coordinates). This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered
rectangle.

| 

+--------------------------------------------------------------------------+
|        \ QRectF mapNormalizedRectToItem(const QRectF & *rectangle*)      |
| const                                                                    |
+--------------------------------------------------------------------------+

Given a rectangle *rectangle* in normalized coordinates (that is, each
component in the range of 0 to 1.0), return the mapped rectangle that it
corresponds to (in item coordinates). This mapping is affected by the
orientation.

Depending on the fill mode, this rectangle may extend outside the
rendered rectangle.

| 

+--------------------------------------------------------------------------+
|        \ QPointF mapPointToItem(const QPointF & *point*) const           |
+--------------------------------------------------------------------------+

Given a point *point* in source coordinates, return the corresponding
point in item coordinates. This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered
rectangle.

| 

+--------------------------------------------------------------------------+
|        \ QPointF mapPointToSource(const QPointF & *point*) const         |
+--------------------------------------------------------------------------+

Given a point *point* in item coordinates, return the corresponding
point in source coordinates. This mapping is affected by the
orientation.

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle.

| 

+--------------------------------------------------------------------------+
|        \ QPointF mapPointToSourceNormalized(const QPointF & *point*)     |
| const                                                                    |
+--------------------------------------------------------------------------+

Given a point *point* in item coordinates, return the corresponding
point in normalized source coordinates. This mapping is affected by the
orientation.

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle. No clamping is performed.

| 

+--------------------------------------------------------------------------+
|        \ QRectF mapRectToItem(const QRectF & *rectangle*) const          |
+--------------------------------------------------------------------------+

Given a rectangle *rectangle* in source coordinates, return the
corresponding rectangle in item coordinates. This mapping is affected by
the orientation.

Depending on the fill mode, this rectangle may extend outside the
rendered rectangle.

| 

+--------------------------------------------------------------------------+
|        \ QRectF mapRectToSource(const QRectF & *rectangle*) const        |
+--------------------------------------------------------------------------+

Given a rectangle *rectangle* in item coordinates, return the
corresponding rectangle in source coordinates. This mapping is affected
by the orientation.

This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle.

| 

+--------------------------------------------------------------------------+
|        \ QRectF mapRectToSourceNormalized(const QRectF & *rectangle*)    |
| const                                                                    |
+--------------------------------------------------------------------------+

Given a rectangle *rectangle* in item coordinates, return the
corresponding rectangle in normalized source coordinates. This mapping
is affected by the orientation.

This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle. No clamping is performed.

| 

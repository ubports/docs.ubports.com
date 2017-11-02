.. _sdk_qtmultimedia_videooutput:
QtMultimedia VideoOutput
========================

Render video or camera viewfinder.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`autoOrientation <sdk_qtmultimedia_videooutput_autoOrientation-prop>`
   : bool
-  :ref:`contentRect <sdk_qtmultimedia_videooutput_contentRect-prop>`
   : rectangle
-  :ref:`fillMode <sdk_qtmultimedia_videooutput_fillMode-prop>` :
   enumeration
-  :ref:`orientation <sdk_qtmultimedia_videooutput_orientation-prop>`
   : int
-  :ref:`source <sdk_qtmultimedia_videooutput_source-prop>` :
   variant
-  :ref:`sourceRect <sdk_qtmultimedia_videooutput_sourceRect-prop>`
   : rectangle

Methods
-------

-  QPointF
   **:ref:`mapNormalizedPointToItem <sdk_qtmultimedia_videooutput#mapNormalizedPointToItem-method>`**\ (const
   QPointF & *point*)
-  QRectF
   **:ref:`mapNormalizedRectToItem <sdk_qtmultimedia_videooutput#mapNormalizedRectToItem-method>`**\ (const
   QRectF & *rectangle*)
-  QPointF
   **:ref:`mapPointToItem <sdk_qtmultimedia_videooutput#mapPointToItem-method>`**\ (const
   QPointF & *point*)
-  QPointF
   **:ref:`mapPointToSource <sdk_qtmultimedia_videooutput#mapPointToSource-method>`**\ (const
   QPointF & *point*)
-  QPointF
   **:ref:`mapPointToSourceNormalized <sdk_qtmultimedia_videooutput#mapPointToSourceNormalized-method>`**\ (const
   QPointF & *point*)
-  QRectF
   **:ref:`mapRectToItem <sdk_qtmultimedia_videooutput#mapRectToItem-method>`**\ (const
   QRectF & *rectangle*)
-  QRectF
   **:ref:`mapRectToSource <sdk_qtmultimedia_videooutput#mapRectToSource-method>`**\ (const
   QRectF & *rectangle*)
-  QRectF
   **:ref:`mapRectToSourceNormalized <sdk_qtmultimedia_videooutput#mapRectToSourceNormalized-method>`**\ (const
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

The :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` item supports
untransformed, stretched, and uniformly scaled video presentation. For a
description of stretched uniformly scaled presentation, see the
:ref:`fillMode <sdk_qtmultimedia_videooutput#fillMode-prop>` property
description.

The VideoOutput item works with backends that support either
QVideoRendererControl or QVideoWindowControl. If the backend only
supports QVideoWindowControl, the video is rendered onto an overlay
window that is layered on top of the QtQuick window. Due to the nature
of the video overlays, certain features are not available for these kind
of backends:

-  Some transformations like rotations
-  Having other QtQuick items on top of the
   :ref:`VideoOutput <sdk_qtmultimedia_videooutput>` item

Most backends however do support QVideoRendererControl and therefore
don't have the limitations listed above.

**See also** :ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` and
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_ .

Property Documentation
----------------------

.. _sdk_qtmultimedia_videooutput_autoOrientation-prop:

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
:ref:`orientation <sdk_qtmultimedia_videooutput#orientation-prop>`.

| 

.. _sdk_qtmultimedia_videooutput_contentRect-prop:

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
:ref:`mapRectToItem() <sdk_qtmultimedia_videooutput#mapRectToItem-method>`
and
:ref:`mapPointToItem() <sdk_qtmultimedia_videooutput#mapPointToItem-method>`.

| 

.. _sdk_qtmultimedia_videooutput_fillMode-prop:

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

.. _sdk_qtmultimedia_videooutput_orientation-prop:

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
:ref:`autoOrientation <sdk_qtmultimedia_videooutput#autoOrientation-prop>`.

| 

.. _sdk_qtmultimedia_videooutput_source-prop:

+--------------------------------------------------------------------------+
|        \ source : variant                                                |
+--------------------------------------------------------------------------+

This property holds the source item providing the video frames like
:ref:`MediaPlayer <sdk_qtmultimedia_mediaplayer>` or Camera.

If you are extending your own C++ classes to interoperate with
VideoOutput, you can either provide a QObject based class with a
``mediaObject`` property that exposes a QMediaObject derived class that
has a QVideoRendererControl available, or you can provide a QObject
based class with a writable ``videoSurface`` property that can accept a
QAbstractVideoSurface based class and can follow the correct protocol to
deliver QVideoFrames to it.

| 

.. _sdk_qtmultimedia_videooutput_sourceRect-prop:

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

.. _sdk_qtmultimedia_videooutput_QPointF mapNormalizedPointToItem-method:

+--------------------------------------------------------------------------+
|        \ QPointF mapNormalizedPointToItem(const QPointF & *point*) const |
+--------------------------------------------------------------------------+

Given normalized coordinates *point* (that is, each component in the
range of 0 to 1.0), return the mapped point that it corresponds to (in
item coordinates). This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered
rectangle.

| 

.. _sdk_qtmultimedia_videooutput_QRectF mapNormalizedRectToItem-method:

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

.. _sdk_qtmultimedia_videooutput_QPointF mapPointToItem-method:

+--------------------------------------------------------------------------+
|        \ QPointF mapPointToItem(const QPointF & *point*) const           |
+--------------------------------------------------------------------------+

Given a point *point* in source coordinates, return the corresponding
point in item coordinates. This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered
rectangle.

| 

.. _sdk_qtmultimedia_videooutput_QPointF mapPointToSource-method:

+--------------------------------------------------------------------------+
|        \ QPointF mapPointToSource(const QPointF & *point*) const         |
+--------------------------------------------------------------------------+

Given a point *point* in item coordinates, return the corresponding
point in source coordinates. This mapping is affected by the
orientation.

If the supplied point lies outside the rendered area, the returned point
will be outside the source rectangle.

| 

.. _sdk_qtmultimedia_videooutput_QPointF mapPointToSourceNormalized-method:

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

.. _sdk_qtmultimedia_videooutput_QRectF mapRectToItem-method:

+--------------------------------------------------------------------------+
|        \ QRectF mapRectToItem(const QRectF & *rectangle*) const          |
+--------------------------------------------------------------------------+

Given a rectangle *rectangle* in source coordinates, return the
corresponding rectangle in item coordinates. This mapping is affected by
the orientation.

Depending on the fill mode, this rectangle may extend outside the
rendered rectangle.

| 

.. _sdk_qtmultimedia_videooutput_QRectF mapRectToSource-method:

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

.. _sdk_qtmultimedia_videooutput_QRectF mapRectToSourceNormalized-method:

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

An interface for focus related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`customFocusPoint </sdk/apps/qml/QtMultimedia/CameraFocus#customFocusPoint-prop>`__****
   : point
-  ****`focusMode </sdk/apps/qml/QtMultimedia/CameraFocus#focusMode-prop>`__****
   : enumeration
-  ****`focusPointMode </sdk/apps/qml/QtMultimedia/CameraFocus#focusPointMode-prop>`__****
   : enumeration
-  ****`focusZones </sdk/apps/qml/QtMultimedia/CameraFocus#focusZones-prop>`__****
   : list<focusZone>

Methods
-------

-  bool
   ****`isFocusModeSupported </sdk/apps/qml/QtMultimedia/CameraFocus#isFocusModeSupported-method>`__****\ (mode)
-  bool
   ****`isFocusPointModeSupported </sdk/apps/qml/QtMultimedia/CameraFocus#isFocusPointModeSupported-method>`__****\ (mode)

Detailed Description
--------------------

CameraFocus is part of the **QtMultimedia 5.0** module.

This type allows control over manual and automatic focus settings,
including information about any parts of the camera frame that are
selected for autofocusing.

It should not be constructed separately, instead the ``focus`` property
of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__
should be used.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Item {
        width: 640
        height: 360
        Camera {
            id: camera
            focus {
                focusMode: Camera.FocusMacro
                focusPointMode: Camera.FocusPointCustom
                customFocusPoint: Qt.point(0.2, 0.2) // Focus relative to top-left corner
            }
        }
        VideoOutput {
            source: camera
            anchors.fill: parent
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ customFocusPoint : point                                        |
+--------------------------------------------------------------------------+

This property holds the position of custom focus point, in relative
frame coordinates: QPointF(0,0) points to the left top frame point,
QPointF(0.5,0.5) points to the frame center.

Custom focus point is used only in FocusPointCustom focus mode.

| 

+--------------------------------------------------------------------------+
|        \ focusMode : enumeration                                         |
+--------------------------------------------------------------------------+

This property holds the current camera focus mode, which can be one of
the following values:

+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Value             | Description                                                                                                                                                             |
+===================+=========================================================================================================================================================================+
| FocusManual       | Manual or fixed focus mode.                                                                                                                                             |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FocusHyperfocal   | Focus to hyperfocal distance, with the maximum depth of field achieved. All objects at distances from half of this distance out to infinity will be acceptably sharp.   |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FocusInfinity     | Focus strictly to infinity.                                                                                                                                             |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FocusAuto         | One-shot auto focus mode.                                                                                                                                               |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FocusContinuous   | Continuous auto focus mode.                                                                                                                                             |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| FocusMacro        | One shot auto focus to objects close to camera.                                                                                                                         |
+-------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

It's possible to combine multiple Camera::FocusMode values, for example
Camera.FocusMacro + Camera.FocusContinuous.

In automatic focusing modes, the
`focusPointMode </sdk/apps/qml/QtMultimedia/CameraFocus#focusPointMode-prop>`__
property and
`focusZones </sdk/apps/qml/QtMultimedia/CameraFocus#focusZones-prop>`__
property provide information and control over how automatic focusing is
performed.

| 

+--------------------------------------------------------------------------+
|        \ focusPointMode : enumeration                                    |
+--------------------------------------------------------------------------+

This property holds the current camera focus point mode. It is used in
automatic focusing modes to determine what to focus on. If the current
focus point mode is ``Camera.FocusPointCustom``, the
`customFocusPoint </sdk/apps/qml/QtMultimedia/CameraFocus#customFocusPoint-prop>`__
property allows you to specify which part of the frame to focus on.

The property can take one of the following values:

+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| Value                     | Description                                                                                                                               |
+===========================+===========================================================================================================================================+
| FocusPointAuto            | Automatically select one or multiple focus points.                                                                                        |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| FocusPointCenter          | Focus to the frame center.                                                                                                                |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| FocusPointFaceDetection   | Focus on faces in the frame.                                                                                                              |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| FocusPointCustom          | Focus to the custom point, defined by the `customFocusPoint </sdk/apps/qml/QtMultimedia/CameraFocus#customFocusPoint-prop>`__ property.   |
+---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ focusZones : list<focusZone>                                    |
+--------------------------------------------------------------------------+

This property holds the list of current camera focus zones, each
including ``area`` specified in the same coordinates as
`customFocusPoint </sdk/apps/qml/QtMultimedia/CameraFocus#customFocusPoint-prop>`__,
and zone ``status`` as one of the following values:

+----------------------------+-----------------------------------------------------------------------+
| Value                      | Description                                                           |
+============================+=======================================================================+
| Camera.FocusAreaUnused     | This focus point area is currently unused in autofocusing.            |
+----------------------------+-----------------------------------------------------------------------+
| Camera.FocusAreaSelected   | This focus point area is used in autofocusing, but is not in focus.   |
+----------------------------+-----------------------------------------------------------------------+
| Camera.FocusAreaFocused    | This focus point is used in autofocusing, and is in focus.            |
+----------------------------+-----------------------------------------------------------------------+

.. code:: qml

    VideoOutput {
        id: viewfinder
        source: camera
        //display focus areas on camera viewfinder:
        Repeater {
              model: camera.focus.focusZones
              Rectangle {
                  border {
                      width: 2
                      color: status == Camera.FocusAreaFocused ? "green" : "white"
                  }
                  color: "transparent"
                  // Map from the relative, normalized frame coordinates
                  property variant mappedRect: viewfinder.mapNormalizedRectToItem(area);
                  x: mappedRect.x
                  y: mappedRect.y
                  width: mappedRect.width
                  height: mappedRect.height
              }
        }
    }

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ bool isFocusModeSupported(mode) const                           |
+--------------------------------------------------------------------------+

Returns true if the supplied *mode* is a supported focus mode, and false
otherwise.

| 

+--------------------------------------------------------------------------+
|        \ bool isFocusPointModeSupported(mode) const                      |
+--------------------------------------------------------------------------+

Returns true if the supplied *mode* is a supported focus point mode, and
false otherwise.

| 

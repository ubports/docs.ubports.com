.. _sdk_qtmultimedia_camerafocus:

QtMultimedia CameraFocus
========================

An interface for focus related camera settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`customFocusPoint <sdk_qtmultimedia_camerafocus_customFocusPoint>` : point
-  :ref:`focusMode <sdk_qtmultimedia_camerafocus_focusMode>` : enumeration
-  :ref:`focusPointMode <sdk_qtmultimedia_camerafocus_focusPointMode>` : enumeration
-  :ref:`focusZones <sdk_qtmultimedia_camerafocus_focusZones>` : list<focusZone>

Methods
-------

-  bool :ref:`isFocusModeSupported <sdk_qtmultimedia_camerafocus_isFocusModeSupported>`\ (mode)
-  bool :ref:`isFocusPointModeSupported <sdk_qtmultimedia_camerafocus_isFocusPointModeSupported>`\ (mode)

Detailed Description
--------------------

CameraFocus is part of the **QtMultimedia 5.0** module.

This type allows control over manual and automatic focus settings, including information about any parts of the camera frame that are selected for autofocusing.

It should not be constructed separately, instead the ``focus`` property of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  should be used.

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

.. _sdk_qtmultimedia_camerafocus_customFocusPoint:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| customFocusPoint : point                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the position of custom focus point, in relative frame coordinates: QPointF(0,0) points to the left top frame point, QPointF(0.5,0.5) points to the frame center.

Custom focus point is used only in FocusPointCustom focus mode.

.. _sdk_qtmultimedia_camerafocus_focusMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| focusMode : enumeration                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current camera focus mode, which can be one of the following values:

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

It's possible to combine multiple Camera::FocusMode values, for example Camera.FocusMacro + Camera.FocusContinuous.

In automatic focusing modes, the :ref:`focusPointMode <sdk_qtmultimedia_camerafocus_focusPointMode>` property and :ref:`focusZones <sdk_qtmultimedia_camerafocus_focusZones>` property provide information and control over how automatic focusing is performed.

.. _sdk_qtmultimedia_camerafocus_focusPointMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| focusPointMode : enumeration                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the current camera focus point mode. It is used in automatic focusing modes to determine what to focus on. If the current focus point mode is ``Camera.FocusPointCustom``, the :ref:`customFocusPoint <sdk_qtmultimedia_camerafocus_customFocusPoint>` property allows you to specify which part of the frame to focus on.

The property can take one of the following values:

+---------------------------+---------------------------------------------------------------------------------------------------------------------------------+
| Value                     | Description                                                                                                                     |
+===========================+=================================================================================================================================+
| FocusPointAuto            | Automatically select one or multiple focus points.                                                                              |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------+
| FocusPointCenter          | Focus to the frame center.                                                                                                      |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------+
| FocusPointFaceDetection   | Focus on faces in the frame.                                                                                                    |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------+
| FocusPointCustom          | Focus to the custom point, defined by the :ref:`customFocusPoint <sdk_qtmultimedia_camerafocus_customFocusPoint>` property.     |
+---------------------------+---------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtmultimedia_camerafocus_focusZones:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| focusZones : list<focusZone>                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the list of current camera focus zones, each including ``area`` specified in the same coordinates as :ref:`customFocusPoint <sdk_qtmultimedia_camerafocus_customFocusPoint>`, and zone ``status`` as one of the following values:

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

Method Documentation
--------------------

.. _sdk_qtmultimedia_camerafocus_isFocusModeSupported:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool isFocusModeSupported(mode) const                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the supplied *mode* is a supported focus mode, and false otherwise.

.. _sdk_qtmultimedia_camerafocus_isFocusPointModeSupported:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| bool isFocusPointModeSupported(mode) const                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns true if the supplied *mode* is a supported focus point mode, and false otherwise.


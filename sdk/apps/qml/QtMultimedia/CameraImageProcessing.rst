An interface for camera capture related settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  ****`contrast </sdk/apps/qml/QtMultimedia/CameraImageProcessing#contrast-prop>`__****
   : qreal
-  ****`denoisingLevel </sdk/apps/qml/QtMultimedia/CameraImageProcessing#denoisingLevel-prop>`__****
   : qreal
-  ****`manualWhiteBalance </sdk/apps/qml/QtMultimedia/CameraImageProcessing#manualWhiteBalance-prop>`__****
   : qreal
-  ****`saturation </sdk/apps/qml/QtMultimedia/CameraImageProcessing#saturation-prop>`__****
   : qreal
-  ****`sharpeningLevel </sdk/apps/qml/QtMultimedia/CameraImageProcessing#sharpeningLevel-prop>`__****
   : qreal
-  ****`whiteBalanceMode </sdk/apps/qml/QtMultimedia/CameraImageProcessing#whiteBalanceMode-prop>`__****
   : enumeration

Detailed Description
--------------------

`CameraImageProcessing </sdk/apps/qml/QtMultimedia/CameraImageProcessing/>`__
provides control over post-processing done by the camera middleware,
including white balance adjustments, contrast, saturation, sharpening,
and denoising

It should not be constructed separately, instead the ``imageProcessing``
property of a
`Camera </sdk/apps/qml/QtMultimedia/qml-multimedia#camera>`__ should be
used.

.. code:: qml

    import QtQuick 2.0
    import QtMultimedia 5.0
    Camera {
        id: camera
        imageProcessing {
            whiteBalanceMode: Camera.WhiteBalanceTungsten
            contrast: 0.66
            saturation: -0.5
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ contrast : qreal                                                |
+--------------------------------------------------------------------------+

Image contrast adjustment. Valid contrast adjustment values range
between -1.0 and 1.0, with a default of 0.

| 

+--------------------------------------------------------------------------+
|        \ denoisingLevel : qreal                                          |
+--------------------------------------------------------------------------+

Adjustment of denoising applied to image.

Valid denoising level values range between -1.0 for for denoising
disabled, 0 for default denoising level and 1.0 for maximum denoising
applied.

| 

+--------------------------------------------------------------------------+
|        \ manualWhiteBalance : qreal                                      |
+--------------------------------------------------------------------------+

The color temperature used when in manual white balance mode
(WhiteBalanceManual). The units are Kelvin.

**See also**
`whiteBalanceMode </sdk/apps/qml/QtMultimedia/CameraImageProcessing#whiteBalanceMode-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ saturation : qreal                                              |
+--------------------------------------------------------------------------+

Image saturation adjustment. Valid saturation adjustment values range
between -1.0 and 1.0, the default is 0.

| 

+--------------------------------------------------------------------------+
|        \ sharpeningLevel : qreal                                         |
+--------------------------------------------------------------------------+

Adjustment of sharpening level applied to image.

Valid sharpening level values range between -1.0 for for sharpening
disabled, 0 for default sharpening level and 1.0 for maximum sharpening
applied.

| 

+--------------------------------------------------------------------------+
|        \ whiteBalanceMode : enumeration                                  |
+--------------------------------------------------------------------------+

+---------------------------+---------------------------------------------------------------------------------------+
| Value                     | Description                                                                           |
+===========================+=======================================================================================+
| WhiteBalanceManual        | Manual white balance. In this mode the manual white balance property value is used.   |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceAuto          | Auto white balance mode.                                                              |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceSunlight      | Sunlight white balance mode.                                                          |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceCloudy        | Cloudy white balance mode.                                                            |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceShade         | Shade white balance mode.                                                             |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceTungsten      | Tungsten white balance mode.                                                          |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceFluorescent   | Fluorescent white balance mode.                                                       |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceFlash         | Flash white balance mode.                                                             |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceSunset        | Sunset white balance mode.                                                            |
+---------------------------+---------------------------------------------------------------------------------------+
| WhiteBalanceVendor        | Vendor defined white balance mode.                                                    |
+---------------------------+---------------------------------------------------------------------------------------+

**See also**
`manualWhiteBalance </sdk/apps/qml/QtMultimedia/CameraImageProcessing#manualWhiteBalance-prop>`__.

| 

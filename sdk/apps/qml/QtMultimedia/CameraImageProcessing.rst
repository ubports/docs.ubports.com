.. _sdk_qtmultimedia_cameraimageprocessing:

QtMultimedia CameraImageProcessing
==================================

An interface for camera capture related settings.

+---------------------+---------------------------+
| Import Statement:   | import QtMultimedia 5.4   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`contrast <sdk_qtmultimedia_cameraimageprocessing_contrast>` : qreal
-  :ref:`denoisingLevel <sdk_qtmultimedia_cameraimageprocessing_denoisingLevel>` : qreal
-  :ref:`manualWhiteBalance <sdk_qtmultimedia_cameraimageprocessing_manualWhiteBalance>` : qreal
-  :ref:`saturation <sdk_qtmultimedia_cameraimageprocessing_saturation>` : qreal
-  :ref:`sharpeningLevel <sdk_qtmultimedia_cameraimageprocessing_sharpeningLevel>` : qreal
-  :ref:`whiteBalanceMode <sdk_qtmultimedia_cameraimageprocessing_whiteBalanceMode>` : enumeration

Detailed Description
--------------------

:ref:`CameraImageProcessing <sdk_qtmultimedia_cameraimageprocessing>` provides control over post-processing done by the camera middleware, including white balance adjustments, contrast, saturation, sharpening, and denoising

It should not be constructed separately, instead the ``imageProcessing`` property of a `Camera </sdk/apps/qml/QtMultimedia/qml-multimedia/#camera>`_  should be used.

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

.. _sdk_qtmultimedia_cameraimageprocessing_contrast:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contrast : qreal                                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Image contrast adjustment. Valid contrast adjustment values range between -1.0 and 1.0, with a default of 0.

.. _sdk_qtmultimedia_cameraimageprocessing_denoisingLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| denoisingLevel : qreal                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adjustment of denoising applied to image.

Valid denoising level values range between -1.0 for for denoising disabled, 0 for default denoising level and 1.0 for maximum denoising applied.

.. _sdk_qtmultimedia_cameraimageprocessing_manualWhiteBalance:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| manualWhiteBalance : qreal                                                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The color temperature used when in manual white balance mode (WhiteBalanceManual). The units are Kelvin.

**See also** :ref:`whiteBalanceMode <sdk_qtmultimedia_cameraimageprocessing_whiteBalanceMode>`.

.. _sdk_qtmultimedia_cameraimageprocessing_saturation:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| saturation : qreal                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Image saturation adjustment. Valid saturation adjustment values range between -1.0 and 1.0, the default is 0.

.. _sdk_qtmultimedia_cameraimageprocessing_sharpeningLevel:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sharpeningLevel : qreal                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adjustment of sharpening level applied to image.

Valid sharpening level values range between -1.0 for for sharpening disabled, 0 for default sharpening level and 1.0 for maximum sharpening applied.

.. _sdk_qtmultimedia_cameraimageprocessing_whiteBalanceMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| whiteBalanceMode : enumeration                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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

**See also** :ref:`manualWhiteBalance <sdk_qtmultimedia_cameraimageprocessing_manualWhiteBalance>`.


QtMultimedia.CameraImageProcessing
==================================

.. raw:: html

   <p>

An interface for camera capture related settings. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraImageProcessing -->

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

contrast : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

denoisingLevel : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manualWhiteBalance : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

saturation : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sharpeningLevel : qreal

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

whiteBalanceMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CameraImageProcessing-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraImageProcessing provides control over post-processing done by the
camera middleware, including white balance adjustments, contrast,
saturation, sharpening, and denoising

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not be constructed separately, instead the imageProcessing
property of a Camera should be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="type">imageProcessing</span> {
   <span class="name">whiteBalanceMode</span>: <span class="name">Camera</span>.<span class="name">WhiteBalanceTungsten</span>
   <span class="name">contrast</span>: <span class="number">0.66</span>
   <span class="name">saturation</span>: -<span class="number">0.5</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@CameraImageProcessing -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contrast -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contrast-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contrast : qreal

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

Image contrast adjustment. Valid contrast adjustment values range
between -1.0 and 1.0, with a default of 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contrast -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="denoisingLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

denoisingLevel : qreal

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

Adjustment of denoising applied to image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid denoising level values range between -1.0 for for denoising
disabled, 0 for default denoising level and 1.0 for maximum denoising
applied.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@denoisingLevel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manualWhiteBalance-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

manualWhiteBalance : qreal

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

The color temperature used when in manual white balance mode
(WhiteBalanceManual). The units are Kelvin.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also whiteBalanceMode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manualWhiteBalance -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="saturation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

saturation : qreal

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

Image saturation adjustment. Valid saturation adjustment values range
between -1.0 and 1.0, the default is 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@saturation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sharpeningLevel-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sharpeningLevel : qreal

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

Adjustment of sharpening level applied to image.

.. raw:: html

   </p>

.. raw:: html

   <p>

Valid sharpening level values range between -1.0 for for sharpening
disabled, 0 for default sharpening level and 1.0 for maximum sharpening
applied.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sharpeningLevel -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="whiteBalanceMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

whiteBalanceMode : enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Value

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceManual

.. raw:: html

   </td>

.. raw:: html

   <td>

Manual white balance. In this mode the manual white balance property
value is used.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceAuto

.. raw:: html

   </td>

.. raw:: html

   <td>

Auto white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceSunlight

.. raw:: html

   </td>

.. raw:: html

   <td>

Sunlight white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceCloudy

.. raw:: html

   </td>

.. raw:: html

   <td>

Cloudy white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceShade

.. raw:: html

   </td>

.. raw:: html

   <td>

Shade white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceTungsten

.. raw:: html

   </td>

.. raw:: html

   <td>

Tungsten white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceFluorescent

.. raw:: html

   </td>

.. raw:: html

   <td>

Fluorescent white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceFlash

.. raw:: html

   </td>

.. raw:: html

   <td>

Flash white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceSunset

.. raw:: html

   </td>

.. raw:: html

   <td>

Sunset white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

WhiteBalanceVendor

.. raw:: html

   </td>

.. raw:: html

   <td>

Vendor defined white balance mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

See also manualWhiteBalance.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@whiteBalanceMode -->



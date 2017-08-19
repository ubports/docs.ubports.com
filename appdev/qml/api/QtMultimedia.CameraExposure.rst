QtMultimedia.CameraExposure
===========================

.. raw:: html

   <p>

An interface for exposure related camera settings. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraExposure -->

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

aperture : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exposureCompensation : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

exposureMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

iso : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manualAperture : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manualIso : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

manualShutterSpeed : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

meteringMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

shutterSpeed : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

spotMeteringPoint : QPointF

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

setAutoAperture()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setAutoIsoSensitivity()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setAutoShutterSpeed()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CameraExposure-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This type is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraExposure allows you to adjust exposure related settings like
aperture and shutter speed, metering and ISO speed.

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not be constructed separately, instead the exposure property
of the a Camera should be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="name">exposure</span>.exposureCompensation: -<span class="number">1.0</span>
   <span class="name">exposure</span>.exposureMode: <span class="name">Camera</span>.<span class="name">ExposurePortrait</span>
   }</pre>

.. raw:: html

   <p>

Several settings have both an automatic and a manual mode. In the
automatic modes the camera software itself will decide what a reasonable
setting is, but in most cases these settings can be overridden with a
specific manual setting.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, to select automatic shutter speed selection:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    camera<span class="operator">.</span>exposure<span class="operator">.</span><a href="#setAutoShutterSpeed-method">setAutoShutterSpeed</a>()</pre>

.. raw:: html

   <p>

Or for a specific shutter speed:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    camera<span class="operator">.</span>exposure<span class="operator">.</span>manualShutterSpeed <span class="operator">=</span> <span class="number">0.01</span> <span class="comment">// 10ms</span></pre>

.. raw:: html

   <p>

You can only choose one or the other mode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraExposure -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$aperture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="aperture-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

aperture : real

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

This property holds the current lens aperture as an F number (the ratio
of the focal length to effective aperture diameter).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also manualAperture and setAutoAperture().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@aperture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exposureCompensation-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exposureCompensation : real

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

This property holds the adjustment value for the automatically
calculated exposure. The value is in EV units.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@exposureCompensation -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="exposureMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

exposureMode : enumeration

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

This property holds the camera exposure mode.

.. raw:: html

   </p>

.. raw:: html

   <p>

The mode can be one of the following:

.. raw:: html

   </p>

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

Camera.ExposureManual

.. raw:: html

   </td>

.. raw:: html

   <td>

Manual mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureAuto

.. raw:: html

   </td>

.. raw:: html

   <td>

Automatic mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureNight

.. raw:: html

   </td>

.. raw:: html

   <td>

Night mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureBacklight

.. raw:: html

   </td>

.. raw:: html

   <td>

Backlight exposure mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureSpotlight

.. raw:: html

   </td>

.. raw:: html

   <td>

Spotlight exposure mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureSports

.. raw:: html

   </td>

.. raw:: html

   <td>

Spots exposure mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureSnow

.. raw:: html

   </td>

.. raw:: html

   <td>

Snow exposure mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureBeach

.. raw:: html

   </td>

.. raw:: html

   <td>

Beach exposure mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureLargeAperture

.. raw:: html

   </td>

.. raw:: html

   <td>

Use larger aperture with small depth of field.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureSmallAperture

.. raw:: html

   </td>

.. raw:: html

   <td>

Use smaller aperture.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposurePortrait

.. raw:: html

   </td>

.. raw:: html

   <td>

Portrait exposure mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.ExposureModeVendor

.. raw:: html

   </td>

.. raw:: html

   <td>

The base value for device specific exposure modes.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@exposureMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="iso-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

iso : int

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

This property holds the sensor's ISO sensitivity value.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@iso -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manualAperture-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

manualAperture : real

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

This property holds the aperture (F number) value for capturing photos.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the value is less than zero, the camera automatically determines an
appropriate aperture value.

.. raw:: html

   </p>

.. raw:: html

   <p>

aperture, setAutoAperture()

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manualAperture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manualIso-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

manualIso : real

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

This property holds the ISO settings for capturing photos.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a negative value is specified, the camera will automatically
determine an appropriate value.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also iso and setAutoIsoSensitivity().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manualIso -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="manualShutterSpeed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

manualShutterSpeed : real

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

This property holds the shutter speed value (in seconds). If the value
is less than zero, the camera automatically determines an appropriate
shutter speed.

.. raw:: html

   </p>

.. raw:: html

   <p>

shutterSpeed, setAutoShutterSpeed()

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@manualShutterSpeed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="meteringMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

meteringMode : enumeration

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

This property holds the camera metering mode (how exposure is balanced).

.. raw:: html

   </p>

.. raw:: html

   <p>

The mode can be one of the following:

.. raw:: html

   </p>

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

Camera.MeteringMatrix

.. raw:: html

   </td>

.. raw:: html

   <td>

A matrix of sample points is used to measure exposure.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.MeteringAverage

.. raw:: html

   </td>

.. raw:: html

   <td>

An average is used to measure exposure.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.MeteringSpot

.. raw:: html

   </td>

.. raw:: html

   <td>

A specific location (spotMeteringPoint) is used to measure exposure.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@meteringMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="shutterSpeed-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

shutterSpeed : real

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

This property holds the camera's current shutter speed value in seconds.
To affect the shutter speed you can use the manualShutterSpeed property
and setAutoShutterSpeed().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@shutterSpeed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="spotMeteringPoint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

spotMeteringPoint : QPointF

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

The property holds the frame coordinates of the point to use for
exposure metering. This point is only used in spot metering mode, and it
typically defaults to the center (0.5, 0.5).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@spotMeteringPoint -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$setAutoAperture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setAutoAperture-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setAutoAperture()

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

Turn on auto aperture selection. The manual aperture value is reset to
-1.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setAutoAperture -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setAutoIsoSensitivity-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setAutoIsoSensitivity()

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

Turn on auto ISO sensitivity selection. The manual ISO value is reset to
-1.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setAutoIsoSensitivity -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setAutoShutterSpeed-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setAutoShutterSpeed()

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

Turn on auto shutter speed selection. The manual shutter speed value is
reset to -1.0

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setAutoShutterSpeed -->



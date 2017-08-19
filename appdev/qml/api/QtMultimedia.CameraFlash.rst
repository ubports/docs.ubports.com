QtMultimedia.CameraFlash
========================

.. raw:: html

   <p>

An interface for flash related camera settings. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraFlash -->

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

mode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

ready : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

flashModeChanged(int)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

flashReady(bool)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CameraFlash-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraFlash is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

This type allows you to operate the camera flash hardware and control
the flash mode used. Not all cameras have flash hardware (and in some
cases it is shared with the torch hardware).

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not be constructed separately, instead the flash property of a
Camera should be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="name">exposure</span>.exposureCompensation: -<span class="number">1.0</span>
   <span class="name">flash</span>.mode: <span class="name">Camera</span>.<span class="name">FlashRedEyeReduction</span>
   }</pre>

.. raw:: html

   <!-- @@@CameraFlash -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$mode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="mode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

mode : enumeration

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

This property holds the camera flash mode.

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

Camera.FlashOff

.. raw:: html

   </td>

.. raw:: html

   <td>

Flash is Off.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashOn

.. raw:: html

   </td>

.. raw:: html

   <td>

Flash is On.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashAuto

.. raw:: html

   </td>

.. raw:: html

   <td>

Automatic flash.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashRedEyeReduction

.. raw:: html

   </td>

.. raw:: html

   <td>

Red eye reduction flash.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashFill

.. raw:: html

   </td>

.. raw:: html

   <td>

Use flash to fillin shadows.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashTorch

.. raw:: html

   </td>

.. raw:: html

   <td>

Constant light source, useful for focusing and video capture.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashSlowSyncFrontCurtain

.. raw:: html

   </td>

.. raw:: html

   <td>

Use the flash in conjunction with a slow shutter speed. This mode allows
better exposure of distant objects and/or motion blur effect.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashSlowSyncRearCurtain

.. raw:: html

   </td>

.. raw:: html

   <td>

The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the
end of exposure.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FlashManual

.. raw:: html

   </td>

.. raw:: html

   <td>

Flash power is manually set.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@mode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ready-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ready : bool

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

This property indicates whether the flash is charged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ready -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$flashModeChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flashModeChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flashModeChanged(int)

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

This signal is emitted when the flashMode property is changed. The
corresponding handler is onFlashModeChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flashModeChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="flashReady-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

flashReady(bool)

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

This signal is emitted when QCameraExposure indicates that the flash is
ready to use. The corresponding handler is onFlashReadyChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@flashReady -->



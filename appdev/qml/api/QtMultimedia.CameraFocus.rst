QtMultimedia.CameraFocus
========================

.. raw:: html

   <p>

An interface for focus related camera settings. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CameraFocus -->

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

customFocusPoint : point

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

focusMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

focusPointMode : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

focusZones : list<focusZone>

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

bool isFocusModeSupported(mode)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool isFocusPointModeSupported(mode)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CameraFocus-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

CameraFocus is part of the QtMultimedia 5.0 module.

.. raw:: html

   </p>

.. raw:: html

   <p>

This type allows control over manual and automatic focus settings,
including information about any parts of the camera frame that are
selected for autofocusing.

.. raw:: html

   </p>

.. raw:: html

   <p>

It should not be constructed separately, instead the focus property of a
Camera should be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">640</span>
   <span class="name">height</span>: <span class="number">360</span>
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   <span class="type">focus</span> {
   <span class="name">focusMode</span>: <span class="name">Camera</span>.<span class="name">FocusMacro</span>
   <span class="name">focusPointMode</span>: <span class="name">Camera</span>.<span class="name">FocusPointCustom</span>
   <span class="name">customFocusPoint</span>: <span class="name">Qt</span>.<span class="name">point</span>(<span class="number">0.2</span>, <span class="number">0.2</span>) <span class="comment">// Focus relative to top-left corner</span>
   }
   }
   <span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
   <span class="name">source</span>: <span class="name">camera</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@CameraFocus -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$customFocusPoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="customFocusPoint-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

customFocusPoint : point

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

This property holds the position of custom focus point, in relative
frame coordinates: QPointF(0,0) points to the left top frame point,
QPointF(0.5,0.5) points to the frame center.

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom focus point is used only in FocusPointCustom focus mode.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@customFocusPoint -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="focusMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

focusMode : enumeration

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

This property holds the current camera focus mode, which can be one of
the following values:

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

FocusManual

.. raw:: html

   </td>

.. raw:: html

   <td>

Manual or fixed focus mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusHyperfocal

.. raw:: html

   </td>

.. raw:: html

   <td>

Focus to hyperfocal distance, with the maximum depth of field achieved.
All objects at distances from half of this distance out to infinity will
be acceptably sharp.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusInfinity

.. raw:: html

   </td>

.. raw:: html

   <td>

Focus strictly to infinity.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusAuto

.. raw:: html

   </td>

.. raw:: html

   <td>

One-shot auto focus mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusContinuous

.. raw:: html

   </td>

.. raw:: html

   <td>

Continuous auto focus mode.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusMacro

.. raw:: html

   </td>

.. raw:: html

   <td>

One shot auto focus to objects close to camera.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

It's possible to combine multiple Camera::FocusMode values, for example
Camera.FocusMacro + Camera.FocusContinuous.

.. raw:: html

   </p>

.. raw:: html

   <p>

In automatic focusing modes, the focusPointMode property and focusZones
property provide information and control over how automatic focusing is
performed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@focusMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="focusPointMode-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

focusPointMode : enumeration

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

This property holds the current camera focus point mode. It is used in
automatic focusing modes to determine what to focus on. If the current
focus point mode is Camera.FocusPointCustom, the customFocusPoint
property allows you to specify which part of the frame to focus on.

.. raw:: html

   </p>

.. raw:: html

   <p>

The property can take one of the following values:

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

FocusPointAuto

.. raw:: html

   </td>

.. raw:: html

   <td>

Automatically select one or multiple focus points.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusPointCenter

.. raw:: html

   </td>

.. raw:: html

   <td>

Focus to the frame center.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusPointFaceDetection

.. raw:: html

   </td>

.. raw:: html

   <td>

Focus on faces in the frame.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

FocusPointCustom

.. raw:: html

   </td>

.. raw:: html

   <td>

Focus to the custom point, defined by the customFocusPoint property.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@focusPointMode -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="focusZones-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

focusZones : list<focusZone>

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

This property holds the list of current camera focus zones, each
including area specified in the same coordinates as customFocusPoint,
and zone status as one of the following values:

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

Camera.FocusAreaUnused

.. raw:: html

   </td>

.. raw:: html

   <td>

This focus point area is currently unused in autofocusing.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FocusAreaSelected

.. raw:: html

   </td>

.. raw:: html

   <td>

This focus point area is used in autofocusing, but is not in focus.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera.FocusAreaFocused

.. raw:: html

   </td>

.. raw:: html

   <td>

This focus point is used in autofocusing, and is in focus.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
   <span class="name">id</span>: <span class="name">viewfinder</span>
   <span class="name">source</span>: <span class="name">camera</span>
   <span class="comment">//display focus areas on camera viewfinder:</span>
   <span class="type">Repeater</span> {
   <span class="name">model</span>: <span class="name">camera</span>.<span class="name">focus</span>.<span class="name">focusZones</span>
   <span class="type">Rectangle</span> {
   <span class="type">border</span> {
   <span class="name">width</span>: <span class="number">2</span>
   <span class="name">color</span>: <span class="name">status</span> <span class="operator">==</span> <span class="name">Camera</span>.<span class="name">FocusAreaFocused</span> ? <span class="string">&quot;green&quot;</span> : <span class="string">&quot;white&quot;</span>
   }
   <span class="name">color</span>: <span class="string">&quot;transparent&quot;</span>
   <span class="comment">// Map from the relative, normalized frame coordinates</span>
   property <span class="type">variant</span> <span class="name">mappedRect</span>: <span class="name">viewfinder</span>.<span class="name">mapNormalizedRectToItem</span>(<span class="name">area</span>);
   <span class="name">x</span>: <span class="name">mappedRect</span>.<span class="name">x</span>
   <span class="name">y</span>: <span class="name">mappedRect</span>.<span class="name">y</span>
   <span class="name">width</span>: <span class="name">mappedRect</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">mappedRect</span>.<span class="name">height</span>
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@focusZones -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$isFocusModeSupported -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isFocusModeSupported-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool isFocusModeSupported(mode) const

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

Returns true if the supplied mode is a supported focus mode, and false
otherwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isFocusModeSupported -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isFocusPointModeSupported-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool isFocusPointModeSupported(mode) const

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

Returns true if the supplied mode is a supported focus point mode, and
false otherwise.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isFocusPointModeSupported -->



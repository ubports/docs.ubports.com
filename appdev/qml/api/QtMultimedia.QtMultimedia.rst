QtMultimedia.QtMultimedia
=========================

.. raw:: html

   <p>

Provides a global object with useful functions from Qt Multimedia.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QtMultimedia -->

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

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

QtMultimedia 5.4

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

availableCameras : list<object>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

defaultCamera : object

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$QtMultimedia-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The QtMultimedia object is a global object with utility functions and
properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is not instantiable; to use it, call the members of the global
QtMultimedia object directly. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.4
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">deviceId</span>: <span class="name">QtMultimedia</span>.<span class="name">defaultCamera</span>.<span class="name">deviceId</span>
   }</pre>

.. raw:: html

   <!-- @@@QtMultimedia -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$availableCameras -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="availableCameras-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] availableCameras : list<object>

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

This property provides information about the cameras available on the
system.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each object in the list has the following properties:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

deviceId

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property holds the unique identifier of the camera.

.. raw:: html

   <p>

You can choose which device to use with a Camera object by setting its
deviceId property to this value.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

displayName

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property holds the human-readable name of the camera. You
can use this property to display the name of the camera in a user
interface.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

position

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property holds the physical position of the camera on the
hardware system. Please see Camera.position for more information.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

orientation

.. raw:: html

   </td>

.. raw:: html

   <td>

This read-only property holds the physical orientation of the camera
sensor. Please see Camera.orientation for more information.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note: This property is static; it is not updated when cameras are added
or removed from the system, like USB cameras on a desktop platform.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows how to display a list of available cameras.
The user can change the active camera by selecting one of the items in
the list.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtMultimedia 5.4
   <span class="type">Item</span> {
   <span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
   <span class="name">id</span>: <span class="name">camera</span>
   }
   <span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: <span class="name">camera</span>
   }
   <span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">QtMultimedia</span>.<span class="name">availableCameras</span>
   <span class="name">delegate</span>: <span class="name">Text</span> {
   <span class="name">text</span>: <span class="name">modelData</span>.<span class="name">displayName</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">camera</span>.<span class="name">deviceId</span> <span class="operator">=</span> <span class="name">modelData</span>.<span class="name">deviceId</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@availableCameras -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="defaultCamera-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

[read-only] defaultCamera : object

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

The defaultCamera object provides information about the default camera
on the system.

.. raw:: html

   </p>

.. raw:: html

   <p>

Its properties are deviceId, displayName, position and orientation. See
availableCameras for a description of each of them.

.. raw:: html

   </p>

.. raw:: html

   <p>

If there is no default camera, defaultCamera.deviceId will contain an
empty string.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This property is static; it is not updated if the system's default
camera changes after the application started.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@defaultCamera -->



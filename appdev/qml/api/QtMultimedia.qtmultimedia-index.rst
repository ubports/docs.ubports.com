QtMultimedia.qtmultimedia-index
===============================

.. raw:: html

   <p>

Qt Multimedia is an essential module that provides a rich set of QML
types and C++ classes to handle multimedia content. It also provides
necessary APIs to access the camera and radio functionality. The
included Qt Audio Engine provides types for 3D positional audio playback
and management.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt Multimedia Widgets module provides widget based multimedia
classes.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="getting-started">

Getting Started

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML types can be imported into your applciation using the following
import statement in your .qml file.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtMultimedia</span> <span class="number">5.4</span></pre>

.. raw:: html

   <p>

If you intend to use the C++ classes in your application, include the
C++ definitions using the following directive:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"> <span class="preprocessor">#include &lt;QtMultimedia&gt;</span></pre>

.. raw:: html

   <p>

Note: If you are using a few classes from this module, we recommend
including those specific classes only instead of the module.

.. raw:: html

   </p>

.. raw:: html

   <p>

To link against the corresponding C++ libraries, add the following to
your qmake project file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> multimedia</pre>

.. raw:: html

   <h2 id="qml-types-and-c-classes">

QML Types and C++ Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following is a list of important QML types and C++ classes provided
by this module:

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

Type

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

Audio

.. raw:: html

   </td>

.. raw:: html

   <td>

Add audio playback functionality to a scene

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Playlist

.. raw:: html

   </td>

.. raw:: html

   <td>

Add playlist functionality

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera

.. raw:: html

   </td>

.. raw:: html

   <td>

Access camera viewfinder frames

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MediaPlayer

.. raw:: html

   </td>

.. raw:: html

   <td>

Add media playback functionality to a scene. It is same as Audio type,
but can be used for video playback with the VideoOutput type.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Radio

.. raw:: html

   </td>

.. raw:: html

   <td>

Access radio functionality

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Video

.. raw:: html

   </td>

.. raw:: html

   <td>

Add Video playback functionality to a scene. It uses MediaPlayer and
VideoOutput types to provide video playback functionality.

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

Class

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

QAudioOutput

.. raw:: html

   </td>

.. raw:: html

   <td>

Sends audio data to an audio output device

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QCamera

.. raw:: html

   </td>

.. raw:: html

   <td>

Access camera viewfinder.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QCameraImageCapture

.. raw:: html

   </td>

.. raw:: html

   <td>

Record media content. Intended to be used with QCamera to record media.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QMediaPlayer

.. raw:: html

   </td>

.. raw:: html

   <td>

Playback media from a source.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QMediaPlaylist

.. raw:: html

   </td>

.. raw:: html

   <td>

List of media to be played.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QRadioTuner

.. raw:: html

   </td>

.. raw:: html

   <td>

Access radio device.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QVideoRendererControl

.. raw:: html

   </td>

.. raw:: html

   <td>

Control video data.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="related-information">

Related Information

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Guides

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Multimedia - overview of multimedia support in Qt

.. raw:: html

   </li>

.. raw:: html

   <li>

Audio Overview

.. raw:: html

   </li>

.. raw:: html

   <li>

Video Overview

.. raw:: html

   </li>

.. raw:: html

   <li>

Camera Overview

.. raw:: html

   </li>

.. raw:: html

   <li>

Radio Overview

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Platform Notes

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

BlackBerry

.. raw:: html

   </li>

.. raw:: html

   <li>

Windows

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Reference

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt Multimedia

.. raw:: html

   <ul>

.. raw:: html

   <li>

QML Types

.. raw:: html

   </li>

.. raw:: html

   <li>

C++ Classes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt Audio Engine

.. raw:: html

   <ul>

.. raw:: html

   <li>

QML Types

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Examples

.. raw:: html

   </h3>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt Multimedia Examples

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtmultimedia-index.html -->

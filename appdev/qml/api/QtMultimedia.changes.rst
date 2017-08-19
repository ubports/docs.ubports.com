QtMultimedia.changes
====================

.. raw:: html

   <p>

The Qt Multimedia module in Qt 5 combines (and replaces) two older
modules, namely the Qt Multimedia module from Qt 4.x, and Qt Multimedia
Kit module from Qt Mobility. Existing code that uses Qt Multimedia from
Qt 4 can be ported with minimal effort, but porting code that uses Qt
Multimedia Kit may be a more involved process. The changed features
section highlights changes relevant to porting.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also, note that widget-based classes, such as QVideoWidget, are now in a
separate module called Qt Multimedia Widgets.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="new-features-in-qt-5-0">

New features in Qt 5.0

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are a number of new features in Qt Multimedia:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Expanded QML API

.. raw:: html

   </li>

.. raw:: html

   <li>

In addition to the Video QML type, there is now the option of using
MediaPlayer and VideoOutput together

.. raw:: html

   </li>

.. raw:: html

   <li>

QML Torch class

.. raw:: html

   </li>

.. raw:: html

   <li>

New QAudioRecorder class

.. raw:: html

   </li>

.. raw:: html

   <li>

Volume support for QAudioOutput and QAudioInput

.. raw:: html

   </li>

.. raw:: html

   <li>

More examples and documentation

.. raw:: html

   </li>

.. raw:: html

   <li>

QSound moved from Qt GUI to Qt Multimedia

.. raw:: html

   </li>

.. raw:: html

   <li>

QSoundEffect available to C++ now, as well as QML

.. raw:: html

   </li>

.. raw:: html

   <li>

FM Radio Data System classes and types now available (QRadioData,
RadioData)

.. raw:: html

   </li>

.. raw:: html

   <li>

Various other API improvements and bugfixes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="removed-features">

Removed features

.. raw:: html

   </h2>

.. raw:: html

   <p>

A number of classes or features previously offered in Qt Multimedia or
Qt Multimedia Kit have been removed.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="70%">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Removed feature

.. raw:: html

   </th>

.. raw:: html

   <th>

Notes

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

QMediaImageViewer

.. raw:: html

   </td>

.. raw:: html

   <td>

This class (and related controls and services) were removed since their
functionality was not suitable for many applications

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="changed-features">

Changed features

.. raw:: html

   </h2>

.. raw:: html

   <p>

A number of classes previously offered in Qt Multimedia or Qt Multimedia
Kit have changed in ways that may affect previously written code. This
table highlights such changes.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic" width="70%">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

Changed feature

.. raw:: html

   </th>

.. raw:: html

   <th>

Notes

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

qmake project file changes

.. raw:: html

   </td>

.. raw:: html

   <td>

Previously, to use Qt Multimedia Kit, the qmake project file must
contain

.. raw:: html

   <pre class="cpp">CONFIG <span class="operator">+</span><span class="operator">=</span> mobility
   MOBILITY <span class="operator">+</span><span class="operator">=</span> multimedia</pre>

.. raw:: html

   <p>

Now, you only need to write

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> multimedia</pre>

.. raw:: html

   <p>

Or, if you want to use the widget classes,

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> multimedia multimediawidgets</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Namespaces

.. raw:: html

   </td>

.. raw:: html

   <td>

The QtMultimediaKit namespace has been renamed to QMultimedia. This
affects a few enumerations, namely SupportEstimate, EncodingQuality,
EncodingMode and AvailabilityStatus. Searching and replacing
QtMultimediaKit with QMultimedia will greatly aid porting efforts.
Metadata have been split off into their own namespace, QMediaMetaData.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Metadata types

.. raw:: html

   </td>

.. raw:: html

   <td>

In Qt Multimedia Kit, pre-defined metadata keys were enumerations in the
QtMultimediaKit namespace. These pre-defined keys have been changed to
string literals in the QMediaMetaData namespace, for consistency with
extended keys.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Metadata accessor methods

.. raw:: html

   </td>

.. raw:: html

   <td>

In Qt Multimedia Kit, there were two different families of methods to
access metadata. Functions such as QMediaObject::metaData() operated on
pre-defined metadata using enumerated keys, while functions such as
QMediaObject::extendedMetaData() operated on extended metadata using
string keys. Qt 5 combines both families into one (e.g.
QMediaObject::metaData()), which can operate on both pre-defined and
extended metadata, using string keys.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Qt Metatype registration

.. raw:: html

   </td>

.. raw:: html

   <td>

Qt 5 registers many more classes and types with the meta-object system
than before. If you have previously applied Q\_DECLARE\_METATYPE macros
to any Qt Multimedia class, you will probably need to remove them.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QSoundEffect availability

.. raw:: html

   </td>

.. raw:: html

   <td>

The SoundEffect QML type was publicly accessible in Qt Multimeda Kit,
and now the C++ version is officially public too. If your code contains
the previously undocumented QSoundEffect, you may need to update it.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Camera controls

.. raw:: html

   </td>

.. raw:: html

   <td>

A large number of the camera controls (QCameraImageProcessingControl,
QCameraFocusControl, etc.) have been updated to address a number of
design flaws. In particular, a number of discrete accessor methods have
been collapsed into parametrized methods, and the ranges or data types
of some parameters have been adjusted.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@changes.html -->

QtMultimedia.qtmultimedia-windows
=================================

.. raw:: html

   <p>

This page covers the availability of Qt Multimedia features on Windows.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="implementation">

Implementation

.. raw:: html

   </h2>

.. raw:: html

   <p>

Qt Multimedia features for Windows are implemented in two plugins; one
using the Microsoft DirectShow API, and another using WMF (Windows Media
Foundation) framework. DirectShow API was introduced in Windows 98, and
gradually deprecated from Windows XP onwards. Media Foundation framework
was introduced in Windows Vista as a replacement for DirectShow and
other multimedia APIs. Consequently, WMF plugin in Qt is supported only
for Windows Vista and later versions of the operating system.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="limitations">

Limitations

.. raw:: html

   </h2>

.. raw:: html

   <p>

The WMF plugin in Qt does not currently provide a camera backend.
Instead, limited support for camera features is provided by the
DirectShow plugin. Basic features such as displaying a viewfinder and
capturing a still image are supported, however, majority of camera
controls are not implemented.

.. raw:: html

   </p>

.. raw:: html

   <p>

Video recording is currently not supported. Additionally, the DirectShow
plugin does not support any low-level video functionality such as
monitoring video frames being played or recorded using QVideoProbe or
related classes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtmultimedia-windows.html -->

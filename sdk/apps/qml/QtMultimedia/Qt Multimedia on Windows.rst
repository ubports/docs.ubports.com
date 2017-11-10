.. _sdk_qtmultimedia_qt_multimedia_on_windows:

QtMultimedia Qt Multimedia on Windows
=====================================


This page covers the availability of Qt Multimedia features on Windows.

Qt Multimedia features for Windows are implemented in two plugins; one using the Microsoft DirectShow API, and another using WMF (Windows Media Foundation) framework. DirectShow API was introduced in Windows 98, and gradually deprecated from Windows XP onwards. Media Foundation framework was introduced in Windows Vista as a replacement for DirectShow and other multimedia APIs. Consequently, WMF plugin in Qt is supported only for Windows Vista and later versions of the operating system.

The WMF plugin in Qt does not currently provide a camera backend. Instead, limited support for camera features is provided by the DirectShow plugin. Basic features such as displaying a viewfinder and capturing a still image are supported, however, majority of camera controls are not implemented.

Video recording is currently not supported. Additionally, the DirectShow plugin does not support any low-level video functionality such as monitoring video frames being played or recorded using QVideoProbe or related classes.


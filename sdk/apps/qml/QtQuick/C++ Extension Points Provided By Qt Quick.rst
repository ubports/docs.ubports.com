.. _sdk_qtquick_c++_extension_points_provided_by_qt_quick:

QtQuick C++ Extension Points Provided By Qt Quick
=================================================


All QML applications can be extended from C++ in order to use additional functionality implemented in C++ code or to provide a C++ based QML plugin. This topic of extending QML from C++ is covered in the Integrating QML and C++ documentation.

Additionally, the Qt Quick module provides several extension and integration points for C++ developers, specific to this module. In particular, it allows C++ developers to create and register custom QQuickItem-derived types which can be rendered by Qt Quick. It also provides several scene graph-related classes which allow developers to define their own rendering primitives.

While the Qt Quick module already provides a rich library of visual item types for use in a QML application, some developers may wish to define their own item-derived types in C++ and expose them to the QML type system. The easiest way to do this is to subclass QQuickItem, which is the base type for all visual types in the Qt Quick module. See the QQuickItem documentation for more details.

Qt Quick 2 makes use of a dedicated scene graph based on OpenGL ES 2.0 or OpenGL 2.0 for its rendering. Using a scene graph for graphics rather than the traditional imperative painting systems (QPainter and similar), means the scene to be rendered can be retained between frames and the complete set of primitives to render is known before rendering starts. This opens up for a number of optimizations, such as batching the OpenGL draw calls to minimize state changes or discarding obscured primitives.

The Qt Quick C++ API provides various classes to enable custom nodes to be created in C++.

See the `Qt Quick Scene Graph </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph/>`_  documentation for details.

While the QML engine allows QML application to load images from filesystem or network resources, some applications may require the additional option of loading images from C++ based processes. This can be implemented through the QQuickImageProvider class, which provides support for pixmap loading and threaded image requests for QML applications. Any QML application that requests an image through the special "image:" URL scheme will be directed to an appropriate image provider to load the image.

For more information, see the QQuickImageProvider documentation.


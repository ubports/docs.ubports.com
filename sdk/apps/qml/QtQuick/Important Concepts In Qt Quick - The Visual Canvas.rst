.. _sdk_qtquick_important_concepts_in_qt_quick_-_the_visual_canvas:

QtQuick Important Concepts In Qt Quick - The Visual Canvas
==========================================================


The visual canvas provided by the Qt Quick is a two dimensional canvas with z-ordering.

The top-left pixel in the Qt Quick coordinate system is the [0, 0] pixel. The coordinate system of a child item is relative to its visual parent item. See the documentation on the `Coordinate System </sdk/apps/qml/QtQuick/qtquick-visualcanvas-coordinates/>`_  for in-depth information about the coordinate system utilized by Qt Quick.

There are two separate kinds of parenting in a QML application which uses Qt Quick. The first kind is the ownership-parent (also known as the QObject parent) which determines object lifetime semantics. The second kind is the visual parent which determines where on the canvas an item is drawn, and also certain properties (for example, opacity applies to visual children).

In almost all cases, the visual parent is identical to the ownership-parent. See the documentation about the `Visual Parent </sdk/apps/qml/QtQuick/qtquick-visualcanvas-visualparent/>`_  for more in-depth information on the topic.

Modern computer systems and devices use OpenGL to draw graphics. Qt Quick requires OpenGL and it is used to display applications developed with Qt Quick in QML. In particular, Qt Quick defines a scene graph which is then rendered. See the documentation about the `Scene Graph </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph/>`_  for in-depth information about the concept of a scene graph and why it is beneficial, and about the scene graph implementation provided by Qt Quick.


QtQuick.qtquick-visualcanvas-topic
==================================

.. raw:: html

   <p>

The visual canvas provided by the Qt Quick is a two dimensional canvas
with z-ordering.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="coordinate-system">

Coordinate System

.. raw:: html

   </h2>

.. raw:: html

   <p>

The top-left pixel in the Qt Quick coordinate system is the [0, 0]
pixel. The coordinate system of a child item is relative to its visual
parent item. See the documentation on the Coordinate System for in-depth
information about the coordinate system utilized by Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="visual-parent">

Visual Parent

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are two separate kinds of parenting in a QML application which
uses Qt Quick. The first kind is the ownership-parent (also known as the
QObject parent) which determines object lifetime semantics. The second
kind is the visual parent which determines where on the canvas an item
is drawn, and also certain properties (for example, opacity applies to
visual children).

.. raw:: html

   </p>

.. raw:: html

   <p>

In almost all cases, the visual parent is identical to the
ownership-parent. See the documentation about the Visual Parent for more
in-depth information on the topic.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="scene-graph">

Scene Graph

.. raw:: html

   </h2>

.. raw:: html

   <p>

Modern computer systems and devices use OpenGL to draw graphics. Qt
Quick requires OpenGL and it is used to display applications developed
with Qt Quick in QML. In particular, Qt Quick defines a scene graph
which is then rendered. See the documentation about the Scene Graph for
in-depth information about the concept of a scene graph and why it is
beneficial, and about the scene graph implementation provided by Qt
Quick.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-visualcanvas-topic.html -->

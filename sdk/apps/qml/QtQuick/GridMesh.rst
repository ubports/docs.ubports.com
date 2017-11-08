.. _sdk_qtquick_gridmesh:

QtQuick GridMesh
================

Defines a mesh with vertices arranged in a grid

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.0               |
+---------------------+----------------------+

Properties
----------

-  :ref:`resolution <sdk_qtquick_gridmesh_resolution>` : size

Detailed Description
--------------------

GridMesh defines a rectangular mesh consisting of vertices arranged in an evenly spaced grid. It is used to generate geometry. The grid resolution is specified with the resolution property.

Property Documentation
----------------------

.. _sdk_qtquick_gridmesh_resolution:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| resolution : size                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the grid resolution. The resolution's width and height specify the number of cells or spacings between vertices horizontally and vertically respectively. The minimum and default is 1x1, which corresponds to four vertices in total, one in each corner. For non-linear vertex transformations, you probably want to set the resolution higher.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     import QtQuick 2.0                                                                                                                                 |
|                                                                                                                                                        |     ShaderEffect {                                                                                                                                     |
|                                                                                                                                                        |         width: 200                                                                                                                                     |
|                                                                                                                                                        |         height: 200                                                                                                                                    |
|                                                                                                                                                        |         mesh: GridMesh {                                                                                                                               |
|                                                                                                                                                        |             resolution: Qt.size(20, 20)                                                                                                                |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         property variant source: Image {                                                                                                               |
|                                                                                                                                                        |             source: "qt-logo.png"                                                                                                                      |
|                                                                                                                                                        |             sourceSize { width: 200; height: 200 }                                                                                                     |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |         vertexShader: "                                                                                                                                |
|                                                                                                                                                        |             uniform highp mat4 qt_Matrix;                                                                                                              |
|                                                                                                                                                        |             attribute highp vec4 qt_Vertex;                                                                                                            |
|                                                                                                                                                        |             attribute highp vec2 qt_MultiTexCoord0;                                                                                                    |
|                                                                                                                                                        |             varying highp vec2 qt_TexCoord0;                                                                                                           |
|                                                                                                                                                        |             uniform highp float width;                                                                                                                 |
|                                                                                                                                                        |             void main() {                                                                                                                              |
|                                                                                                                                                        |                 highp vec4 pos = qt_Vertex;                                                                                                            |
|                                                                                                                                                        |                 highp float d = .5 * smoothstep(0., 1., qt_MultiTexCoord0.y);                                                                          |
|                                                                                                                                                        |                 pos.x = width * mix(d, 1.0 - d, qt_MultiTexCoord0.x);                                                                                  |
|                                                                                                                                                        |                 gl_Position = qt_Matrix * pos;                                                                                                         |
|                                                                                                                                                        |                 qt_TexCoord0 = qt_MultiTexCoord0;                                                                                                      |
|                                                                                                                                                        |             }"                                                                                                                                         |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+


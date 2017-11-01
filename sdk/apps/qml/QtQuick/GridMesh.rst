Defines a mesh with vertices arranged in a grid

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+
| Since:              | Qt 5.0               |
+---------------------+----------------------+

Properties
----------

-  ****`resolution </sdk/apps/qml/QtQuick/GridMesh#resolution-prop>`__****
   : size

Detailed Description
--------------------

GridMesh defines a rectangular mesh consisting of vertices arranged in
an evenly spaced grid. It is used to generate geometry. The grid
resolution is specified with the resolution property.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ resolution : size                                               |
+--------------------------------------------------------------------------+

This property holds the grid resolution. The resolution's width and
height specify the number of cells or spacings between vertices
horizontally and vertically respectively. The minimum and default is
1x1, which corresponds to four vertices in total, one in each corner.
For non-linear vertex transformations, you probably want to set the
resolution higher.

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     import QtQuick 2.0               |
|                                      |     ShaderEffect {                   |
|                                      |         width: 200                   |
|                                      |         height: 200                  |
|                                      |         mesh: GridMesh {             |
|                                      |             resolution: Qt.size(20,  |
|                                      | 20)                                  |
|                                      |         }                            |
|                                      |         property variant source: Ima |
|                                      | ge {                                 |
|                                      |             source: "qt-logo.png"    |
|                                      |             sourceSize { width: 200; |
|                                      |  height: 200 }                       |
|                                      |         }                            |
|                                      |         vertexShader: "              |
|                                      |             uniform highp mat4 qt_Ma |
|                                      | trix;                                |
|                                      |             attribute highp vec4 qt_ |
|                                      | Vertex;                              |
|                                      |             attribute highp vec2 qt_ |
|                                      | MultiTexCoord0;                      |
|                                      |             varying highp vec2 qt_Te |
|                                      | xCoord0;                             |
|                                      |             uniform highp float widt |
|                                      | h;                                   |
|                                      |             void main() {            |
|                                      |                 highp vec4 pos = qt_ |
|                                      | Vertex;                              |
|                                      |                 highp float d = .5 * |
|                                      |  smoothstep(0., 1., qt_MultiTexCoord |
|                                      | 0.y);                                |
|                                      |                 pos.x = width * mix( |
|                                      | d, 1.0 - d, qt_MultiTexCoord0.x);    |
|                                      |                 gl_Position = qt_Mat |
|                                      | rix * pos;                           |
|                                      |                 qt_TexCoord0 = qt_Mu |
|                                      | ltiTexCoord0;                        |
|                                      |             }"                       |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/GridMesh/images/declarative-gridmesh.png


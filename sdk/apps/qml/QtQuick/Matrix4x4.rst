Provides a way to apply a 4x4 tranformation matrix to an Item

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`matrix </sdk/apps/qml/QtQuick/Matrix4x4#matrix-prop>`__**** :
   QMatrix4x4

Detailed Description
--------------------

The Matrix4x4 type provides a way to apply a transformation to an
`Item </sdk/apps/qml/QtQuick/Item/>`__ through a 4x4 matrix.

It allows for a combination of rotation, scale, translatation and
shearing by using just one tranformation provided in a 4x4-matrix.

The following example rotates a Rectangle 45 degress (PI/4):

.. code:: qml

    Rectangle {
        width: 100
        height: 100
        color: "red"
        transform: Matrix4x4 {
            property real a: Math.PI / 4
            matrix: Qt.matrix4x4(Math.cos(a), -Math.sin(a), 0, 0,
                                 Math.sin(a),  Math.cos(a), 0, 0,
                                 0,           0,            1, 0,
                                 0,           0,            0, 1)
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ matrix : QMatrix4x4                                             |
+--------------------------------------------------------------------------+

4x4-matrix which will be used in the tranformation of an
`Item </sdk/apps/qml/QtQuick/Item/>`__

| 

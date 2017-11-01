Manipulates the way a path is interpreted

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`value </sdk/apps/qml/QtQuick/PathPercent#value-prop>`__**** :
   real

Detailed Description
--------------------

`PathPercent </sdk/apps/qml/QtQuick/PathPercent/>`__ allows you to
manipulate the spacing between items on a
`PathView </sdk/apps/qml/QtQuick/PathView/>`__'s path. You can use it to
bunch together items on part of the path, and spread them out on other
parts of the path.

The examples below show the normal distribution of items along a path
compared to a distribution which places 50% of the items along the
`PathLine </sdk/apps/qml/QtQuick/PathLine/>`__ section of the path.

+--------------------------------------+--------------------------------------+
| |image0|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     PathView {                       |
|                                      |         // ...                       |
|                                      |         Path {                       |
|                                      |             startX: 20; startY: 0    |
|                                      |             PathQuad { x: 50; y: 80; |
|                                      |  controlX: 0; controlY: 80 }         |
|                                      |             PathLine { x: 150; y: 80 |
|                                      |  }                                   |
|                                      |             PathQuad { x: 180; y: 0; |
|                                      |  controlX: 200; controlY: 80 }       |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+
| |image1|                             | .. code:: qml                        |
|                                      |                                      |
|                                      |     PathView {                       |
|                                      |         // ...                       |
|                                      |         Path {                       |
|                                      |             startX: 20; startY: 0    |
|                                      |             PathQuad { x: 50; y: 80; |
|                                      |  controlX: 0; controlY: 80 }         |
|                                      |             PathPercent { value: 0.2 |
|                                      | 5 }                                  |
|                                      |             PathLine { x: 150; y: 80 |
|                                      |  }                                   |
|                                      |             PathPercent { value: 0.7 |
|                                      | 5 }                                  |
|                                      |             PathQuad { x: 180; y: 0; |
|                                      |  controlX: 200; controlY: 80 }       |
|                                      |             PathPercent { value: 1 } |
|                                      |         }                            |
|                                      |     }                                |
+--------------------------------------+--------------------------------------+

**See also** `Path </sdk/apps/qml/QtQuick/Path/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ value : real                                                    |
+--------------------------------------------------------------------------+

The proportion of items that should be laid out up to this point.

This value should always be higher than the last value specified by a
`PathPercent </sdk/apps/qml/QtQuick/PathPercent/>`__ at a previous
position in the Path.

In the following example we have a Path made up of three PathLines.
Normally, the items of the
`PathView </sdk/apps/qml/QtQuick/PathView/>`__ would be laid out equally
along this path, with an equal number of items per line segment.
`PathPercent </sdk/apps/qml/QtQuick/PathPercent/>`__ allows us to
specify that the first and third lines should each hold 10% of the laid
out items, while the second line should hold the remaining 80%.

.. code:: qml

    PathView {
        // ...
        Path {
            startX: 0; startY: 0
            PathLine { x:100; y: 0; }
            PathPercent { value: 0.1 }
            PathLine { x: 100; y: 100 }
            PathPercent { value: 0.9 }
            PathLine { x: 100; y: 0 }
            PathPercent { value: 1 }
        }
    }

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/PathPercent/images/declarative-nopercent.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/PathPercent/images/declarative-percent.png


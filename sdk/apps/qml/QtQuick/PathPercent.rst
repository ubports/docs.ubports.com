.. _sdk_qtquick_pathpercent:

QtQuick PathPercent
===================

Manipulates the way a path is interpreted

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`value <sdk_qtquick_pathpercent_value>` : real

Detailed Description
--------------------

:ref:`PathPercent <sdk_qtquick_pathpercent>` allows you to manipulate the spacing between items on a :ref:`PathView <sdk_qtquick_pathview>`'s path. You can use it to bunch together items on part of the path, and spread them out on other parts of the path.

The examples below show the normal distribution of items along a path compared to a distribution which places 50% of the items along the :ref:`PathLine <sdk_qtquick_pathline>` section of the path.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     PathView {                                                                                                                                         |
|                                                                                                                                                        |         // ...                                                                                                                                         |
|                                                                                                                                                        |         Path {                                                                                                                                         |
|                                                                                                                                                        |             startX: 20; startY: 0                                                                                                                      |
|                                                                                                                                                        |             PathQuad { x: 50; y: 80; controlX: 0; controlY: 80 }                                                                                       |
|                                                                                                                                                        |             PathLine { x: 150; y: 80 }                                                                                                                 |
|                                                                                                                                                        |             PathQuad { x: 180; y: 0; controlX: 200; controlY: 80 }                                                                                     |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                                                                                                | .. code:: qml                                                                                                                                                  |
|                                                                                                                                                        |                                                                                                                                                        |
|                                                                                                                                                        |     PathView {                                                                                                                                         |
|                                                                                                                                                        |         // ...                                                                                                                                         |
|                                                                                                                                                        |         Path {                                                                                                                                         |
|                                                                                                                                                        |             startX: 20; startY: 0                                                                                                                      |
|                                                                                                                                                        |             PathQuad { x: 50; y: 80; controlX: 0; controlY: 80 }                                                                                       |
|                                                                                                                                                        |             PathPercent { value: 0.25 }                                                                                                                |
|                                                                                                                                                        |             PathLine { x: 150; y: 80 }                                                                                                                 |
|                                                                                                                                                        |             PathPercent { value: 0.75 }                                                                                                                |
|                                                                                                                                                        |             PathQuad { x: 180; y: 0; controlX: 200; controlY: 80 }                                                                                     |
|                                                                                                                                                        |             PathPercent { value: 1 }                                                                                                                   |
|                                                                                                                                                        |         }                                                                                                                                              |
|                                                                                                                                                        |     }                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

**See also** :ref:`Path <sdk_qtquick_path>`.

Property Documentation
----------------------

.. _sdk_qtquick_pathpercent_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| value : real                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The proportion of items that should be laid out up to this point.

This value should always be higher than the last value specified by a :ref:`PathPercent <sdk_qtquick_pathpercent>` at a previous position in the Path.

In the following example we have a Path made up of three PathLines. Normally, the items of the :ref:`PathView <sdk_qtquick_pathview>` would be laid out equally along this path, with an equal number of items per line segment. :ref:`PathPercent <sdk_qtquick_pathpercent>` allows us to specify that the first and third lines should each hold 10% of the laid out items, while the second line should hold the remaining 80%.

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


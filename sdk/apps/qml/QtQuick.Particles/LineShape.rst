Represents a line for affectors and emitters

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick.Particles 2.0         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Shape </sdk/apps/qml/QtQuick/Partic |
|                                      | les.Shape/>`__                       |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`mirrored </sdk/apps/qml/QtQuick/Particles.LineShape#mirrored-prop>`__****
   : bool

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ mirrored : bool                                                 |
+--------------------------------------------------------------------------+

By default, the line goes from (0,0) to (width, height) of the item that
this shape is being applied to.

If mirrored is set to true, this will be mirrored along the y axis. The
line will then go from (0,height) to (width, 0).

| 

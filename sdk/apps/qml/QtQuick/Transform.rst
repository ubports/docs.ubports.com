For specifying advanced transformations on Items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Detailed Description
--------------------

The Transform type is a base type which cannot be instantiated directly.
The following concrete Transform types are available:

-  `Rotation </sdk/apps/qml/QtQuick/Rotation/>`__
-  `Scale </sdk/apps/qml/QtQuick/Scale/>`__
-  `Translate </sdk/apps/qml/QtQuick/Translate/>`__

The Transform types let you create and control advanced transformations
that can be configured independently using specialized properties.

You can assign any number of Transforms to an
`Item </sdk/apps/qml/QtQuick/Item/>`__. Each Transform is applied in
order, one at a time.

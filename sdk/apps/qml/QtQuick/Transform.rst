.. _sdk_qtquick_transform:

QtQuick Transform
=================

For specifying advanced transformations on Items

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Detailed Description
--------------------

The Transform type is a base type which cannot be instantiated directly. The following concrete Transform types are available:

-  :ref:`Rotation <sdk_qtquick_rotation>`
-  :ref:`Scale <sdk_qtquick_scale>`
-  :ref:`Translate <sdk_qtquick_translate>`

The Transform types let you create and control advanced transformations that can be configured independently using specialized properties.

You can assign any number of Transforms to an :ref:`Item <sdk_qtquick_item>`. Each Transform is applied in order, one at a time.

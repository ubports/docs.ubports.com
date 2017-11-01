

Transformations are applied to child hierarchies and also will also
transform mouse and touch input so coordinates in event handlers behave
as expected.

.. rubric:: Item Properties
   :name: item-properties

The `Item </sdk/apps/qml/QtQuick/Item/>`__ contains a number of
convenience properties, covering the most common types of
transformations.

-  ``x`` and ``y``; Translates the item.
-  ``scale``; Applies a uniform scale factor to the item.
-  ``rotation``; Applies a counterclockwise rotation of the item.
-  ``transformOrigin``; Used in conjunction with scale and rotation to
   change the origin of the transformation.

.. rubric:: Transform List
   :name: transform-list

In addition to the convenience types, it is possible to define more
comprehensive transformations using a list of
`Scale </sdk/apps/qml/QtQuick/Scale/>`__,
`Rotation </sdk/apps/qml/QtQuick/Rotation/>`__, and
`Translate </sdk/apps/qml/QtQuick/Translate/>`__ objects to the
``transform`` property of the `Item </sdk/apps/qml/QtQuick/Item/>`__.


QtQuick.qtquick-effects-transformations
=======================================

.. raw:: html

   <p>

Transformations are applied to child hierarchies and also will also
transform mouse and touch input so coordinates in event handlers behave
as expected.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="item-properties">

Item Properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Item contains a number of convenience properties, covering the most
common types of transformations.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

x and y; Translates the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

scale; Applies a uniform scale factor to the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

rotation; Applies a counterclockwise rotation of the item.

.. raw:: html

   </li>

.. raw:: html

   <li>

transformOrigin; Used in conjunction with scale and rotation to change
the origin of the transformation.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="transform-list">

Transform List

.. raw:: html

   </h2>

.. raw:: html

   <p>

In addition to the convenience types, it is possible to define more
comprehensive transformations using a list of Scale, Rotation, and
Translate objects to the transform property of the Item.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-effects-transformations.html -->

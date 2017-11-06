.. _sdk_qtquick_qt_quick_transformation_types:

QtQuick Qt Quick Transformation Types
=====================================


Transformations are applied to child hierarchies and also will also transform mouse and touch input so coordinates in event handlers behave as expected.

The :ref:`Item <sdk_qtquick_item>` contains a number of convenience properties, covering the most common types of transformations.

-  ``x`` and ``y``; Translates the item.
-  ``scale``; Applies a uniform scale factor to the item.
-  ``rotation``; Applies a counterclockwise rotation of the item.
-  ``transformOrigin``; Used in conjunction with scale and rotation to change the origin of the transformation.

In addition to the convenience types, it is possible to define more comprehensive transformations using a list of :ref:`Scale <sdk_qtquick_scale>`, :ref:`Rotation <sdk_qtquick_rotation>`, and :ref:`Translate <sdk_qtquick_translate>` objects to the ``transform`` property of the :ref:`Item <sdk_qtquick_item>`.


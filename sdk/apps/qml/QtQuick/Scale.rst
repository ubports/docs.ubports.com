Provides a way to scale an Item

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`origin </sdk/apps/qml/QtQuick/Scale#origin-prop>`__****

   -  ****`origin.x </sdk/apps/qml/QtQuick/Scale#origin.x-prop>`__**** :
      real
   -  ****`origin.y </sdk/apps/qml/QtQuick/Scale#origin.y-prop>`__**** :
      real

-  ****`xScale </sdk/apps/qml/QtQuick/Scale#xScale-prop>`__**** : real
-  ****`yScale </sdk/apps/qml/QtQuick/Scale#yScale-prop>`__**** : real

Detailed Description
--------------------

The Scale type provides a way to scale an
`Item </sdk/apps/qml/QtQuick/Item/>`__ through a scale-type transform.

It allows different scaling values for the x and y axes, and allows the
scale to be relative to an arbitrary point. This gives more control over
item scaling than the `scale </sdk/apps/qml/QtQuick/Item#scale-prop>`__
property.

The following example scales the X axis of the Rectangle, relative to
its interior point (25, 25):

.. code:: qml

    Rectangle {
        width: 100; height: 100
        color: "blue"
        transform: Scale { origin.x: 25; origin.y: 25; xScale: 3}
    }

**See also** `Rotation </sdk/apps/qml/QtQuick/Rotation/>`__ and
`Translate </sdk/apps/qml/QtQuick/Translate/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ **origin group**                                                |
+==========================================================================+
|        \ origin.x : real                                                 |
+--------------------------------------------------------------------------+
|        \ origin.y : real                                                 |
+--------------------------------------------------------------------------+

This property holds the point that the item is scaled from (that is, the
point that stays fixed relative to the parent as the rest of the item
grows).

The default value of the origin is (0, 0).

| 

+--------------------------------------------------------------------------+
|        \ xScale : real                                                   |
+--------------------------------------------------------------------------+

The scaling factor for the X axis.

The default value is 1.0.

| 

+--------------------------------------------------------------------------+
|        \ yScale : real                                                   |
+--------------------------------------------------------------------------+

The scaling factor for the Y axis.

The default value is 1.0.

| 

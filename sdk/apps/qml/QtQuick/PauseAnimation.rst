Provides a pause for an animation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`duration </sdk/apps/qml/QtQuick/PauseAnimation#duration-prop>`__****
   : int

Detailed Description
--------------------

When used in a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__,
`PauseAnimation </sdk/apps/qml/QtQuick/PauseAnimation/>`__ is a step
when nothing happens, for a specified duration.

A 500ms animation sequence, with a 100ms pause between two animations:

.. code:: cpp

    SequentialAnimation {
        NumberAnimation { ... duration: 200 }
        PauseAnimation { duration: 100 }
        NumberAnimation { ... duration: 200 }
    }

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration of the pause in milliseconds

The default value is 250.

| 

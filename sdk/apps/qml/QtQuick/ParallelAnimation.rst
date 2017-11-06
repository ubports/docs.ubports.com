.. _sdk_qtquick_parallelanimation:

QtQuick ParallelAnimation
=========================

Enables animations to be run in parallel

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Detailed Description
--------------------

The :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` and :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` types allow multiple animations to be run together. Animations defined in a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` are run one after the other, while animations defined in a :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` are run at the same time.

The following animation runs two number animations in parallel. The :ref:`Rectangle <sdk_qtquick_rectangle>` moves to (50,50) by animating its ``x`` and ``y`` properties at the same time.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        ParallelAnimation {
            running: true
            NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
            NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        }
    }

Like any other animation type, a :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

**Note:** Once an animation has been grouped into a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` or :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>`, it cannot be individually started and stopped; the :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` or :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` must be started and stopped as a group.

**See also** :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>`, `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ , and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

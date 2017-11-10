.. _sdk_qtquick_sequentialanimation:

QtQuick SequentialAnimation
===========================

Allows animations to be run sequentially

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Detailed Description
--------------------

The :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` and :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` types allow multiple animations to be run together. Animations defined in a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` are run one after the other, while animations defined in a :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` are run at the same time.

The following example runs two number animations in a sequence. The :ref:`Rectangle <sdk_qtquick_rectangle>` animates to a ``x`` position of 50, then to a ``y`` position of 50.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        SequentialAnimation {
            running: true
            NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
            NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        }
    }

Animations defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  are automatically run in parallel, so :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` can be used to enclose the animations in a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  if this is the preferred behavior.

Like any other animation type, a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` can be applied in a number of ways, including transitions, behaviors and property value sources. The `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  documentation shows a variety of methods for creating animations.

**Note:** Once an animation has been grouped into a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` or :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>`, it cannot be individually started and stopped; the :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` or :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` must be started and stopped as a group.

**See also** :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>`, `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ , and `Qt Quick Examples - Animation </sdk/apps/qml/QtQuick/animation/>`_ .

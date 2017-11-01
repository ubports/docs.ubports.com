Allows animations to be run sequentially

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Detailed Description
--------------------

The `SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
and `ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__
types allow multiple animations to be run together. Animations defined
in a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ are
run one after the other, while animations defined in a
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ are run
at the same time.

The following example runs two number animations in a sequence. The
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ animates to a ``x``
position of 50, then to a ``y`` position of 50.

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

Animations defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
are automatically run in parallel, so
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ can
be used to enclose the animations in a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
if this is the preferred behavior.

Like any other animation type, a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ can
be applied in a number of ways, including transitions, behaviors and
property value sources. The `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
documentation shows a variety of methods for creating animations.

**Note:** Once an animation has been grouped into a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ or
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__, it
cannot be individually started and stopped; the
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__ or
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ must be
started and stopped as a group.

**See also**
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__,
`Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__,
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

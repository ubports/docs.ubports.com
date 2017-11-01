Animates changes in parent values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.0                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`newParent </sdk/apps/qml/QtQuick/ParentAnimation#newParent-prop>`__****
   : Item
-  ****`target </sdk/apps/qml/QtQuick/ParentAnimation#target-prop>`__****
   : Item
-  ****`via </sdk/apps/qml/QtQuick/ParentAnimation#via-prop>`__**** :
   Item

Detailed Description
--------------------

`ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__ is used to
animate a parent change for an `Item </sdk/apps/qml/QtQuick/Item/>`__.

For example, the following
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ changes
``blueRect`` to become a child of ``redRect`` when it is clicked. The
inclusion of the
`ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__, which
defines a `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__
to be applied during the transition, ensures the item animates smoothly
as it moves to its new parent:

.. code:: qml

    import QtQuick 2.0
    Item {
        width: 200; height: 100
        Rectangle {
            id: redRect
            width: 100; height: 100
            color: "red"
        }
        Rectangle {
            id: blueRect
            x: redRect.width
            width: 50; height: 50
            color: "blue"
            states: State {
                name: "reparented"
                ParentChange { target: blueRect; parent: redRect; x: 10; y: 10 }
            }
            transitions: Transition {
                ParentAnimation {
                    NumberAnimation { properties: "x,y"; duration: 1000 }
                }
            }
            MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
        }
    }

A `ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__ can
contain any number of animations. These animations will be run in
parallel; to run them sequentially, define them within a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__.

In some cases, such as when reparenting between items with clipping
enabled, it is useful to animate the parent change via another item that
does not have clipping enabled. Such an item can be set using the
`via </sdk/apps/qml/QtQuick/ParentAnimation#via-prop>`__ property.

`ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__ is
typically used within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
in conjunction with a
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__. When used in
this manner, it animates any
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ that has occurred
during the state change. This can be overridden by setting a specific
target item using the
`target </sdk/apps/qml/QtQuick/ParentAnimation#target-prop>`__ property.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `Qt Quick Examples -
Animation </sdk/apps/qml/QtQuick/animation/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ newParent : `Item </sdk/apps/qml/QtQuick/Item/>`__              |
+--------------------------------------------------------------------------+

The new parent to animate to.

If the `ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__ is
defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
this value defaults to the value defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__.

| 

+--------------------------------------------------------------------------+
|        \ target : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

The item to reparent.

When used in a transition, if no target is specified, all
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ occurrences are
animated by the
`ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__.

| 

+--------------------------------------------------------------------------+
|        \ via : `Item </sdk/apps/qml/QtQuick/Item/>`__                    |
+--------------------------------------------------------------------------+

The item to reparent via. This provides a way to do an unclipped
animation when both the old parent and new parent are clipped.

.. code:: qml

    ParentAnimation {
        target: myItem
        via: topLevelItem
        // ...
    }

**Note:** This only works when the
`ParentAnimation </sdk/apps/qml/QtQuick/ParentAnimation/>`__ is used in
a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
in conjunction with a
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__.

| 

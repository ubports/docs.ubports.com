Animates changes in anchor values

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`duration </sdk/apps/qml/QtQuick/AnchorAnimation#duration-prop>`__****
   : int
-  ****`easing </sdk/apps/qml/QtQuick/AnchorAnimation#easing-prop>`__****

   -  ****`easing.type </sdk/apps/qml/QtQuick/AnchorAnimation#easing.type-prop>`__****
      : enumeration
   -  ****`easing.amplitude </sdk/apps/qml/QtQuick/AnchorAnimation#easing.amplitude-prop>`__****
      : real
   -  ****`easing.overshoot </sdk/apps/qml/QtQuick/AnchorAnimation#easing.overshoot-prop>`__****
      : real
   -  ****`easing.period </sdk/apps/qml/QtQuick/AnchorAnimation#easing.period-prop>`__****
      : real

-  ****`targets </sdk/apps/qml/QtQuick/AnchorAnimation#targets-prop>`__****
   : list<Item>

Detailed Description
--------------------

`AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__ is used to
animate an anchor change.

In the following snippet we animate the addition of a right anchor to a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__:

.. code:: qml

    import QtQuick 2.0
    Item {
        id: container
        width: 200; height: 200
        Rectangle {
            id: myRect
            width: 100; height: 100
            color: "red"
        }
        states: State {
            name: "reanchored"
            AnchorChanges { target: myRect; anchors.right: container.right }
        }
        transitions: Transition {
            // smoothly reanchor myRect and move into new position
            AnchorAnimation { duration: 1000 }
        }
        Component.onCompleted: container.state = "reanchored"
    }

When an `AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__ is
used in a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
it will animate any
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ that have
occurred during the state change. This can be overridden by setting a
specific target item using the
`AnchorChanges.target </sdk/apps/qml/QtQuick/AnchorChanges#target-prop>`__
property.

**Note:** `AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__
can only be used in a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
and in conjunction with an AnchorChange. It cannot be used in behaviors
and other types of animations.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and `AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ duration : int                                                  |
+--------------------------------------------------------------------------+

This property holds the duration of the animation, in milliseconds.

The default value is 250.

| 

+--------------------------------------------------------------------------+
|        \ **easing group**                                                |
+==========================================================================+
|        \ easing.type : enumeration                                       |
+--------------------------------------------------------------------------+
|        \ easing.amplitude : real                                         |
+--------------------------------------------------------------------------+
|        \ easing.overshoot : real                                         |
+--------------------------------------------------------------------------+
|        \ easing.period : real                                            |
+--------------------------------------------------------------------------+

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For
some curves you can also specify amplitude, period and/or overshoot. The
default easing curve is Linear.

.. code:: qml

    AnchorAnimation { easing.type: Easing.InOutQuad }

See the
`PropertyAnimation::easing.type </sdk/apps/qml/QtQuick/PropertyAnimation#easing.type-prop>`__
documentation for information about the different types of easing
curves.

| 

+--------------------------------------------------------------------------+
|        \ targets : list<`Item </sdk/apps/qml/QtQuick/Item/>`__>          |
+--------------------------------------------------------------------------+

The items to reanchor.

If no targets are specified all
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ will be
animated by the
`AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__.

| 

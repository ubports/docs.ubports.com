Specifies immediate property changes during animation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`exclude </sdk/apps/qml/QtQuick/PropertyAction#exclude-prop>`__****
   : list<Object>
-  ****`properties </sdk/apps/qml/QtQuick/PropertyAction#properties-prop>`__****
   : string
-  ****`property </sdk/apps/qml/QtQuick/PropertyAction#property-prop>`__****
   : string
-  ****`target </sdk/apps/qml/QtQuick/PropertyAction#target-prop>`__****
   : Object
-  ****`targets </sdk/apps/qml/QtQuick/PropertyAction#targets-prop>`__****
   : list<Object>
-  ****`value </sdk/apps/qml/QtQuick/PropertyAction#value-prop>`__**** :
   any

Detailed Description
--------------------

`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ is used to
specify an immediate property change during an animation. The property
change is not animated.

It is useful for setting non-animated property values during an
animation.

For example, here is a
`SequentialAnimation </sdk/apps/qml/QtQuick/SequentialAnimation/>`__
that sets the image's
`opacity </sdk/apps/qml/QtQuick/Item#opacity-prop>`__ property to
``.5``, animates the width of the image, then sets
`opacity </sdk/apps/qml/QtQuick/Item#opacity-prop>`__ back to ``1``:

.. code:: qml

    SequentialAnimation {
        PropertyAction { target: img; property: "opacity"; value: .5 }
        NumberAnimation { target: img; property: "width"; to: 300; duration: 1000 }
        PropertyAction { target: img; property: "opacity"; value: 1 }
    }

`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ is also
useful for setting the exact point at which a property change should
occur during a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__.
For example, if
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ was used in
a `State </sdk/apps/qml/QtQuick/State/>`__ to rotate an item around a
particular
`transformOrigin </sdk/apps/qml/QtQuick/Item#transformOrigin-prop>`__,
it might be implemented like this:

.. code:: qml

    Item {
        width: 400; height: 400
        Rectangle {
            id: rect
            width: 200; height: 100
            color: "red"
            states: State {
                name: "rotated"
                PropertyChanges { target: rect; rotation: 180; transformOrigin: Item.BottomRight }
            }
            transitions: Transition {
                RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: rect.state = "rotated"
            }
        }
    }

However, with this code, the ``transformOrigin`` is not set until
*after* the animation, as a `State </sdk/apps/qml/QtQuick/State/>`__ is
taken to define the values at the *end* of a transition. The animation
would rotate at the default ``transformOrigin``, then jump to
``Item.BottomRight``. To fix this, insert a
`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ before the
`RotationAnimation </sdk/apps/qml/QtQuick/RotationAnimation/>`__ begins:

.. code:: qml

    transitions: Transition {
        SequentialAnimation {
            PropertyAction { target: rect; property: "transformOrigin" }
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
    }

This immediately sets the ``transformOrigin`` property to the value
defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
(i.e. the value defined in the
`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ object) so
that the rotation animation begins with the correct transform origin.

**See also** `Animation and Transitions in Qt
Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
and Qt QML.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ exclude : list<Object>                                          |
+--------------------------------------------------------------------------+

This property holds the objects that should not be affected by this
action.

**See also**
`targets </sdk/apps/qml/QtQuick/PropertyAction#targets-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ properties : string                                             |
+--------------------------------------------------------------------------+

These properties determine the items and their properties that are
affected by this action.

The details of how these properties are interpreted in different
situations is covered in the
`corresponding </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
documentation.

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAction#exclude-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ property : string                                               |
+--------------------------------------------------------------------------+

These properties determine the items and their properties that are
affected by this action.

The details of how these properties are interpreted in different
situations is covered in the
`corresponding </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
documentation.

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAction#exclude-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ target : Object                                                 |
+--------------------------------------------------------------------------+

These properties determine the items and their properties that are
affected by this action.

The details of how these properties are interpreted in different
situations is covered in the
`corresponding </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
documentation.

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAction#exclude-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ targets : list<Object>                                          |
+--------------------------------------------------------------------------+

These properties determine the items and their properties that are
affected by this action.

The details of how these properties are interpreted in different
situations is covered in the
`corresponding </sdk/apps/qml/QtQuick/PropertyAnimation#properties-prop>`__
`PropertyAnimation </sdk/apps/qml/QtQuick/animation#propertyanimation>`__
documentation.

**See also**
`exclude </sdk/apps/qml/QtQuick/PropertyAction#exclude-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ value : any                                                     |
+--------------------------------------------------------------------------+

This property holds the value to be set on the property.

If the `PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ is
defined within a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__
or `Behavior </sdk/apps/qml/QtQuick/Behavior/>`__, this value defaults
to the value defined in the end state of the
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
or the value of the property change that triggered the
`Behavior </sdk/apps/qml/QtQuick/Behavior/>`__.

| 

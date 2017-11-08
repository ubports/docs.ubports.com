.. _sdk_qtquick_propertyaction:

QtQuick PropertyAction
======================

Specifies immediate property changes during animation

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`exclude <sdk_qtquick_propertyaction_exclude>` : list<Object>
-  :ref:`properties <sdk_qtquick_propertyaction_properties>` : string
-  :ref:`property <sdk_qtquick_propertyaction_property>` : string
-  :ref:`target <sdk_qtquick_propertyaction_target>` : Object
-  :ref:`targets <sdk_qtquick_propertyaction_targets>` : list<Object>
-  :ref:`value <sdk_qtquick_propertyaction_value>` : any

Detailed Description
--------------------

:ref:`PropertyAction <sdk_qtquick_propertyaction>` is used to specify an immediate property change during an animation. The property change is not animated.

It is useful for setting non-animated property values during an animation.

For example, here is a :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` that sets the image's :ref:`opacity <sdk_qtquick_item_opacity>` property to ``.5``, animates the width of the image, then sets :ref:`opacity <sdk_qtquick_item_opacity>` back to ``1``:

.. code:: qml

    SequentialAnimation {
        PropertyAction { target: img; property: "opacity"; value: .5 }
        NumberAnimation { target: img; property: "width"; to: 300; duration: 1000 }
        PropertyAction { target: img; property: "opacity"; value: 1 }
    }

:ref:`PropertyAction <sdk_qtquick_propertyaction>` is also useful for setting the exact point at which a property change should occur during a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ . For example, if :ref:`PropertyChanges <sdk_qtquick_propertychanges>` was used in a :ref:`State <sdk_qtquick_state>` to rotate an item around a particular :ref:`transformOrigin <sdk_qtquick_item_transformOrigin>`, it might be implemented like this:

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

However, with this code, the ``transformOrigin`` is not set until *after* the animation, as a :ref:`State <sdk_qtquick_state>` is taken to define the values at the *end* of a transition. The animation would rotate at the default ``transformOrigin``, then jump to ``Item.BottomRight``. To fix this, insert a :ref:`PropertyAction <sdk_qtquick_propertyaction>` before the :ref:`RotationAnimation <sdk_qtquick_rotationanimation>` begins:

.. code:: qml

    transitions: Transition {
        SequentialAnimation {
            PropertyAction { target: rect; property: "transformOrigin" }
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
    }

This immediately sets the ``transformOrigin`` property to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  (i.e. the value defined in the :ref:`PropertyAction <sdk_qtquick_propertyaction>` object) so that the rotation animation begins with the correct transform origin.

**See also** `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  and Qt QML.

Property Documentation
----------------------

.. _sdk_qtquick_propertyaction_exclude:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exclude : list<Object>                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the objects that should not be affected by this action.

**See also** :ref:`targets <sdk_qtquick_propertyaction_targets>`.

.. _sdk_qtquick_propertyaction_properties:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| properties : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the :ref:`corresponding <sdk_qtquick_propertyanimation_properties>` `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  documentation.

**See also** :ref:`exclude <sdk_qtquick_propertyaction_exclude>`.

.. _sdk_qtquick_propertyaction_property:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| property : string                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the :ref:`corresponding <sdk_qtquick_propertyanimation_properties>` `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  documentation.

**See also** :ref:`exclude <sdk_qtquick_propertyaction_exclude>`.

.. _sdk_qtquick_propertyaction_target:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : Object                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the :ref:`corresponding <sdk_qtquick_propertyanimation_properties>` `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  documentation.

**See also** :ref:`exclude <sdk_qtquick_propertyaction_exclude>`.

.. _sdk_qtquick_propertyaction_targets:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| targets : list<Object>                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the :ref:`corresponding <sdk_qtquick_propertyanimation_properties>` `PropertyAnimation </sdk/apps/qml/QtQuick/animation/#propertyanimation>`_  documentation.

**See also** :ref:`exclude <sdk_qtquick_propertyaction_exclude>`.

.. _sdk_qtquick_propertyaction_value:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| value : any                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the value to be set on the property.

If the :ref:`PropertyAction <sdk_qtquick_propertyaction>` is defined within a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_  or :ref:`Behavior <sdk_qtquick_behavior>`, this value defaults to the value defined in the end state of the `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , or the value of the property change that triggered the :ref:`Behavior <sdk_qtquick_behavior>`.


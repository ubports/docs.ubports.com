.. _sdk_qtquick_propertychanges:

QtQuick PropertyChanges
=======================

Describes new property bindings or values for a state

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`explicit <sdk_qtquick_propertychanges_explicit>` : bool
-  :ref:`restoreEntryValues <sdk_qtquick_propertychanges_restoreEntryValues>` : bool
-  :ref:`target <sdk_qtquick_propertychanges_target>` : Object

Detailed Description
--------------------

:ref:`PropertyChanges <sdk_qtquick_propertychanges>` is used to define the property values or bindings in a :ref:`State <sdk_qtquick_state>`. This enables an item's property values to be changed when it `changes between states </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

To create a :ref:`PropertyChanges <sdk_qtquick_propertychanges>` object, specify the :ref:`target <sdk_qtquick_propertychanges_target>` item whose properties are to be modified, and define the new property values or bindings. For example:

.. code:: qml

    import QtQuick 2.0
    Item {
        id: container
        width: 300; height: 300
        Rectangle {
            id: rect
            width: 100; height: 100
            color: "red"
            MouseArea {
               id: mouseArea
               anchors.fill: parent
            }
            states: State {
               name: "resized"; when: mouseArea.pressed
               PropertyChanges { target: rect; color: "blue"; height: container.height }
            }
        }
    }

When the mouse is pressed, the :ref:`Rectangle <sdk_qtquick_rectangle>` changes to the *resized* state. In this state, the :ref:`PropertyChanges <sdk_qtquick_propertychanges>` object sets the rectangle's color to blue and the ``height`` value to that of ``container.height``.

Note this automatically binds ``rect.height`` to ``container.height`` in the *resized* state. If a property binding should not be established, and the height should just be set to the value of ``container.height`` at the time of the state change, set the :ref:`explicit <sdk_qtquick_propertychanges_explicit>` property to ``true``.

A :ref:`PropertyChanges <sdk_qtquick_propertychanges>` object can also override the default signal handler for an object to implement a signal handler specific to the new state:

.. code:: qml

    PropertyChanges {
        target: myMouseArea
        onClicked: doSomethingDifferent()
    }

**Note:** :ref:`PropertyChanges <sdk_qtquick_propertychanges>` can be used to change anchor margins, but not other anchor values; use :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` for this instead. Similarly, to change an :ref:`Item <sdk_qtquick_item>`'s :ref:`parent <sdk_qtquick_item_parent>` value, use :ref:`ParentChange <sdk_qtquick_parentchange>` instead.

Resetting property values
~~~~~~~~~~~~~~~~~~~~~~~~~

The ``undefined`` value can be used to reset the property value for a state. In the following example, when ``myText`` changes to the *widerText* state, its ``width`` property is reset, giving the text its natural width and displaying the whole string on a single line.

.. code:: qml

    Rectangle {
        width: 300; height: 200
        Text {
            id: myText
            width: 50
            wrapMode: Text.WordWrap
            text: "a text string that is longer than 50 pixels"
            states: State {
                name: "widerText"
                PropertyChanges { target: myText; width: undefined }
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: myText.state = "widerText"
        }
    }

Immediate property changes in transitions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When `Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  are used to animate state changes, they animate properties from their values in the current state to those defined in the new state (as defined by :ref:`PropertyChanges <sdk_qtquick_propertychanges>` objects). However, it is sometimes desirable to set a property value *immediately* during a `Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch/#transition>`_ , without animation; in these cases, the :ref:`PropertyAction <sdk_qtquick_propertyaction>` type can be used to force an immediate property change.

See the :ref:`PropertyAction <sdk_qtquick_propertyaction>` documentation for more details.

**Note:** The :ref:`visible <sdk_qtquick_item_visible>` and :ref:`enabled <sdk_qtquick_item_enabled>` properties of :ref:`Item <sdk_qtquick_item>` do not behave exactly the same as other properties in :ref:`PropertyChanges <sdk_qtquick_propertychanges>`. Since these properties can be changed implicitly through their parent's state, they should be set explicitly in all :ref:`PropertyChanges <sdk_qtquick_propertychanges>`. An item will still not be enabled/visible if one of its parents is not enabled or visible.

**See also** `States example </sdk/apps/qml/QtQuick/animation/#states>`_ , `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ , and Qt QML.

Property Documentation
----------------------

.. _sdk_qtquick_propertychanges_explicit:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| explicit : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If explicit is set to true, any potential bindings will be interpreted as once-off assignments that occur when the state is entered.

In the following example, the addition of explicit prevents ``myItem.width`` from being bound to ``parent.width``. Instead, it is assigned the value of ``parent.width`` at the time of the state change.

.. code:: qml

    PropertyChanges {
        target: myItem
        explicit: true
        width: parent.width
    }

By default, explicit is false.

.. _sdk_qtquick_propertychanges_restoreEntryValues:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| restoreEntryValues : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether the previous values should be restored when leaving the state.

The default value is ``true``. Setting this value to ``false`` creates a temporary state that has permanent effects on property values.

.. _sdk_qtquick_propertychanges_target:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : Object                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the object which contains the properties to be changed.


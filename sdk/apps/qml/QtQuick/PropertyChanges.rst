Describes new property bindings or values for a state

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`explicit </sdk/apps/qml/QtQuick/PropertyChanges#explicit-prop>`__****
   : bool
-  ****`restoreEntryValues </sdk/apps/qml/QtQuick/PropertyChanges#restoreEntryValues-prop>`__****
   : bool
-  ****`target </sdk/apps/qml/QtQuick/PropertyChanges#target-prop>`__****
   : Object

Detailed Description
--------------------

`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ is used to
define the property values or bindings in a
`State </sdk/apps/qml/QtQuick/State/>`__. This enables an item's
property values to be changed when it `changes between
states </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__.

To create a `PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__
object, specify the
`target </sdk/apps/qml/QtQuick/PropertyChanges#target-prop>`__ item
whose properties are to be modified, and define the new property values
or bindings. For example:

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

When the mouse is pressed, the
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ changes to the
*resized* state. In this state, the
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ object sets
the rectangle's color to blue and the ``height`` value to that of
``container.height``.

Note this automatically binds ``rect.height`` to ``container.height`` in
the *resized* state. If a property binding should not be established,
and the height should just be set to the value of ``container.height``
at the time of the state change, set the
`explicit </sdk/apps/qml/QtQuick/PropertyChanges#explicit-prop>`__
property to ``true``.

A `PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__ object
can also override the default signal handler for an object to implement
a signal handler specific to the new state:

.. code:: qml

    PropertyChanges {
        target: myMouseArea
        onClicked: doSomethingDifferent()
    }

**Note:** `PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__
can be used to change anchor margins, but not other anchor values; use
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ for this
instead. Similarly, to change an
`Item </sdk/apps/qml/QtQuick/Item/>`__'s
`parent </sdk/apps/qml/QtQuick/Item#parent-prop>`__ value, use
`ParentChange </sdk/apps/qml/QtQuick/ParentChange/>`__ instead.

Resetting property values
~~~~~~~~~~~~~~~~~~~~~~~~~

The ``undefined`` value can be used to reset the property value for a
state. In the following example, when ``myText`` changes to the
*widerText* state, its ``width`` property is reset, giving the text its
natural width and displaying the whole string on a single line.

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

When
`Transitions </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`__
are used to animate state changes, they animate properties from their
values in the current state to those defined in the new state (as
defined by `PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__
objects). However, it is sometimes desirable to set a property value
*immediately* during a
`Transition </sdk/apps/qml/QtQuick/qmlexampletoggleswitch#transition>`__,
without animation; in these cases, the
`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ type can be
used to force an immediate property change.

See the `PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__
documentation for more details.

**Note:** The `visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__ and
`enabled </sdk/apps/qml/QtQuick/Item#enabled-prop>`__ properties of
`Item </sdk/apps/qml/QtQuick/Item/>`__ do not behave exactly the same as
other properties in
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__. Since
these properties can be changed implicitly through their parent's state,
they should be set explicitly in all
`PropertyChanges </sdk/apps/qml/QtQuick/PropertyChanges/>`__. An item
will still not be enabled/visible if one of its parents is not enabled
or visible.

**See also** `States
example </sdk/apps/qml/QtQuick/animation#states>`__, `Qt Quick
States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`__, and
Qt QML.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ explicit : bool                                                 |
+--------------------------------------------------------------------------+

If explicit is set to true, any potential bindings will be interpreted
as once-off assignments that occur when the state is entered.

In the following example, the addition of explicit prevents
``myItem.width`` from being bound to ``parent.width``. Instead, it is
assigned the value of ``parent.width`` at the time of the state change.

.. code:: qml

    PropertyChanges {
        target: myItem
        explicit: true
        width: parent.width
    }

By default, explicit is false.

| 

+--------------------------------------------------------------------------+
|        \ restoreEntryValues : bool                                       |
+--------------------------------------------------------------------------+

This property holds whether the previous values should be restored when
leaving the state.

The default value is ``true``. Setting this value to ``false`` creates a
temporary state that has permanent effects on property values.

| 

+--------------------------------------------------------------------------+
|        \ target : Object                                                 |
+--------------------------------------------------------------------------+

This property holds the object which contains the properties to be
changed.

| 

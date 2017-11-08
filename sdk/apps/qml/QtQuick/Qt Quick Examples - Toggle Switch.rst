.. _sdk_qtquick_qt_quick_examples_-_toggle_switch:

QtQuick Qt Quick Examples - Toggle Switch
=========================================


This example shows how to create a reusable switch component in QML.

The code for this example can be found in the ``examples/quick/customitems/slideswitch`` directory.

The objects that compose the switch are:

-  a ``on`` property (the interface to interact with the switch),
-  two images (the background image and the knob),
-  two mouse regions for user interation (on the background image and on the knob),
-  two states (an *on* state and an *off* state),
-  two functions or slots to react to the user interation (``toggle()`` and ``dorelease()``),
-  and a transition that describe how to go from one state to the other.

.. code:: qml

    import QtQuick 2.0
    Item {
        id: toggleswitch
        width: background.width; height: background.height
        property bool on: false
        function toggle() {
            if (toggleswitch.state == "on")
                toggleswitch.state = "off";
            else
                toggleswitch.state = "on";
        }
        function releaseSwitch() {
            if (knob.x == 1) {
                if (toggleswitch.state == "off") return;
            }
            if (knob.x == 78) {
                if (toggleswitch.state == "on") return;
            }
            toggle();
        }
        Image {
            id: background
            source: "background.png"
            MouseArea { anchors.fill: parent; onClicked: toggle() }
        }
        Image {
            id: knob
            x: 1; y: 2
            source: "knob.png"
            MouseArea {
                anchors.fill: parent
                drag.target: knob; drag.axis: Drag.XAxis; drag.minimumX: 1; drag.maximumX: 78
                onClicked: toggle()
                onReleased: releaseSwitch()
            }
        }
        states: [
            State {
                name: "on"
                PropertyChanges { target: knob; x: 78 }
                PropertyChanges { target: toggleswitch; on: true }
            },
            State {
                name: "off"
                PropertyChanges { target: knob; x: 1 }
                PropertyChanges { target: toggleswitch; on: false }
            }
        ]
        transitions: Transition {
            NumberAnimation { properties: "x"; easing.type: Easing.InOutQuad; duration: 200 }
        }
    }

.. code:: qml

        property bool on: false

This property is the interface of the switch. By default, the switch is off and this property is ``false``. It can be used to activate/deactivate the switch or to query its current state.

In this example:

.. code:: qml

    Item {
        Switch {
            id: mySwitch
            on: true
        }
        Text {
            text: "The switch is on"
            visible: mySwitch.on == true
        }
    }

the text will only be visible when the switch is on.

.. code:: qml

        Image {
            id: background
            source: "background.png"
            MouseArea { anchors.fill: parent; onClicked: toggle() }
        }

First, we create the background image of the switch. In order for the switch to toggle when the user clicks on the background, we add a :ref:`MouseArea <sdk_qtquick_mousearea>` as a child item of the image. A ``MouseArea`` has a ``onClicked`` property that is triggered when the item is clicked. For the moment we will just call a ``toggle()`` function. We will see what this function does in a moment.

.. code:: qml

        Image {
            id: knob
            x: 1; y: 2
            source: "knob.png"
            MouseArea {
                anchors.fill: parent
                drag.target: knob; drag.axis: Drag.XAxis; drag.minimumX: 1; drag.maximumX: 78
                onClicked: toggle()
                onReleased: releaseSwitch()
            }
        }

Then, we place the image of the knob on top of the background. The interaction here is a little more complex. We want the knob to move with the finger when it is clicked. That is what the ``drag`` property of the ``MouseArea`` is for. We also want to toggle the switch if the knob is released between state. We handle this case in the ``dorelease()`` function that is called in the ``onReleased`` property.

.. code:: qml

        states: [
            State {
                name: "on"
                PropertyChanges { target: knob; x: 78 }
                PropertyChanges { target: toggleswitch; on: true }
            },
            State {
                name: "off"
                PropertyChanges { target: knob; x: 1 }
                PropertyChanges { target: toggleswitch; on: false }
            }
        ]

We define the two states of the switch:

-  In the *on* state the knob is on the right (``x`` position is 78) and the ``on`` property is ``true``.
-  In the *off* state the knob is on the left (``x`` position is 1) and the ``on`` property is ``false``.

For more information on states see `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_ .

We add two JavaScript functions to our switch:

.. code:: qml

        function toggle() {
            if (toggleswitch.state == "on")
                toggleswitch.state = "off";
            else
                toggleswitch.state = "on";
        }

This first function is called when the background image or the knob are clicked. We simply want the switch to toggle between the two states (*on* and *off*).

.. code:: qml

        function releaseSwitch() {
            if (knob.x == 1) {
                if (toggleswitch.state == "off") return;
            }
            if (knob.x == 78) {
                if (toggleswitch.state == "on") return;
            }
            toggle();
        }

This second function is called when the knob is released and we want to make sure that the knob does not end up between states (neither *on* nor *off*). If it is the case call the ``toggle()`` function otherwise we do nothing.

For more information on scripts see JavaScript Expressions in QML Documents.

.. code:: qml

        transitions: Transition {
            NumberAnimation { properties: "x"; easing.type: Easing.InOutQuad; duration: 200 }
        }

At this point, when the switch toggles between the two states the knob will instantly change its ``x`` position between 1 and 78. In order for the knob to move smoothly we add a transition that will animate the ``x`` property with an easing curve for a duration of 200ms.

For more information on transitions see `Animation and Transitions in Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_ .

The switch can be used in a QML file, like this:

.. code:: qml

        Switch { anchors.centerIn: parent; on: false }


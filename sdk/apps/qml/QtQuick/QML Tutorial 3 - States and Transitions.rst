.. _sdk_qtquick_qml_tutorial_3_-_states_and_transitions:

QtQuick QML Tutorial 3 - States and Transitions
===============================================


In this chapter, we make this example a little bit more dynamic by introducing states and transitions.

We want our text to move to the bottom of the screen, rotate and become red when clicked.

Here is the QML code:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        id: page
        width: 320; height: 480
        color: "lightgray"
        Text {
            id: helloText
            text: "Hello world!"
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24; font.bold: true
            MouseArea { id: mouseArea; anchors.fill: parent }
            states: State {
                name: "down"; when: mouseArea.pressed == true
                PropertyChanges { target: helloText; y: 160; rotation: 180; color: "red" }
            }
            transitions: Transition {
                from: ""; to: "down"; reversible: true
                ParallelAnimation {
                    NumberAnimation { properties: "y,rotation"; duration: 500; easing.type: Easing.InOutQuad }
                    ColorAnimation { duration: 500 }
                }
            }
        }
        Grid {
            id: colorPicker
            x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 2; columns: 3; spacing: 3
            Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
        }
    }

.. code:: qml

            states: State {
                name: "down"; when: mouseArea.pressed == true
                PropertyChanges { target: helloText; y: 160; rotation: 180; color: "red" }
            }

First, we create a new *down* state for our text type. This state will be activated when the :ref:`MouseArea <sdk_qtquick_mousearea>` is pressed, and deactivated when it is released.

The *down* state includes a set of property changes from our implicit *default state* (the items as they were initially defined in the QML). Specifically, we set the ``y`` property of the text to ``160``, the rotation to ``180`` and the ``color`` to red.

.. code:: qml

            transitions: Transition {
                from: ""; to: "down"; reversible: true
                ParallelAnimation {
                    NumberAnimation { properties: "y,rotation"; duration: 500; easing.type: Easing.InOutQuad }
                    ColorAnimation { duration: 500 }
                }
            }

Because we don't want the text to appear at the bottom instantly but rather move smoothly, we add a transition between our two states.

``from`` and ``to`` define the states between which the transition will run. In this case, we want a transition from the default state to our *down* state.

Because we want the same transition to be run in reverse when changing back from the *down* state to the default state, we set ``reversible`` to ``true``. This is equivalent to writing the two transitions separately.

The :ref:`ParallelAnimation <sdk_qtquick_parallelanimation>` type makes sure that the two types of animations (number and color) start at the same time. We could also run them one after the other by using :ref:`SequentialAnimation <sdk_qtquick_sequentialanimation>` instead.

For more details on states and transitions, see `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_  and the states and transitions example.

`QML Tutorial 2 - QML Components </sdk/apps/qml/QtQuick/qml-tutorial2/>`_ 


.. _sdk_qtquick_using_qt_quick_behaviors_with_states:

QtQuick Using Qt Quick Behaviors with States
============================================



In some cases you may choose to use a Behavior to animate a property change caused by a state change. While this works well for some situations, in other situations it may lead to unexpected behavior.

Here's an example that shows the problem:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400
        height: 400
        Rectangle {
            id: coloredRect
            width: 100
            height: 100
            anchors.centerIn: parent
            color: "red"
            Behavior on color {
                ColorAnimation {}
            }
            MouseArea {
                id: mouser
                anchors.fill: parent
                hoverEnabled: true
            }
            states: State {
                name: "GreenState"
                when: mouser.containsMouse
                PropertyChanges {
                    target: coloredRect
                    color: "green"
                }
            }
        }
    }

Testing the example by quickly and repeatedly moving the mouse in to and out of the colored rectangle shows that the colored rectangle will settle into a green color over time, never returning to full red. This is not what we wanted! The problem occurs because we have used a Behavior to animate the change in color, and our state change is trigged by the mouse entering or exiting the :ref:`MouseArea <sdk_qtquick_mousearea>`, which is easily interrupted.

To state the problem more formally, using States and Behaviors together can cause unexpected behavior when:

-  a Behavior is used to animate a property change, specifically when moving from an explicitly defined state back to the implicit base state; and
-  this Behavior can be interrupted to (re-)enter an explicitly defined state.

The problem occurs because of the way the base state is defined for QML: as the "snapshot" state of the application just prior to entering an explicitly defined state. In this case, if we are in the process of animating from green back to red, and interrupt the animation to return to "GreenState", the base state will include the color in its intermediate, mid-animation form.

While future versions of QML should be able to handle this situation more gracefully, there are currently several ways to rework your application to avoid this problem.

1. Use a transition to animate the change, rather than a Behavior.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400
        height: 400
        Rectangle {
            id: coloredRect
            width: 100
            height: 100
            anchors.centerIn: parent
            color: "red"
            MouseArea {
                id: mouser
                anchors.fill: parent
                hoverEnabled: true
            }
            states: State {
                name: "GreenState"
                when: mouser.containsMouse
                PropertyChanges {
                    target: coloredRect
                    color: "green"
                }
            }
            transitions: Transition {
                ColorAnimation {}
            }
        }
    }

2. Use a conditional binding to change the property value, rather than a state

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400
        height: 400
        Rectangle {
            id: coloredRect
            width: 100
            height: 100
            anchors.centerIn: parent
            color: mouser.containsMouse ? "green" : "red"
            Behavior on color {
                ColorAnimation {}
            }
            MouseArea {
                id: mouser
                anchors.fill: parent
                hoverEnabled: true
            }
        }
    }

3. Use only explicitly defined states, rather than an implicit base state

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 400
        height: 400
        Rectangle {
            id: coloredRect
            width: 100
            height: 100
            anchors.centerIn: parent
            Behavior on color {
                ColorAnimation {}
            }
            MouseArea {
                id: mouser
                anchors.fill: parent
                hoverEnabled: true
            }
            states: [
            State {
                name: "GreenState"
                when: mouser.containsMouse
                PropertyChanges {
                    target: coloredRect
                    color: "green"
                }
            },
            State {
                name: "RedState"
                when: !mouser.containsMouse
                PropertyChanges {
                    target: coloredRect
                    color: "red"
                }
            }]
        }
    }


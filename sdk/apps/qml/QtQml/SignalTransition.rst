The SignalTransition type provides a transition based on a Qt signal.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QSignalTransition </sdk/apps/qml/Qt |
|                                      | Qml/QSignalTransition/>`__           |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`guard </sdk/apps/qml/QtQml/SignalTransition#guard-prop>`__**** :
   bool
-  ****`signal </sdk/apps/qml/QtQml/SignalTransition#signal-prop>`__****
   : signal

Detailed Description
--------------------

`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__ is part of
`The Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

Example Usage
-------------

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        DSM.StateMachine {
            id: stateMachine
            initialState: state
            running: true
            DSM.State {
                id: state
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.clicked
                    guard: guardButton.checked
                }
            }
            DSM.FinalState {
                id: finalState
            }
            onFinished: Qt.quit()
        }
        Row {
            spacing: 2
            Button {
                id: button
                text: "Finish state"
            }
            Button {
                id: guardButton
                checkable: true
                text: checked ? "Press to block the SignalTransition" : "Press to unblock the SignalTransition"
            }
        }
    }

| 

**See also** `StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__,
`FinalState </sdk/apps/qml/QtQml/FinalState/>`__, and
`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ guard : bool                                                    |
+--------------------------------------------------------------------------+

Guard conditions affect the behavior of a state machine by enabling
transitions only when they evaluate to true and disabling them when they
evaluate to false.

When the signal associated with this signal transition is emitted the
guard condition is evaluated. In the guard condition the arguments of
the signal can be used as demonstrated in the example below.

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        Button {
            anchors.fill: parent
            id: button
            DSM.StateMachine {
                DSM.State {
                    DSM.SignalTransition {
                        targetState: finalState
                        signal: button.mysignal
                        // the guard condition uses the mystr string argument from mysignal
                        guard: mystr == "test"
                    }
                }
                DSM.FinalState {
                    id: finalState
                }
            }
            // define the signal the SignalTransition is connected with
            signal mysignal(string mystr)
            // on clicking the button emit the signal with a single string argument
            onClicked: button.mysignal("test")
        }
    }

**See also**
`signal </sdk/apps/qml/QtQml/SignalTransition#signal-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ signal :                                                        |
| `signal </sdk/apps/qml/QtQml/SignalTransition#signal-prop>`__            |
+--------------------------------------------------------------------------+

The signal which is associated with this signal transition.

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        Button {
            anchors.fill: parent
            id: button
            DSM.StateMachine {
                DSM.State {
                    DSM.SignalTransition {
                        targetState: finalState
                        signal: button.clicked
                    }
                }
                DSM.FinalState {
                    id: finalState
                }
            }
        }
    }

| 

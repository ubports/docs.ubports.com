.. _sdk_qtqml_signaltransition:

QtQml SignalTransition
======================

The SignalTransition type provides a transition based on a Qt signal.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QSignalTransition <sdk_qtqml_qsignaltransition>`                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`guard <sdk_qtqml_signaltransition_guard>` : bool
-  :ref:`signal <sdk_qtqml_signaltransition_signal>` : signal

Detailed Description
--------------------

:ref:`SignalTransition <sdk_qtqml_signaltransition>` is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

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

**See also** :ref:`StateMachine <sdk_qtqml_statemachine>`, :ref:`FinalState <sdk_qtqml_finalstate>`, and :ref:`TimeoutTransition <sdk_qtqml_timeouttransition>`.

Property Documentation
----------------------

.. _sdk_qtqml_signaltransition_guard:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| guard : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Guard conditions affect the behavior of a state machine by enabling transitions only when they evaluate to true and disabling them when they evaluate to false.

When the signal associated with this signal transition is emitted the guard condition is evaluated. In the guard condition the arguments of the signal can be used as demonstrated in the example below.

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

**See also** :ref:`signal <sdk_qtqml_signaltransition_signal>`.

.. _sdk_qtqml_signaltransition_signal:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| signal : :ref:`signal <sdk_qtqml_signaltransition_signal>`                                                                                                                                                                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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


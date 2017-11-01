The TimeoutTransition type provides a transition based on a timer.

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

-  ****`timeout </sdk/apps/qml/QtQml/TimeoutTransition#timeout-prop>`__****
   : int

Detailed Description
--------------------

`Timer </sdk/apps/qml/QtQml/Timer/>`__ type can be combined with
`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__ to enact
more complex timeout based transitions.

`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__ is part
of `The Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

Example Usage
-------------

.. code:: qml

    import QtQuick 2.0
    import QtQml.StateMachine 1.0 as DSM
    Rectangle {
        Button {
            anchors.fill: parent
            id: button
            text: "Finish state"
            enabled: !stateMachine.running
            onClicked: stateMachine.running = true
            DSM.StateMachine {
                id: stateMachine
                initialState: state
                running: true
                DSM.State {
                    id: state
                    DSM.TimeoutTransition {
                        targetState: finalState
                        timeout: 1000
                    }
                }
                DSM.FinalState {
                    id: finalState
                }
            }
        }
    }

| 

**See also** `StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__,
`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__,
`FinalState </sdk/apps/qml/QtQml/FinalState/>`__, and
`HistoryState </sdk/apps/qml/QtQml/HistoryState/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ timeout : int                                                   |
+--------------------------------------------------------------------------+

The timeout interval in milliseconds.

| 

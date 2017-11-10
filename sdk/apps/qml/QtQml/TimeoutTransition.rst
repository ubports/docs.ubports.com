.. _sdk_qtqml_timeouttransition:

QtQml TimeoutTransition
=======================

The TimeoutTransition type provides a transition based on a timer.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QSignalTransition <sdk_qtqml_qsignaltransition>`                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`timeout <sdk_qtqml_timeouttransition_timeout>` : int

Detailed Description
--------------------

:ref:`Timer <sdk_qtqml_timer>` type can be combined with :ref:`SignalTransition <sdk_qtqml_signaltransition>` to enact more complex timeout based transitions.

:ref:`TimeoutTransition <sdk_qtqml_timeouttransition>` is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

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

**See also** :ref:`StateMachine <sdk_qtqml_statemachine>`, :ref:`SignalTransition <sdk_qtqml_signaltransition>`, :ref:`FinalState <sdk_qtqml_finalstate>`, and :ref:`HistoryState <sdk_qtqml_historystate>`.

Property Documentation
----------------------

.. _sdk_qtqml_timeouttransition_timeout:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| timeout : int                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The timeout interval in milliseconds.


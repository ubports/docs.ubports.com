.. _sdk_qtqml_qabstracttransition:

QtQml QAbstractTransition
=========================

The QAbstractTransition type is the base type of transitions between QAbstractState objects.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQml.StateMachine 1.0                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Qt 5.4                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherited By:                                                                                                                                          | :ref:`QSignalTransition <sdk_qtqml_qsignaltransition>`.                                                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`sourceState <sdk_qtqml_qabstracttransition_sourceState>` : bool
-  :ref:`targetState <sdk_qtqml_qabstracttransition_targetState>` : QAbstractState
-  :ref:`targetStates <sdk_qtqml_qabstracttransition_targetStates>` : list<QAbstractState>

Signals
-------

-  :ref:`triggered <sdk_qtqml_qabstracttransition_triggered>`\ ()

Detailed Description
--------------------

The :ref:`QAbstractTransition <sdk_qtqml_qabstracttransition>` type is the abstract base type of transitions between states (:ref:`QAbstractState <sdk_qtqml_qabstractstate>` objects) of a :ref:`StateMachine <sdk_qtqml_statemachine>`. :ref:`QAbstractTransition <sdk_qtqml_qabstracttransition>` is part of `The Declarative State Machine Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`_ .

The sourceState() property has the source of the transition. The :ref:`targetState <sdk_qtqml_qabstracttransition_targetState>` and :ref:`targetStates <sdk_qtqml_qabstracttransition_targetStates>` properties return the target(s) of the transition.

The triggered() signal is emitted when the transition has been triggered.

Do not use :ref:`QAbstractTransition <sdk_qtqml_qabstracttransition>` directly; use :ref:`SignalTransition <sdk_qtqml_signaltransition>` or :ref:`TimeoutTransition <sdk_qtqml_timeouttransition>` instead.

**See also** :ref:`SignalTransition <sdk_qtqml_signaltransition>` and :ref:`TimeoutTransition <sdk_qtqml_timeouttransition>`.

Property Documentation
----------------------

.. _sdk_qtqml_qabstracttransition_sourceState:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] sourceState : bool                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The source state (parent) of this transition.

.. _sdk_qtqml_qabstracttransition_targetState:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| targetState : :ref:`QAbstractState <sdk_qtqml_qabstractstate>`                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The target state of this transition.

If a transition has no target state, the transition may still be triggered, but this will not cause the state machine's configuration to change (i.e. the current state will not be exited and re-entered).

.. _sdk_qtqml_qabstracttransition_targetStates:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| targetStates : list<:ref:`QAbstractState <sdk_qtqml_qabstractstate>`>                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The target states of this transition.

If multiple states are specified, they all must be descendants of the same parallel group state.

Signal Documentation
--------------------

.. _sdk_qtqml_qabstracttransition_triggered:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| triggered()                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when the transition has been triggered.

The corresponding handler is ``onTriggered``.


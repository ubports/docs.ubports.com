The QAbstractTransition type is the base type of transitions between
QAbstractState objects.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `QSignalTransition </sdk/apps/qml/Qt |
|                                      | Qml/QSignalTransition/>`__.          |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`sourceState </sdk/apps/qml/QtQml/QAbstractTransition#sourceState-prop>`__****
   : bool
-  ****`targetState </sdk/apps/qml/QtQml/QAbstractTransition#targetState-prop>`__****
   : QAbstractState
-  ****`targetStates </sdk/apps/qml/QtQml/QAbstractTransition#targetStates-prop>`__****
   : list<QAbstractState>

Signals
-------

-  ****`triggered </sdk/apps/qml/QtQml/QAbstractTransition#triggered-signal>`__****\ ()

Detailed Description
--------------------

The `QAbstractTransition </sdk/apps/qml/QtQml/QAbstractTransition/>`__
type is the abstract base type of transitions between states
(`QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__ objects) of a
`StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__.
`QAbstractTransition </sdk/apps/qml/QtQml/QAbstractTransition/>`__ is
part of `The Declarative State Machine
Framework </sdk/apps/qml/QtQml/qmlstatemachine/>`__.

The sourceState() property has the source of the transition. The
`targetState </sdk/apps/qml/QtQml/QAbstractTransition#targetState-prop>`__
and
`targetStates </sdk/apps/qml/QtQml/QAbstractTransition#targetStates-prop>`__
properties return the target(s) of the transition.

The triggered() signal is emitted when the transition has been
triggered.

Do not use
`QAbstractTransition </sdk/apps/qml/QtQml/QAbstractTransition/>`__
directly; use
`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__ or
`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__ instead.

**See also**
`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__ and
`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] sourceState : bool                                  |
+--------------------------------------------------------------------------+

The source state (parent) of this transition.

| 

+--------------------------------------------------------------------------+
|        \ targetState :                                                   |
| `QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__                 |
+--------------------------------------------------------------------------+

The target state of this transition.

If a transition has no target state, the transition may still be
triggered, but this will not cause the state machine's configuration to
change (i.e. the current state will not be exited and re-entered).

| 

+--------------------------------------------------------------------------+
|        \ targetStates :                                                  |
| list<`QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__>           |
+--------------------------------------------------------------------------+

The target states of this transition.

If multiple states are specified, they all must be descendants of the
same parallel group state.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ triggered()                                                     |
+--------------------------------------------------------------------------+

This signal is emitted when the transition has been triggered.

The corresponding handler is ``onTriggered``.

| 

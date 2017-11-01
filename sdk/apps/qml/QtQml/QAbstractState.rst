The QAbstractState type is the base type of States of a StateMachine.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `FinalState </sdk/apps/qml/QtQml/Fin |
|                                      | alState/>`__,                        |
|                                      | `HistoryState </sdk/apps/qml/QtQml/H |
|                                      | istoryState/>`__,                    |
|                                      | and                                  |
|                                      | `State </sdk/apps/qml/QtQml/State/>` |
|                                      | __.                                  |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`active </sdk/apps/qml/QtQml/QAbstractState#active-prop>`__**** :
   bool

Signals
-------

-  ****`entered </sdk/apps/qml/QtQml/QAbstractState#entered-signal>`__****\ ()
-  ****`exited </sdk/apps/qml/QtQml/QAbstractState#exited-signal>`__****\ ()

Detailed Description
--------------------

Do not use `QAbstractState </sdk/apps/qml/QtQml/QAbstractState/>`__
directly; use State, `FinalState </sdk/apps/qml/QtQml/FinalState/>`__ or
`StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ instead.

**See also** `StateMachine </sdk/apps/qml/QtQml/StateMachine/>`__ and
`State </sdk/apps/qml/QtQml/State/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] active : bool                                       |
+--------------------------------------------------------------------------+

The active property of this state. A state is active between entered()
and exited() signals. This property is readonly.

**See also**
`entered </sdk/apps/qml/QtQml/QAbstractState#entered-signal>`__ and
`exited </sdk/apps/qml/QtQml/QAbstractState#exited-signal>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ entered()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the State becomes active.

The corresponding handler is ``onEntered``.

**See also** `active </sdk/apps/qml/QtQml/QAbstractState#active-prop>`__
and `exited </sdk/apps/qml/QtQml/QAbstractState#exited-signal>`__.

| 

+--------------------------------------------------------------------------+
|        \ exited()                                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the State becomes inactive.

The corresponding handler is ``onExited``.

**See also** `active </sdk/apps/qml/QtQml/QAbstractState#active-prop>`__
and `entered </sdk/apps/qml/QtQml/QAbstractState#entered-signal>`__.

| 

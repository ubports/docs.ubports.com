.. _sdk_qtqml_qabstractstate:
QtQml QAbstractState
====================

The QAbstractState type is the base type of States of a StateMachine.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`FinalState <sdk_qtqml_finalstate>`_ |
|                                      | _,                                   |
|                                      | :ref:`HistoryState <sdk_qtqml_historystat |
|                                      | e>`_ ,                               |
|                                      | and :ref:`State <sdk_qtqml_state>`.     |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`active <sdk_qtqml_qabstractstate_active-prop>` : bool

Signals
-------

-  :ref:`entered <sdk_qtqml_qabstractstate_entered-signal>`\ ()
-  :ref:`exited <sdk_qtqml_qabstractstate_exited-signal>`\ ()

Detailed Description
--------------------

Do not use :ref:`QAbstractState <sdk_qtqml_qabstractstate>` directly; use
State, :ref:`FinalState <sdk_qtqml_finalstate>` or
:ref:`StateMachine <sdk_qtqml_statemachine>` instead.

**See also** :ref:`StateMachine <sdk_qtqml_statemachine>` and
:ref:`State <sdk_qtqml_state>`.

Property Documentation
----------------------

.. _sdk_qtqml_qabstractstate_[read-only] active-prop:

+--------------------------------------------------------------------------+
|        \ [read-only] active : bool                                       |
+--------------------------------------------------------------------------+

The active property of this state. A state is active between entered()
and exited() signals. This property is readonly.

**See also** :ref:`entered <sdk_qtqml_qabstractstate#entered-signal>` and
:ref:`exited <sdk_qtqml_qabstractstate#exited-signal>`.

| 

Signal Documentation
--------------------

.. _sdk_qtqml_qabstractstate_entered()-prop:

+--------------------------------------------------------------------------+
|        \ entered()                                                       |
+--------------------------------------------------------------------------+

This signal is emitted when the State becomes active.

The corresponding handler is ``onEntered``.

**See also** :ref:`active <sdk_qtqml_qabstractstate#active-prop>` and
:ref:`exited <sdk_qtqml_qabstractstate#exited-signal>`.

| 

.. _sdk_qtqml_qabstractstate_exited()-prop:

+--------------------------------------------------------------------------+
|        \ exited()                                                        |
+--------------------------------------------------------------------------+

This signal is emitted when the State becomes inactive.

The corresponding handler is ``onExited``.

**See also** :ref:`active <sdk_qtqml_qabstractstate#active-prop>` and
:ref:`entered <sdk_qtqml_qabstractstate#entered-signal>`.

| 

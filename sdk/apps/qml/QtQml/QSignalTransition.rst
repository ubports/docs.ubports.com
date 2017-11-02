.. _sdk_qtqml_qsignaltransition:
QtQml QSignalTransition
=======================

The QSignalTransition type provides a transition based on a Qt signal.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`QAbstractTransition <sdk_qtqml_qabs |
|                                      | tracttransition>`_                   |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | :ref:`SignalTransition <sdk_qtqml_signalt |
|                                      | ransition>`_                         |
|                                      | and                                  |
|                                      | :ref:`TimeoutTransition <sdk_qtqml_timeou |
|                                      | ttransition>`_ .                     |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`senderObject <sdk_qtqml_qsignaltransition_senderObject-prop>`
   : QObject
-  :ref:`signal <sdk_qtqml_qsignaltransition_signal-prop>` : string

Detailed Description
--------------------

Do not use :ref:`QSignalTransition <sdk_qtqml_qsignaltransition>` directly;
use :ref:`SignalTransition <sdk_qtqml_signaltransition>` or
:ref:`TimeoutTransition <sdk_qtqml_timeouttransition>` instead.

**See also** :ref:`SignalTransition <sdk_qtqml_signaltransition>` and
:ref:`TimeoutTransition <sdk_qtqml_timeouttransition>`.

Property Documentation
----------------------

.. _sdk_qtqml_qsignaltransition_senderObject-prop:

+--------------------------------------------------------------------------+
|        \ senderObject : QObject                                          |
+--------------------------------------------------------------------------+

The sender object which is associated with this signal transition.

| 

.. _sdk_qtqml_qsignaltransition_signal-prop:

+--------------------------------------------------------------------------+
|        \ signal : string                                                 |
+--------------------------------------------------------------------------+

The signal which is associated with this signal transition.

| 

The QSignalTransition type provides a transition based on a Qt signal.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQml.StateMachine 1.0        |
+--------------------------------------+--------------------------------------+
| Since:                               | Qt 5.4                               |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `QAbstractTransition </sdk/apps/qml/ |
|                                      | QtQml/QAbstractTransition/>`__       |
+--------------------------------------+--------------------------------------+
| Inherited By:                        | `SignalTransition </sdk/apps/qml/QtQ |
|                                      | ml/SignalTransition/>`__             |
|                                      | and                                  |
|                                      | `TimeoutTransition </sdk/apps/qml/Qt |
|                                      | Qml/TimeoutTransition/>`__.          |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`senderObject </sdk/apps/qml/QtQml/QSignalTransition#senderObject-prop>`__****
   : QObject
-  ****`signal </sdk/apps/qml/QtQml/QSignalTransition#signal-prop>`__****
   : string

Detailed Description
--------------------

Do not use
`QSignalTransition </sdk/apps/qml/QtQml/QSignalTransition/>`__ directly;
use `SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__ or
`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__ instead.

**See also**
`SignalTransition </sdk/apps/qml/QtQml/SignalTransition/>`__ and
`TimeoutTransition </sdk/apps/qml/QtQml/TimeoutTransition/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ senderObject : QObject                                          |
+--------------------------------------------------------------------------+

The sender object which is associated with this signal transition.

| 

+--------------------------------------------------------------------------+
|        \ signal : string                                                 |
+--------------------------------------------------------------------------+

The signal which is associated with this signal transition.

| 

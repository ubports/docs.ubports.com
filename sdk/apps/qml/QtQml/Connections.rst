.. _sdk_qtqml_connections:

QtQml Connections
=================

Describes generalized connections to signals

+---------------------+--------------------+
| Import Statement:   | import QtQml 2.2   |
+---------------------+--------------------+

Properties
----------

-  :ref:`ignoreUnknownSignals <sdk_qtqml_connections_ignoreUnknownSignals>` : bool
-  :ref:`target <sdk_qtqml_connections_target>` : Object

Detailed Description
--------------------

A Connections object creates a connection to a QML signal.

When connecting to signals in QML, the usual way is to create an "on<Signal>" handler that reacts when a signal is received, like this:

.. code:: qml

    MouseArea {
        onClicked: { foo(parameters) }
    }

However, it is not possible to connect to a signal in this way in some cases, such as when:

-  Multiple connections to the same signal are required
-  Creating connections outside the scope of the signal sender
-  Connecting to targets not defined in QML

When any of these are needed, the Connections type can be used instead.

For example, the above code can be changed to use a Connections object, like this:

.. code:: qml

    MouseArea {
        Connections {
            onClicked: foo(parameters)
        }
    }

More generally, the Connections object can be a child of some object other than the sender of the signal:

.. code:: qml

    MouseArea {
        id: area
    }
    // ...

.. code:: qml

    Connections {
        target: area
        onClicked: foo(parameters)
    }

**See also** `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_ .

Property Documentation
----------------------

.. _sdk_qtqml_connections_ignoreUnknownSignals:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ignoreUnknownSignals : bool                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Normally, a connection to a non-existent signal produces runtime errors.

If this property is set to ``true``, such errors are ignored. This is useful if you intend to connect to different types of objects, handling a different set of signals for each object.

.. _sdk_qtqml_connections_target:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| target : Object                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the object that sends the signal.

If this property is not set, the ``target`` defaults to the parent of the Connection.

If set to null, no connection is made and any signal handlers are ignored until the target is not null.


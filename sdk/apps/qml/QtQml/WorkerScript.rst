.. _sdk_qtqml_workerscript:

QtQml WorkerScript
==================

Enables the use of threads in a Qt Quick application

+---------------------+--------------------+
| Import Statement:   | import QtQuick .   |
+---------------------+--------------------+

Properties
----------

-  :ref:`source <sdk_qtqml_workerscript_source>` : url

Signals
-------

-  :ref:`message <sdk_qtqml_workerscript_message>`\ (jsobject *msg*)

Methods
-------

-  :ref:`sendMessage <sdk_qtqml_workerscript_sendMessage>`\ (jsobject *message*)

Detailed Description
--------------------

Use :ref:`WorkerScript <sdk_qtqml_workerscript>` to run operations in a new thread. This is useful for running operations in the background so that the main GUI thread is not blocked.

Messages can be passed between the new thread and the parent thread using :ref:`sendMessage() <sdk_qtqml_workerscript_sendMessage>` and the ``onMessage()`` handler.

An example:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 300; height: 300
        Text {
            id: myText
            text: 'Click anywhere'
        }
        WorkerScript {
            id: myWorker
            source: "script.js"
            onMessage: myText.text = messageObject.reply
        }
        MouseArea {
            anchors.fill: parent
            onClicked: myWorker.sendMessage({ 'x': mouse.x, 'y': mouse.y })
        }
    }

The above worker script specifies a JavaScript file, "script.js", that handles the operations to be performed in the new thread. Here is ``script.js``:

.. code:: cpp

    WorkerScript.onMessage = function(message) {
        // ... long-running operations and calculations are done here
        WorkerScript.sendMessage({ 'reply': 'Mouse is at ' + message.x + ',' + message.y })
    }

When the user clicks anywhere within the rectangle, ``sendMessage()`` is called, triggering the ``WorkerScript.onMessage()`` handler in ``script.js``. This in turn sends a reply message that is then received by the ``onMessage()`` handler of ``myWorker``.

Restrictions
^^^^^^^^^^^^

Since the ``WorkerScript.onMessage()`` function is run in a separate thread, the JavaScript file is evaluated in a context separate from the main QML engine. This means that unlike an ordinary JavaScript file that is imported into QML, the ``script.js`` in the above example cannot access the properties, methods or other attributes of the QML item, nor can it access any context properties set on the QML object through QQmlContext.

Additionally, there are restrictions on the types of values that can be passed to and from the worker script. See the :ref:`sendMessage() <sdk_qtqml_workerscript_sendMessage>` documentation for details.

Worker script can not use `.import </sdk/apps/qml/QtQml/qtqml-javascript-imports/>`_  syntax.

**See also** Qt Quick Examples - Threading and Threaded ListModel Example.

Property Documentation
----------------------

.. _sdk_qtqml_workerscript_source:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| source : url                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This holds the url of the JavaScript file that implements the ``WorkerScript.onMessage()`` handler for threaded operations.

Signal Documentation
--------------------

.. _sdk_qtqml_workerscript_message:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| message(jsobject *msg*)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when a message *msg* is received from a worker script in another thread through a call to :ref:`sendMessage() <sdk_qtqml_workerscript_sendMessage>`.

The corresponding handler is ``onMessage``.

Method Documentation
--------------------

.. _sdk_qtqml_workerscript_sendMessage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sendMessage(jsobject *message*)                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sends the given *message* to a worker script handler in another thread. The other worker script handler can receive this message through the onMessage() handler.

The ``message`` object may only contain values of the following types:

-  boolean, number, string
-  JavaScript objects and arrays
-  :ref:`ListModel <sdk_qtqml_listmodel>` objects (any other type of QObject\* is not allowed)

All objects and arrays are copied to the ``message``. With the exception of :ref:`ListModel <sdk_qtqml_listmodel>` objects, any modifications by the other thread to an object passed in ``message`` will not be reflected in the original object.


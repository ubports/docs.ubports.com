

|image0|

*Threading* is a collection of QML multithreading examples.

.. rubric:: Running the Example
   :name: running-the-example

To run the example from Qt Creator, open the **Welcome** mode and select
the example from **Examples**. For more information, visit Building and
Running an Example.

.. rubric:: Threaded ListModel
   :name: threaded-listmodel

*Threaded
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__*
contains a `ListView </sdk/apps/qml/QtQuick/ListView/>`__ and a
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__.
The
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__
object is updated asynchronously in another thread, and the results
propagate back to the main thread. A timer requests updates from the
worker thread periodically:

.. code:: qml

            Timer {
                id: timer
                interval: 2000; repeat: true
                running: true
                triggeredOnStart: true
                onTriggered: {
                    var msg = {'action': 'appendCurrentTime', 'model': listModel};
                    worker.sendMessage(msg);
                }
            }

Inside the worker thread, the
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__
is synchronized once the data is finished loading:

.. code:: js

    WorkerScript.onMessage = function(msg) {
        if (msg.action == 'appendCurrentTime') {
            var data = {'time': new Date().toTimeString()};
            msg.model.append(data);
            msg.model.sync();   // updates the changes to the list
        }
    }

.. rubric:: WorkerScript
   :name: workerscript

*WorkerScript* contains an example of using a
`WorkerScript </sdk/apps/qml/QtQuick/threading#workerscript>`__ to
offload expensive calculations into another thread. This keeps the UI
from being blocked. This example calculates numbers in Pascal's
Triangle, and not in a very optimal way, so it will often take several
seconds to complete the calculation. By doing this in a
`WorkerScript </sdk/apps/qml/QtQuick/threading#workerscript>`__ in
another thread, the UI is not blocked during this time.

When the UI needs another value, a request is sent to the
`WorkerScript </sdk/apps/qml/QtQuick/threading#workerscript>`__:

.. code:: qml

            Spinner {
                id: rowSpinner
                label: "Row"
                onValueChanged: {
                    resultText.text = "Loading...";
                    myWorker.sendMessage( { row: rowSpinner.value, column: columnSpinner.value } );
                }
            }

The workerscript then is free to take a really long time to calculate
it:

.. code:: js

    WorkerScript.onMessage = function(message) {
        //Calculate result (may take a while, using a naive algorithm)
        var calculatedResult = triangle(message.row, message.column);
        //Send result back to main thread
        WorkerScript.sendMessage( { row: message.row,
                                    column: message.column,
                                    result: calculatedResult} );
    }

When it's done, the result returns to the main scene via the
`WorkerScript </sdk/apps/qml/QtQuick/threading#workerscript>`__ type:

.. code:: qml

        WorkerScript {
            id: myWorker
            source: "workerscript.js"
            onMessage: {
                if (messageObject.row == rowSpinner.value && messageObject.column == columnSpinner.value){ //Not an old result
                    if (messageObject.result == -1)
                        resultText.text = "Column must be <= Row";
                    else
                        resultText.text = messageObject.result;
                }
            }
        }

Files:

-  threading/threading.qml
-  threading/threadedlistmodel/dataloader.js
-  threading/threadedlistmodel/timedisplay.qml
-  threading/workerscript/Spinner.qml
-  threading/workerscript/workerscript.js
-  threading/workerscript/workerscript.qml
-  threading/main.cpp
-  threading/threading.pro
-  threading/threading.qmlproject
-  threading/threading.qrc
-  threading/threadedlistmodel/threadedlistmodel.qmlproject
-  threading/workerscript/workerscript.qmlproject

.. |image0| image:: /media/sdk/apps/qml/qtquick-threading-example/images/qml-threading-example.png


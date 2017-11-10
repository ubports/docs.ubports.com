.. _sdk_qtquick_qt_quick_examples_-_threading:

QtQuick Qt Quick Examples - Threading
=====================================



*Threading* is a collection of QML multithreading examples.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

*Threaded `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ * contains a :ref:`ListView <sdk_qtquick_listview>` and a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ . The `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  object is updated asynchronously in another thread, and the results propagate back to the main thread. A timer requests updates from the worker thread periodically:

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

Inside the worker thread, the `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  is synchronized once the data is finished loading:

.. code:: js

    WorkerScript.onMessage = function(msg) {
        if (msg.action == 'appendCurrentTime') {
            var data = {'time': new Date().toTimeString()};
            msg.model.append(data);
            msg.model.sync();   // updates the changes to the list
        }
    }

*WorkerScript* contains an example of using a `WorkerScript </sdk/apps/qml/QtQuick/threading/#workerscript>`_  to offload expensive calculations into another thread. This keeps the UI from being blocked. This example calculates numbers in Pascal's Triangle, and not in a very optimal way, so it will often take several seconds to complete the calculation. By doing this in a `WorkerScript </sdk/apps/qml/QtQuick/threading/#workerscript>`_  in another thread, the UI is not blocked during this time.

When the UI needs another value, a request is sent to the `WorkerScript </sdk/apps/qml/QtQuick/threading/#workerscript>`_ :

.. code:: qml

            Spinner {
                id: rowSpinner
                label: "Row"
                onValueChanged: {
                    resultText.text = "Loading...";
                    myWorker.sendMessage( { row: rowSpinner.value, column: columnSpinner.value } );
                }
            }

The workerscript then is free to take a really long time to calculate it:

.. code:: js

    WorkerScript.onMessage = function(message) {
        //Calculate result (may take a while, using a naive algorithm)
        var calculatedResult = triangle(message.row, message.column);
        //Send result back to main thread
        WorkerScript.sendMessage( { row: message.row,
                                    column: message.column,
                                    result: calculatedResult} );
    }

When it's done, the result returns to the main scene via the `WorkerScript </sdk/apps/qml/QtQuick/threading/#workerscript>`_  type:

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


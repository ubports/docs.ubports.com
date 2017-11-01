The ActivityIndicator component visually indicates that a task of
unknown duration is in progress, e.g. busy indication, connection in
progress indication, etc.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`running </sdk/apps/qml/Ubuntu.Components/ActivityIndicator#running-prop>`__****
   : bool

Detailed Description
--------------------

Note: for time consuming JavaScript operations use
`WorkerScript </sdk/apps/qml/QtQuick/qtquick-threading-example#workerscript>`__,
otherwise no UI interaction will be possible and the ActicityIndicator
animation will freeze.

Example:

.. code:: qml

    Item {
        ActivityIndicator {
            id: activity
        }
        Button {
            id: toggleActive
            text: (activity.running) ? "Deactivate" : "Activate"
            onClicked: activity.running = !activity.running
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ running : bool                                                  |
+--------------------------------------------------------------------------+

Presents whether there is activity to be visualized or not. The default
value is false. When activated (set to true), an animation is shown
indicating an ongoing activity, which continues until deactivated (set
to false).

| 

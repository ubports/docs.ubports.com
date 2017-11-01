Specifies how to run a script in a state

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  ****`name </sdk/apps/qml/QtQuick/StateChangeScript#name-prop>`__****
   : string
-  ****`script </sdk/apps/qml/QtQuick/StateChangeScript#script-prop>`__****
   : script

Detailed Description
--------------------

A `StateChangeScript </sdk/apps/qml/QtQuick/StateChangeScript/>`__ is
run upon entering a state. You can optionally use
`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ to specify the
point in the transition at which the
`StateChangeScript </sdk/apps/qml/QtQuick/StateChangeScript/>`__ should
be run.

.. code:: qml

    State {
        name: "state1"
        StateChangeScript {
            name: "myScript"
            script: doStateStuff();
        }
        // ...
    }
    // ...
    Transition {
        to: "state1"
        SequentialAnimation {
            NumberAnimation { /* ... */ }
            ScriptAction { scriptName: "myScript" }
            NumberAnimation { /* ... */ }
        }
    }

**See also** `ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the script. This name can be used by a
`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ to target a
specific script.

**See also**
`ScriptAction::scriptName </sdk/apps/qml/QtQuick/ScriptAction#scriptName-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ script :                                                        |
| `script </sdk/apps/qml/QtQuick/StateChangeScript#script-prop>`__         |
+--------------------------------------------------------------------------+

This property holds the script to run when the state is current.

| 

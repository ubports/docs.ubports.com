Defines scripts to be run during an animation

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Animation </sdk/apps/qml/QtQuick/An |
|                                      | imation/>`__                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`script </sdk/apps/qml/QtQuick/ScriptAction#script-prop>`__**** :
   script
-  ****`scriptName </sdk/apps/qml/QtQuick/ScriptAction#scriptName-prop>`__****
   : string

Detailed Description
--------------------

`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ can be used to
run a script at a specific point in an animation.

.. code:: qml

    SequentialAnimation {
        NumberAnimation {
            // ...
        }
        ScriptAction { script: doSomething(); }
        NumberAnimation {
            // ...
        }
    }

When used as part of a Transition, you can also target a specific
`StateChangeScript </sdk/apps/qml/QtQuick/StateChangeScript/>`__ to run
using the ``scriptName`` property.

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

**See also**
`StateChangeScript </sdk/apps/qml/QtQuick/StateChangeScript/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ script :                                                        |
| `script </sdk/apps/qml/QtQuick/ScriptAction#script-prop>`__              |
+--------------------------------------------------------------------------+

This property holds the script to run.

| 

+--------------------------------------------------------------------------+
|        \ scriptName : string                                             |
+--------------------------------------------------------------------------+

This property holds the name of the
`StateChangeScript </sdk/apps/qml/QtQuick/StateChangeScript/>`__ to run.

This property is only valid when
`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ is used as part
of a transition. If both script and scriptName are set, scriptName will
be used.

**Note:** When using scriptName in a reversible transition, the script
will only be run when the transition is being run forwards.

| 

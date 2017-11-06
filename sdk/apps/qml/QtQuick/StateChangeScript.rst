.. _sdk_qtquick_statechangescript:

QtQuick StateChangeScript
=========================

Specifies how to run a script in a state

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Properties
----------

-  :ref:`name <sdk_qtquick_statechangescript_name>` : string
-  :ref:`script <sdk_qtquick_statechangescript_script>` : script

Detailed Description
--------------------

A :ref:`StateChangeScript <sdk_qtquick_statechangescript>` is run upon entering a state. You can optionally use :ref:`ScriptAction <sdk_qtquick_scriptaction>` to specify the point in the transition at which the :ref:`StateChangeScript <sdk_qtquick_statechangescript>` should be run.

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

**See also** :ref:`ScriptAction <sdk_qtquick_scriptaction>`.

Property Documentation
----------------------

.. _sdk_qtquick_statechangescript_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the script. This name can be used by a :ref:`ScriptAction <sdk_qtquick_scriptaction>` to target a specific script.

**See also** :ref:`ScriptAction::scriptName <sdk_qtquick_scriptaction_scriptName>`.

.. _sdk_qtquick_statechangescript_script:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| script : :ref:`script <sdk_qtquick_statechangescript_script>`                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the script to run when the state is current.


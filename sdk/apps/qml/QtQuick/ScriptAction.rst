.. _sdk_qtquick_scriptaction:

QtQuick ScriptAction
====================

Defines scripts to be run during an animation

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Animation <sdk_qtquick_animation>`                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`script <sdk_qtquick_scriptaction_script>` : script
-  :ref:`scriptName <sdk_qtquick_scriptaction_scriptName>` : string

Detailed Description
--------------------

:ref:`ScriptAction <sdk_qtquick_scriptaction>` can be used to run a script at a specific point in an animation.

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

When used as part of a Transition, you can also target a specific :ref:`StateChangeScript <sdk_qtquick_statechangescript>` to run using the ``scriptName`` property.

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

**See also** :ref:`StateChangeScript <sdk_qtquick_statechangescript>`.

Property Documentation
----------------------

.. _sdk_qtquick_scriptaction_script:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| script : :ref:`script <sdk_qtquick_scriptaction_script>`                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the script to run.

.. _sdk_qtquick_scriptaction_scriptName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| scriptName : string                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the :ref:`StateChangeScript <sdk_qtquick_statechangescript>` to run.

This property is only valid when :ref:`ScriptAction <sdk_qtquick_scriptaction>` is used as part of a transition. If both script and scriptName are set, scriptName will be used.

**Note:** When using scriptName in a reversible transition, the script will only be run when the transition is being run forwards.


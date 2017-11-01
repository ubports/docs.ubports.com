Display a list of sections that the user can select. By tapping on a
section name the selectedIndex will be updated, and the associated
Action is triggered.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `StyledItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/StyledItem/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`actions </sdk/apps/qml/Ubuntu.Components/Sections#actions-prop>`__****
   : Action
-  ****`model </sdk/apps/qml/Ubuntu.Components/Sections#model-prop>`__****
   : var
-  ****`selectedIndex </sdk/apps/qml/Ubuntu.Components/Sections#selectedIndex-prop>`__****
   : int

Detailed Description
--------------------

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ actions : `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__  |
+--------------------------------------------------------------------------+

List of actions that represent the sections. The text of each action is
displayed as the section name and clicking a section will update the
`selectedIndex </sdk/apps/qml/Ubuntu.Components/Sections#selectedIndex-prop>`__.

When
`selectedIndex </sdk/apps/qml/Ubuntu.Components/Sections#selectedIndex-prop>`__
is changed (by user interaction or by setting the value),
actions[`selectedIndex </sdk/apps/qml/Ubuntu.Components/Sections#selectedIndex-prop>`__]
will be triggered.

Example:

.. code:: qml

    Sections {
        actions: [
            Action {
                text: "first"
                onTriggered: print("one")
            },
            Action {
                text: "second"
                onTriggered: print("two")
            },
            Action {
                text: "third"
                onTriggered: print("three")
            }
        ]
    }

It is strongly recommended to limit the number of sections to two or
three. The actions are used as the model for the Sections by default. If
no trigger functions need to be specified,
`model </sdk/apps/qml/Ubuntu.Components/Sections#model-prop>`__ may be
used directly without setting the actions property. If both actions and
`model </sdk/apps/qml/Ubuntu.Components/Sections#model-prop>`__ are set,
model overrides the actions.

| 

+--------------------------------------------------------------------------+
|        \ model : `var <http://doc.qt.io/qt-5/qml-var.html>`__            |
+--------------------------------------------------------------------------+

The input model for the sections. By default model takes the
`actions </sdk/apps/qml/Ubuntu.Components/Sections#actions-prop>`__ as
input, but if no trigger functions need to be specified, it can be
simplified to a list of strings naming the sections:

.. code:: qml

    Sections {
        model: [ "one", "two", "three" ]
        onSelectedIndexChanged: {
            print("Selected section " + model[selectedIndex]);
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ selectedIndex : int                                             |
+--------------------------------------------------------------------------+

The index of the currently selected section in
`model </sdk/apps/qml/Ubuntu.Components/Sections#model-prop>`__. The
default value is 0 if there is at least 1 section, or -1 for no
sections. When the model is changed, selectedIndex is reset to 0 and the
first action is triggered. Upon completion of the Sections component, if
there is an Action associated with the selected index, that Action will
be triggered.

| 

.. _sdk_ubuntu_components_sections:

Ubuntu.Components Sections
==========================

Display a list of sections that the user can select. By tapping on a section name the selectedIndex will be updated, and the associated Action is triggered.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`StyledItem <sdk_ubuntu_components_styleditem>`                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`actions <sdk_ubuntu_components_sections_actions>` : Action
-  :ref:`model <sdk_ubuntu_components_sections_model>` : var
-  :ref:`selectedIndex <sdk_ubuntu_components_sections_selectedIndex>` : int

Detailed Description
--------------------

Property Documentation
----------------------

.. _sdk_ubuntu_components_sections_actions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| actions : :ref:`Action <sdk_ubuntu_components_action>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

List of actions that represent the sections. The text of each action is displayed as the section name and clicking a section will update the :ref:`selectedIndex <sdk_ubuntu_components_sections_selectedIndex>`.

When :ref:`selectedIndex <sdk_ubuntu_components_sections_selectedIndex>` is changed (by user interaction or by setting the value), actions[:ref:`selectedIndex <sdk_ubuntu_components_sections_selectedIndex>`] will be triggered.

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

It is strongly recommended to limit the number of sections to two or three. The actions are used as the model for the Sections by default. If no trigger functions need to be specified, :ref:`model <sdk_ubuntu_components_sections_model>` may be used directly without setting the actions property. If both actions and :ref:`model <sdk_ubuntu_components_sections_model>` are set, model overrides the actions.

.. _sdk_ubuntu_components_sections_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : `var <http://doc.qt.io/qt-5/qml-var.html>`_                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The input model for the sections. By default model takes the :ref:`actions <sdk_ubuntu_components_sections_actions>` as input, but if no trigger functions need to be specified, it can be simplified to a list of strings naming the sections:

.. code:: qml

    Sections {
        model: [ "one", "two", "three" ]
        onSelectedIndexChanged: {
            print("Selected section " + model[selectedIndex]);
        }
    }

.. _sdk_ubuntu_components_sections_selectedIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedIndex : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The index of the currently selected section in :ref:`model <sdk_ubuntu_components_sections_model>`. The default value is 0 if there is at least 1 section, or -1 for no sections. When the model is changed, selectedIndex is reset to 0 and the first action is triggered. Upon completion of the Sections component, if there is an Action associated with the selected index, that Action will be triggered.


Logical list of items for a menu.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`data </sdk/apps/qml/Ubuntu.Components/MenuGroup#data-prop>`__****
   : list<Object>

Signals
-------

-  ****`added </sdk/apps/qml/Ubuntu.Components/MenuGroup#added-signal>`__****\ (Object
   *action*)
-  ****`changed </sdk/apps/qml/Ubuntu.Components/MenuGroup#changed-signal>`__****\ ()
-  ****`removed </sdk/apps/qml/Ubuntu.Components/MenuGroup#removed-signal>`__****\ (Object
   *action*)

Methods
-------

-  ****`addObject </sdk/apps/qml/Ubuntu.Components/MenuGroup#addObject-method>`__****\ (Object
   *object*)
-  ****`removeObject </sdk/apps/qml/Ubuntu.Components/MenuGroup#removeObject-method>`__****\ (Object
   *object*)

Detailed Description
--------------------

Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Menu {
        text: "Edit"
        MenuGroup {
            Action { text: "Undo" }
            Action { text: "Redo" }
        }
        MenuGroup {
            Action { text: "Cut" }
            ActionList {
                Action { text: "Copy" }
                Action { text: "Paste" }
            }
        }
        MenuGroup {
            Action { text: "Select All" }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

\* \* \* List of Objects in this
`MenuGroup </sdk/apps/qml/Ubuntu.Components/MenuGroup/>`__ \* Note that
when you set this property, the children of the
`MenuGroup </sdk/apps/qml/Ubuntu.Components/MenuGroup/>`__ will be
ignored, \* so do not set the list and define children.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ added(Object *action*)                                          |
+--------------------------------------------------------------------------+

Signal called when a action is added to the list

| 

+--------------------------------------------------------------------------+
|        \ changed()                                                       |
+--------------------------------------------------------------------------+

Signal called when the contents of the group change, including child
content changes (eg.
`ActionList </sdk/apps/qml/Ubuntu.Components/ActionList/>`__ child
add/remove)

| 

+--------------------------------------------------------------------------+
|        \ removed(Object *action*)                                        |
+--------------------------------------------------------------------------+

Signal called when a action is removed from the list

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addObject(Object *object*)                                      |
+--------------------------------------------------------------------------+

Adds an Object to the list programatically.

| 

+--------------------------------------------------------------------------+
|        \ removeObject(Object *object*)                                   |
+--------------------------------------------------------------------------+

Removes an object from the list programatically.

| 

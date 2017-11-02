.. _sdk_ubuntu_components_menugroup:
Ubuntu.Components MenuGroup
===========================

Logical list of items for a menu.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`data <sdk_ubuntu_components_menugroup_data-prop>` :
   list<Object>

Signals
-------

-  :ref:`added <sdk_ubuntu_components_menugroup_added-signal>`\ (Object
   *action*)
-  :ref:`changed <sdk_ubuntu_components_menugroup_changed-signal>`\ ()
-  :ref:`removed <sdk_ubuntu_components_menugroup_removed-signal>`\ (Object
   *action*)

Methods
-------

-  :ref:`addObject <sdk_ubuntu_components_menugroup_addObject-method>`\ (Object
   *object*)
-  :ref:`removeObject <sdk_ubuntu_components_menugroup_removeObject-method>`\ (Object
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

.. _sdk_ubuntu_components_menugroup_data-prop:

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

\* \* \* List of Objects in this
:ref:`MenuGroup <sdk_ubuntu_components_menugroup>` \* Note that when you
set this property, the children of the
:ref:`MenuGroup <sdk_ubuntu_components_menugroup>` will be ignored, \* so
do not set the list and define children.

| 

Signal Documentation
--------------------

.. _sdk_ubuntu_components_menugroup_added(Object *action*)-prop:

+--------------------------------------------------------------------------+
|        \ added(Object *action*)                                          |
+--------------------------------------------------------------------------+

Signal called when a action is added to the list

| 

.. _sdk_ubuntu_components_menugroup_changed()-prop:

+--------------------------------------------------------------------------+
|        \ changed()                                                       |
+--------------------------------------------------------------------------+

Signal called when the contents of the group change, including child
content changes (eg. :ref:`ActionList <sdk_ubuntu_components_actionlist>`
child add/remove)

| 

.. _sdk_ubuntu_components_menugroup_removed(Object *action*)-prop:

+--------------------------------------------------------------------------+
|        \ removed(Object *action*)                                        |
+--------------------------------------------------------------------------+

Signal called when a action is removed from the list

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_menugroup_addObject-method:

+--------------------------------------------------------------------------+
|        \ addObject(Object *object*)                                      |
+--------------------------------------------------------------------------+

Adds an Object to the list programatically.

| 

.. _sdk_ubuntu_components_menugroup_removeObject-method:

+--------------------------------------------------------------------------+
|        \ removeObject(Object *object*)                                   |
+--------------------------------------------------------------------------+

Removes an object from the list programatically.

| 

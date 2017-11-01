ExclusiveGroup provides a way to declare several checkable controls as
mutually exclusive.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `ActionList </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/ActionList/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`current </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup#current-prop>`__****
   : Action

Methods
-------

-  void
   ****`bindCheckable </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup#bindCheckable-method>`__****\ (object
   *object*)
-  void
   ****`unbindCheckable </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup#unbindCheckable-method>`__****\ (object
   *object*)

Detailed Description
--------------------

The `ExclusiveGroup </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup/>`__
will only allow a single object to have it's checkable property set to
"true" at any one time. The exclusive group accepts child Actions, but
objects other than Actions can be used by using the
`bindCheckable </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup#bindCheckable-method>`__
function as long as they support one of the required signals, and a
"checked" property.

.. code:: qml

    ExclusiveGroup {
        Action {
            parameterType: Action.Bool
            state: true
        }
        Action {
            parameterType: Action.Bool
            state: false
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ current : `Action </sdk/apps/qml/Ubuntu.Components/Action/>`__  |
+--------------------------------------------------------------------------+

Returns the currently checked action

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void bindCheckable(object *object*)                             |
+--------------------------------------------------------------------------+

Explicitly bind an objects checkability to this exclusive group.

**Note:** This only works with objects which support the following
signals signals:

-  **toggled(bool)**

.. code:: qml

    Item {
        ExclusiveGroup {
            id: exclusiveGroup
        }
        Instantiator {
            model: 4
            onObjectAdded: exclusiveGroup.bindCheckable(object)
            onObjectRemoved: exclusiveGroup.unbindCheckable(object)
            Action {
                checkable: true
            }
        }
    }

**See also**
`ExclusiveGroup::unbindCheckable </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup#unbindCheckable-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ void unbindCheckable(object *object*)                           |
+--------------------------------------------------------------------------+

Explicitly unbind an objects checkability from this exclusive group.

**See also**
`ExclusiveGroup::bindCheckable </sdk/apps/qml/Ubuntu.Components/ExclusiveGroup#bindCheckable-method>`__.

| 

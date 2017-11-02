.. _sdk_ubuntu_components_exclusivegroup:
Ubuntu.Components ExclusiveGroup
================================

ExclusiveGroup provides a way to declare several checkable controls as
mutually exclusive.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.3                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | :ref:`ActionList <sdk_ubuntu_components_a |
|                                      | ctionlist>`_                         |
+--------------------------------------+--------------------------------------+

Properties
----------

-  :ref:`current <sdk_ubuntu_components_exclusivegroup_current-prop>`
   : Action

Methods
-------

-  void
   **:ref:`bindCheckable <sdk_ubuntu_components_exclusivegroup#bindCheckable-method>`**\ (object
   *object*)
-  void
   **:ref:`unbindCheckable <sdk_ubuntu_components_exclusivegroup#unbindCheckable-method>`**\ (object
   *object*)

Detailed Description
--------------------

The :ref:`ExclusiveGroup <sdk_ubuntu_components_exclusivegroup>` will only
allow a single object to have it's checkable property set to "true" at
any one time. The exclusive group accepts child Actions, but objects
other than Actions can be used by using the
:ref:`bindCheckable <sdk_ubuntu_components_exclusivegroup#bindCheckable-method>`
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

.. _sdk_ubuntu_components_exclusivegroup_-prop:

+--------------------------------------------------------------------------+
| :ref:` <>`\ current : `Action <sdk_ubuntu_components_action>`          |
+--------------------------------------------------------------------------+

Returns the currently checked action

| 

Method Documentation
--------------------

.. _sdk_ubuntu_components_exclusivegroup_void bindCheckable-method:

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
:ref:`ExclusiveGroup::unbindCheckable <sdk_ubuntu_components_exclusivegroup#unbindCheckable-method>`.

| 

.. _sdk_ubuntu_components_exclusivegroup_void unbindCheckable-method:

+--------------------------------------------------------------------------+
|        \ void unbindCheckable(object *object*)                           |
+--------------------------------------------------------------------------+

Explicitly unbind an objects checkability from this exclusive group.

**See also**
:ref:`ExclusiveGroup::bindCheckable <sdk_ubuntu_components_exclusivegroup#bindCheckable-method>`.

| 

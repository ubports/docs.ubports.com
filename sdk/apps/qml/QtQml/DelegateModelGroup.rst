.. _sdk_qtqml_delegatemodelgroup:

QtQml DelegateModelGroup
========================

Encapsulates a filtered set of visual data items

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`count <sdk_qtqml_delegatemodelgroup_count>` : int
-  :ref:`includeByDefault <sdk_qtqml_delegatemodelgroup_includeByDefault>` : bool
-  :ref:`name <sdk_qtqml_delegatemodelgroup_name>` : string

Signals
-------

-  void :ref:`changed <sdk_qtqml_delegatemodelgroup_changed>`\ (array *removed*, array *inserted*)

Methods
-------

-  void :ref:`addGroups <sdk_qtqml_delegatemodelgroup_addGroups>`\ (int *index*, int *count*, stringlist *groups*)
-  void :ref:`create <sdk_qtqml_delegatemodelgroup_create>`\ (jsdict *data*, array *groups*)
-  void :ref:`create <sdk_qtqml_delegatemodelgroup_create>`\ (int *index*, jsdict *data*, array *groups*)
-  void :ref:`create <sdk_qtqml_delegatemodelgroup_create>`\ (int *index*)
-  object :ref:`get <sdk_qtqml_delegatemodelgroup_get>`\ (int *index*)
-  void :ref:`insert <sdk_qtqml_delegatemodelgroup_insert>`\ (jsdict *data*, var *groups*)
-  void :ref:`insert <sdk_qtqml_delegatemodelgroup_insert>`\ (int *index*, jsdict *data*, array *groups*)
-  void :ref:`move <sdk_qtqml_delegatemodelgroup_move>`\ (var *from*, var *to*, int *count*)
-  void :ref:`remove <sdk_qtqml_delegatemodelgroup_remove>`\ (int *index*, int *count*)
-  void :ref:`removeGroups <sdk_qtqml_delegatemodelgroup_removeGroups>`\ (int *index*, int *count*, stringlist *groups*)
-  void :ref:`resolve <sdk_qtqml_delegatemodelgroup_resolve>`\ (int *from*, int *to*)
-  void :ref:`setGroups <sdk_qtqml_delegatemodelgroup_setGroups>`\ (int *index*, int *count*, stringlist *groups*)
-  void :ref:`setGroups <sdk_qtqml_delegatemodelgroup_setGroups>`\ (int *index*, int *count*, stringlist *groups*)

Detailed Description
--------------------

The :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` type provides a means to address the model data of a :ref:`DelegateModel <sdk_qtqml_delegatemodel>`'s delegate items, as well as sort and filter these delegate items.

The initial set of instantiable delegate items in a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` is represented by its :ref:`items <sdk_qtqml_delegatemodel_items>` group, which normally directly reflects the contents of the model assigned to :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>`. This set can be changed to the contents of any other member of :ref:`DelegateModel::groups <sdk_qtqml_delegatemodel_groups>` by assigning the :ref:`name <sdk_qtqml_delegatemodelgroup_name>` of that :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` to the :ref:`DelegateModel::filterOnGroup <sdk_qtqml_delegatemodel_filterOnGroup>` property.

The data of an item in a :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` can be accessed using the :ref:`get() <sdk_qtqml_delegatemodelgroup_get>` function, which returns information about group membership and indexes as well as model data. In combination with the :ref:`move() <sdk_qtqml_delegatemodelgroup_move>` function this can be used to implement view sorting, with :ref:`remove() <sdk_qtqml_delegatemodelgroup_remove>` to filter items out of a view, or with :ref:`setGroups() <sdk_qtqml_delegatemodelgroup_setGroups>` and :ref:`Package <sdk_qtqml_package>` delegates to categorize items into different views.

Data from models can be supplemented by inserting data directly into a :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` with the :ref:`insert() <sdk_qtqml_delegatemodelgroup_insert>` function. This can be used to introduce mock items into a view, or placeholder items that are later :ref:`resolved <sdk_qtqml_delegatemodelgroup_resolve>` to real model data when it becomes available.

Delegate items can also be instantiated directly from a :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` using the :ref:`create() <sdk_qtqml_delegatemodelgroup_create>` function, making it possible to use :ref:`DelegateModel <sdk_qtqml_delegatemodel>` without an accompanying view type or to cherry-pick specific items that should be instantiated irregardless of whether they're currently within a view's visible area.

**Note:** This type is also available as :ref:`VisualDataGroup <sdk_qtqml_visualdatagroup>` in the `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_  module due to compatibility reasons.

**See also** QML Dynamic View Ordering Tutorial.

Property Documentation
----------------------

.. _sdk_qtqml_delegatemodelgroup_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of items in the group.

.. _sdk_qtqml_delegatemodelgroup_includeByDefault:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| includeByDefault : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds whether new items are assigned to this group by default.

.. _sdk_qtqml_delegatemodelgroup_name:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| name : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the group.

Each group in a model must have a unique name starting with a lower case letter.

Signal Documentation
--------------------

.. _sdk_qtqml_delegatemodelgroup_changed:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void changed(array *removed*, array *inserted*)                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when items have been removed from or inserted into the group.

Each object in the *removed* and *inserted* arrays has two values; the *index* of the first item inserted or removed and a *count* of the number of consecutive items inserted or removed.

Each index is adjusted for previous changes with all removed items preceding any inserted items.

The corresponding handler is ``onChanged``.

Method Documentation
--------------------

.. _sdk_qtqml_delegatemodelgroup_addGroups:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void addGroups(int *index*, int *count*, stringlist *groups*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds *count* items starting at *index* to *groups*.

.. _sdk_qtqml_delegatemodelgroup_create:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void create(jsdict *data*, array *groups* = undefined)                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be :ref:`inserted <sdk_qtqml_delegatemodelgroup_insert>` at *index* and an item referencing this new entry will be returned. The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group :ref:`create() <sdk_qtqml_delegatemodelgroup_create>` was called on.

All items returned by create are added to the :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` group. Items in this group remain instantiated when not referenced by any view.

.. _sdk_qtqml_delegatemodelgroup_create1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void create(int *index*, jsdict *data*, array *groups* = undefined)                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be :ref:`inserted <sdk_qtqml_delegatemodelgroup_insert>` at *index* and an item referencing this new entry will be returned. The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group :ref:`create() <sdk_qtqml_delegatemodelgroup_create>` was called on.

All items returned by create are added to the :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` group. Items in this group remain instantiated when not referenced by any view.

.. _sdk_qtqml_delegatemodelgroup_create2:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void create(int *index*)                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be :ref:`inserted <sdk_qtqml_delegatemodelgroup_insert>` at *index* and an item referencing this new entry will be returned. The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group create() was called on.

All items returned by create are added to the :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` group. Items in this group remain instantiated when not referenced by any view.

.. _sdk_qtqml_delegatemodelgroup_get:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object get(int *index*)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns a javascript object describing the item at *index* in the group.

The returned object contains the same information that is available to a delegate from the :ref:`DelegateModel <sdk_qtqml_delegatemodel>` attached as well as the model for that item. It has the properties:

-  **model** The model data of the item. This is the same as the model context property in a delegate
-  **groups** A list the of names of groups the item is a member of. This property can be written to change the item's membership.
-  **inItems** Whether the item belongs to the :ref:`items <sdk_qtqml_delegatemodel_items>` group. Writing to this property will add or remove the item from the group.
-  **itemsIndex** The index of the item within the :ref:`items <sdk_qtqml_delegatemodel_items>` group.
-  **in<GroupName>** Whether the item belongs to the dynamic group *groupName*. Writing to this property will add or remove the item from the group.
-  **<groupName>Index** The index of the item within the dynamic group *groupName*.
-  **isUnresolved** Whether the item is bound to an index in the model assigned to :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>`. Returns true if the item is not bound to the model, and false if it is.

.. _sdk_qtqml_delegatemodelgroup_insert:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void insert(jsdict *data*, var *groups* = undefined)                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Creates a new entry at *index* in a DelegateModel with the values from *data* that correspond to roles in the model assigned to DelegateModel::model.

If no index is supplied the data is appended to the model.

The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group insert was called on.

Data inserted into a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` can later be merged with an existing entry in :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>` using the :ref:`resolve() <sdk_qtqml_delegatemodelgroup_resolve>` function. This can be used to create placeholder items that are later replaced by actual data.

.. _sdk_qtqml_delegatemodelgroup_insert1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void insert(int *index*, jsdict *data*, array *groups* = undefined)                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Creates a new entry at *index* in a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` with the values from *data* that correspond to roles in the model assigned to :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>`.

If no index is supplied the data is appended to the model.

The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group insert was called on.

Data inserted into a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` can later be merged with an existing entry in :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>` using the :ref:`resolve() <sdk_qtqml_delegatemodelgroup_resolve>` function. This can be used to create placeholder items that are later replaced by actual data.

.. _sdk_qtqml_delegatemodelgroup_move:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void move(var *from*, var *to*, int *count*)                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves *count* at *from* in a group *to* a new position.

.. _sdk_qtqml_delegatemodelgroup_remove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void remove(int *index*, int *count*)                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes *count* items starting at *index* from the group.

.. _sdk_qtqml_delegatemodelgroup_removeGroups:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void removeGroups(int *index*, int *count*, stringlist *groups*)                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Removes *count* items starting at *index* from *groups*.

.. _sdk_qtqml_delegatemodelgroup_resolve:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void resolve(int *from*, int *to*)                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Binds an unresolved item at *from* to an item in :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>` at index *to*.

Unresolved items are entries whose data has been :ref:`inserted <sdk_qtqml_delegatemodelgroup_insert>` into a :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` instead of being derived from a :ref:`DelegateModel::model <sdk_qtqml_delegatemodel_model>` index. Resolving an item will replace the item at the target index with the unresolved item. A resolved an item will reflect the data of the source model at its bound index and will move when that index moves like any other item.

If a new item is replaced in the :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` onChanged() handler its insertion and replacement will be communicated to views as an atomic operation, creating the appearance that the model contents have not changed, or if the unresolved and model item are not adjacent that the previously unresolved item has simply moved.

.. _sdk_qtqml_delegatemodelgroup_setGroups:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void setGroups(int *index*, int *count*, stringlist *groups*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the *groups* *count* items starting at *index* belong to.

.. _sdk_qtqml_delegatemodelgroup_setGroups1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| void setGroups(int *index*, int *count*, stringlist *groups*)                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Sets the *groups* *count* items starting at *index* belong to.


Encapsulates a filtered set of visual data items

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/QtQml/DelegateModelGroup#count-prop>`__****
   : int
-  ****`includeByDefault </sdk/apps/qml/QtQml/DelegateModelGroup#includeByDefault-prop>`__****
   : bool
-  ****`name </sdk/apps/qml/QtQml/DelegateModelGroup#name-prop>`__**** :
   string

Signals
-------

-  void
   ****`changed </sdk/apps/qml/QtQml/DelegateModelGroup#changed-signal>`__****\ (array
   *removed*, array *inserted*)

Methods
-------

-  void
   ****`addGroups </sdk/apps/qml/QtQml/DelegateModelGroup#addGroups-method>`__****\ (int
   *index*, int *count*, stringlist *groups*)
-  void
   ****`create </sdk/apps/qml/QtQml/DelegateModelGroup#create-method-3>`__****\ (jsdict
   *data*, array *groups*)
-  void
   ****`create </sdk/apps/qml/QtQml/DelegateModelGroup#create-method-2>`__****\ (int
   *index*, jsdict *data*, array *groups*)
-  void
   ****`create </sdk/apps/qml/QtQml/DelegateModelGroup#create-method>`__****\ (int
   *index*)
-  object
   ****`get </sdk/apps/qml/QtQml/DelegateModelGroup#get-method>`__****\ (int
   *index*)
-  void
   ****`insert </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method-2>`__****\ (jsdict
   *data*, var *groups*)
-  void
   ****`insert </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method>`__****\ (int
   *index*, jsdict *data*, array *groups*)
-  void
   ****`move </sdk/apps/qml/QtQml/DelegateModelGroup#move-method>`__****\ (var
   *from*, var *to*, int *count*)
-  void
   ****`remove </sdk/apps/qml/QtQml/DelegateModelGroup#remove-method>`__****\ (int
   *index*, int *count*)
-  void
   ****`removeGroups </sdk/apps/qml/QtQml/DelegateModelGroup#removeGroups-method>`__****\ (int
   *index*, int *count*, stringlist *groups*)
-  void
   ****`resolve </sdk/apps/qml/QtQml/DelegateModelGroup#resolve-method>`__****\ (int
   *from*, int *to*)
-  void
   ****`setGroups </sdk/apps/qml/QtQml/DelegateModelGroup#setGroups-method-2>`__****\ (int
   *index*, int *count*, stringlist *groups*)
-  void
   ****`setGroups </sdk/apps/qml/QtQml/DelegateModelGroup#setGroups-method>`__****\ (int
   *index*, int *count*, stringlist *groups*)

Detailed Description
--------------------

The `DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__
type provides a means to address the model data of a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__'s delegate items,
as well as sort and filter these delegate items.

The initial set of instantiable delegate items in a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ is represented by
its `items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__ group,
which normally directly reflects the contents of the model assigned to
`DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__.
This set can be changed to the contents of any other member of
`DelegateModel::groups </sdk/apps/qml/QtQml/DelegateModel#groups-attached-prop>`__
by assigning the
`name </sdk/apps/qml/QtQml/DelegateModelGroup#name-prop>`__ of that
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__ to the
`DelegateModel::filterOnGroup </sdk/apps/qml/QtQml/DelegateModel#filterOnGroup-prop>`__
property.

The data of an item in a
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__ can be
accessed using the
`get() </sdk/apps/qml/QtQml/DelegateModelGroup#get-method>`__ function,
which returns information about group membership and indexes as well as
model data. In combination with the
`move() </sdk/apps/qml/QtQml/DelegateModelGroup#move-method>`__ function
this can be used to implement view sorting, with
`remove() </sdk/apps/qml/QtQml/DelegateModelGroup#remove-method>`__ to
filter items out of a view, or with
`setGroups() </sdk/apps/qml/QtQml/DelegateModelGroup#setGroups-method>`__
and `Package </sdk/apps/qml/QtQml/Package/>`__ delegates to categorize
items into different views.

Data from models can be supplemented by inserting data directly into a
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__ with
the `insert() </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method>`__
function. This can be used to introduce mock items into a view, or
placeholder items that are later
`resolved </sdk/apps/qml/QtQml/DelegateModelGroup#resolve-method>`__ to
real model data when it becomes available.

Delegate items can also be instantiated directly from a
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__ using
the `create() </sdk/apps/qml/QtQml/DelegateModelGroup#create-method>`__
function, making it possible to use
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ without an
accompanying view type or to cherry-pick specific items that should be
instantiated irregardless of whether they're currently within a view's
visible area.

**Note:** This type is also available as
`VisualDataGroup </sdk/apps/qml/QtQml/VisualDataGroup/>`__ in the `Qt
QML </sdk/apps/qml/QtQml/qtqml-index/>`__ module due to compatibility
reasons.

**See also** QML Dynamic View Ordering Tutorial.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of items in the group.

| 

+--------------------------------------------------------------------------+
|        \ includeByDefault : bool                                         |
+--------------------------------------------------------------------------+

This property holds whether new items are assigned to this group by
default.

| 

+--------------------------------------------------------------------------+
|        \ name : string                                                   |
+--------------------------------------------------------------------------+

This property holds the name of the group.

Each group in a model must have a unique name starting with a lower case
letter.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void changed(array *removed*, array *inserted*)                 |
+--------------------------------------------------------------------------+

This signal is emitted when items have been removed from or inserted
into the group.

Each object in the *removed* and *inserted* arrays has two values; the
*index* of the first item inserted or removed and a *count* of the
number of consecutive items inserted or removed.

Each index is adjusted for previous changes with all removed items
preceding any inserted items.

The corresponding handler is ``onChanged``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ void addGroups(int *index*, int *count*, stringlist *groups*)   |
+--------------------------------------------------------------------------+

Adds *count* items starting at *index* to *groups*.

| 

+--------------------------------------------------------------------------+
|        \ void create(jsdict *data*, array *groups* = undefined)          |
+--------------------------------------------------------------------------+

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be
`inserted </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method>`__ at
*index* and an item referencing this new entry will be returned. The
optional *groups* parameter identifies the groups the new entry should
belong to, if unspecified this is equal to the group
`create() </sdk/apps/qml/QtQml/DelegateModelGroup#create-method>`__ was
called on.

All items returned by create are added to the
`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__
group. Items in this group remain instantiated when not referenced by
any view.

| 

+--------------------------------------------------------------------------+
|        \ void create(int *index*, jsdict *data*, array *groups* =        |
| undefined)                                                               |
+--------------------------------------------------------------------------+

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be
`inserted </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method>`__ at
*index* and an item referencing this new entry will be returned. The
optional *groups* parameter identifies the groups the new entry should
belong to, if unspecified this is equal to the group
`create() </sdk/apps/qml/QtQml/DelegateModelGroup#create-method>`__ was
called on.

All items returned by create are added to the
`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__
group. Items in this group remain instantiated when not referenced by
any view.

| 

+--------------------------------------------------------------------------+
|        \ void create(int *index*)                                        |
+--------------------------------------------------------------------------+

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be
`inserted </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method>`__ at
*index* and an item referencing this new entry will be returned. The
optional *groups* parameter identifies the groups the new entry should
belong to, if unspecified this is equal to the group create() was called
on.

All items returned by create are added to the
`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__
group. Items in this group remain instantiated when not referenced by
any view.

| 

+--------------------------------------------------------------------------+
|        \ object get(int *index*)                                         |
+--------------------------------------------------------------------------+

Returns a javascript object describing the item at *index* in the group.

The returned object contains the same information that is available to a
delegate from the `DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__
attached as well as the model for that item. It has the properties:

-  **model** The model data of the item. This is the same as the model
   context property in a delegate
-  **groups** A list the of names of groups the item is a member of.
   This property can be written to change the item's membership.
-  **inItems** Whether the item belongs to the
   `items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__ group.
   Writing to this property will add or remove the item from the group.
-  **itemsIndex** The index of the item within the
   `items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__ group.
-  **in<GroupName>** Whether the item belongs to the dynamic group
   *groupName*. Writing to this property will add or remove the item
   from the group.
-  **<groupName>Index** The index of the item within the dynamic group
   *groupName*.
-  **isUnresolved** Whether the item is bound to an index in the model
   assigned to
   `DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__.
   Returns true if the item is not bound to the model, and false if it
   is.

| 

+--------------------------------------------------------------------------+
|        \ void insert(jsdict *data*, var *groups* = undefined)            |
+--------------------------------------------------------------------------+

Creates a new entry at *index* in a DelegateModel with the values from
*data* that correspond to roles in the model assigned to
DelegateModel::model.

If no index is supplied the data is appended to the model.

The optional *groups* parameter identifies the groups the new entry
should belong to, if unspecified this is equal to the group insert was
called on.

Data inserted into a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ can later be
merged with an existing entry in
`DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__
using the
`resolve() </sdk/apps/qml/QtQml/DelegateModelGroup#resolve-method>`__
function. This can be used to create placeholder items that are later
replaced by actual data.

| 

+--------------------------------------------------------------------------+
|        \ void insert(int *index*, jsdict *data*, array *groups* =        |
| undefined)                                                               |
+--------------------------------------------------------------------------+

Creates a new entry at *index* in a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ with the values
from *data* that correspond to roles in the model assigned to
`DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__.

If no index is supplied the data is appended to the model.

The optional *groups* parameter identifies the groups the new entry
should belong to, if unspecified this is equal to the group insert was
called on.

Data inserted into a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ can later be
merged with an existing entry in
`DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__
using the
`resolve() </sdk/apps/qml/QtQml/DelegateModelGroup#resolve-method>`__
function. This can be used to create placeholder items that are later
replaced by actual data.

| 

+--------------------------------------------------------------------------+
|        \ void move(var *from*, var *to*, int *count*)                    |
+--------------------------------------------------------------------------+

Moves *count* at *from* in a group *to* a new position.

| 

+--------------------------------------------------------------------------+
|        \ void remove(int *index*, int *count*)                           |
+--------------------------------------------------------------------------+

Removes *count* items starting at *index* from the group.

| 

+--------------------------------------------------------------------------+
|        \ void removeGroups(int *index*, int *count*, stringlist          |
| *groups*)                                                                |
+--------------------------------------------------------------------------+

Removes *count* items starting at *index* from *groups*.

| 

+--------------------------------------------------------------------------+
|        \ void resolve(int *from*, int *to*)                              |
+--------------------------------------------------------------------------+

Binds an unresolved item at *from* to an item in
`DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__
at index *to*.

Unresolved items are entries whose data has been
`inserted </sdk/apps/qml/QtQml/DelegateModelGroup#insert-method>`__ into
a `DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__
instead of being derived from a
`DelegateModel::model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__
index. Resolving an item will replace the item at the target index with
the unresolved item. A resolved an item will reflect the data of the
source model at its bound index and will move when that index moves like
any other item.

If a new item is replaced in the
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__
onChanged() handler its insertion and replacement will be communicated
to views as an atomic operation, creating the appearance that the model
contents have not changed, or if the unresolved and model item are not
adjacent that the previously unresolved item has simply moved.

| 

+--------------------------------------------------------------------------+
|        \ void setGroups(int *index*, int *count*, stringlist *groups*)   |
+--------------------------------------------------------------------------+

Sets the *groups* *count* items starting at *index* belong to.

| 

+--------------------------------------------------------------------------+
|        \ void setGroups(int *index*, int *count*, stringlist *groups*)   |
+--------------------------------------------------------------------------+

Sets the *groups* *count* items starting at *index* belong to.

| 

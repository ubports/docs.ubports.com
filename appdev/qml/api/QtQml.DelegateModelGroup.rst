QtQml.DelegateModelGroup
========================

.. raw:: html

   <p>

Encapsulates a filtered set of visual data items More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DelegateModelGroup -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQml.Models 2.1

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

includeByDefault : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void changed(array removed, array inserted)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void addGroups(int index, int count, stringlist groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void create(jsdict data, array groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void create(int index, jsdict data, array groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void create(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object get(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void insert(jsdict data, var groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void insert(int index, jsdict data, array groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void move(var from, var to, int count)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void remove(int index, int count)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void removeGroups(int index, int count, stringlist groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void resolve(int from, int to)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void setGroups(int index, int count, stringlist groups)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void setGroups(int index, int count, stringlist groups)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DelegateModelGroup-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The DelegateModelGroup type provides a means to address the model data
of a DelegateModel's delegate items, as well as sort and filter these
delegate items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The initial set of instantiable delegate items in a DelegateModel is
represented by its items group, which normally directly reflects the
contents of the model assigned to DelegateModel::model. This set can be
changed to the contents of any other member of DelegateModel::groups by
assigning the name of that DelegateModelGroup to the
DelegateModel::filterOnGroup property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The data of an item in a DelegateModelGroup can be accessed using the
get() function, which returns information about group membership and
indexes as well as model data. In combination with the move() function
this can be used to implement view sorting, with remove() to filter
items out of a view, or with setGroups() and Package delegates to
categorize items into different views.

.. raw:: html

   </p>

.. raw:: html

   <p>

Data from models can be supplemented by inserting data directly into a
DelegateModelGroup with the insert() function. This can be used to
introduce mock items into a view, or placeholder items that are later
resolved to real model data when it becomes available.

.. raw:: html

   </p>

.. raw:: html

   <p>

Delegate items can also be instantiated directly from a
DelegateModelGroup using the create() function, making it possible to
use DelegateModel without an accompanying view type or to cherry-pick
specific items that should be instantiated irregardless of whether
they're currently within a view's visible area.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: This type is also available as VisualDataGroup in the Qt QML
module due to compatibility reasons.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also QML Dynamic View Ordering Tutorial.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DelegateModelGroup -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the number of items in the group.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="includeByDefault-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

includeByDefault : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds whether new items are assigned to this group by
default.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@includeByDefault -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the name of the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each group in a model must have a unique name starting with a lower case
letter.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$changed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="changed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void changed(array removed, array inserted)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This signal is emitted when items have been removed from or inserted
into the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each object in the removed and inserted arrays has two values; the index
of the first item inserted or removed and a count of the number of
consecutive items inserted or removed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each index is adjusted for previous changes with all removed items
preceding any inserted items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@changed -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$addGroups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="addGroups-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void addGroups(int index, int count, stringlist groups)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Adds count items starting at index to groups.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@addGroups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="create-method-3">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void create(jsdict data, array groups = undefined)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a reference to the instantiated item at index in the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a data object is provided it will be inserted at index and an item
referencing this new entry will be returned. The optional groups
parameter identifies the groups the new entry should belong to, if
unspecified this is equal to the group create() was called on.

.. raw:: html

   </p>

.. raw:: html

   <p>

All items returned by create are added to the persistedItems group.
Items in this group remain instantiated when not referenced by any view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@create -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="create-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void create(int index, jsdict data, array groups = undefined)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a reference to the instantiated item at index in the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a data object is provided it will be inserted at index and an item
referencing this new entry will be returned. The optional groups
parameter identifies the groups the new entry should belong to, if
unspecified this is equal to the group create() was called on.

.. raw:: html

   </p>

.. raw:: html

   <p>

All items returned by create are added to the persistedItems group.
Items in this group remain instantiated when not referenced by any view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@create -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="create-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void create(int index)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a reference to the instantiated item at index in the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a data object is provided it will be inserted at index and an item
referencing this new entry will be returned. The optional groups
parameter identifies the groups the new entry should belong to, if
unspecified this is equal to the group create() was called on.

.. raw:: html

   </p>

.. raw:: html

   <p>

All items returned by create are added to the persistedItems group.
Items in this group remain instantiated when not referenced by any view.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@create -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object get(int index)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns a javascript object describing the item at index in the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

The returned object contains the same information that is available to a
delegate from the DelegateModel attached as well as the model for that
item. It has the properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

model The model data of the item. This is the same as the model context
property in a delegate

.. raw:: html

   </li>

.. raw:: html

   <li>

groups A list the of names of groups the item is a member of. This
property can be written to change the item's membership.

.. raw:: html

   </li>

.. raw:: html

   <li>

inItems Whether the item belongs to the items group. Writing to this
property will add or remove the item from the group.

.. raw:: html

   </li>

.. raw:: html

   <li>

itemsIndex The index of the item within the items group.

.. raw:: html

   </li>

.. raw:: html

   <li>

in<GroupName> Whether the item belongs to the dynamic group groupName.
Writing to this property will add or remove the item from the group.

.. raw:: html

   </li>

.. raw:: html

   <li>

<groupName>Index The index of the item within the dynamic group
groupName.

.. raw:: html

   </li>

.. raw:: html

   <li>

isUnresolved Whether the item is bound to an index in the model assigned
to DelegateModel::model. Returns true if the item is not bound to the
model, and false if it is.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="insert-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void insert(jsdict data, var groups = undefined)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Creates a new entry at index in a DelegateModel with the values from
data that correspond to roles in the model assigned to
DelegateModel::model.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no index is supplied the data is appended to the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

The optional groups parameter identifies the groups the new entry should
belong to, if unspecified this is equal to the group insert was called
on.

.. raw:: html

   </p>

.. raw:: html

   <p>

Data inserted into a DelegateModel can later be merged with an existing
entry in DelegateModel::model using the resolve() function. This can be
used to create placeholder items that are later replaced by actual data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@insert -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="insert-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void insert(int index, jsdict data, array groups = undefined)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Creates a new entry at index in a DelegateModel with the values from
data that correspond to roles in the model assigned to
DelegateModel::model.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no index is supplied the data is appended to the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

The optional groups parameter identifies the groups the new entry should
belong to, if unspecified this is equal to the group insert was called
on.

.. raw:: html

   </p>

.. raw:: html

   <p>

Data inserted into a DelegateModel can later be merged with an existing
entry in DelegateModel::model using the resolve() function. This can be
used to create placeholder items that are later replaced by actual data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@insert -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void move(var from, var to, int count)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Moves count at from in a group to a new position.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void remove(int index, int count)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes count items starting at index from the group.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="removeGroups-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void removeGroups(int index, int count, stringlist groups)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Removes count items starting at index from groups.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@removeGroups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resolve-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void resolve(int from, int to)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Binds an unresolved item at from to an item in DelegateModel::model at
index to.

.. raw:: html

   </p>

.. raw:: html

   <p>

Unresolved items are entries whose data has been inserted into a
DelegateModelGroup instead of being derived from a DelegateModel::model
index. Resolving an item will replace the item at the target index with
the unresolved item. A resolved an item will reflect the data of the
source model at its bound index and will move when that index moves like
any other item.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a new item is replaced in the DelegateModelGroup onChanged() handler
its insertion and replacement will be communicated to views as an atomic
operation, creating the appearance that the model contents have not
changed, or if the unresolved and model item are not adjacent that the
previously unresolved item has simply moved.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resolve -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setGroups-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void setGroups(int index, int count, stringlist groups)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Sets the groups count items starting at index belong to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setGroups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setGroups-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void setGroups(int index, int count, stringlist groups)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Sets the groups count items starting at index belong to.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setGroups -->



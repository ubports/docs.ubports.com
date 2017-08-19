QtQml.DelegateModel
===================

.. raw:: html

   <p>

Encapsulates a model and delegate More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DelegateModel -->

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

delegate : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

filterOnGroup : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

groups : list<DelegateModelGroup>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

items : DelegateModelGroup

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : model

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parts : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

persistedItems : DelegateModelGroup

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

rootIndex : QModelIndex

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-properties">

Attached Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

groups : stringlist

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

inItems : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

inPersistedItems : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

isUnresolved : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

itemsIndex : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

model : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

persistedItemsIndex : int

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

QModelIndex modelIndex(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

QModelIndex parentModelIndex()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$DelegateModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The DelegateModel type encapsulates a model and the delegate that will
be instantiated for items in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is usually not necessary to create a DelegateModel. However, it can
be useful for manipulating and accessing the modelIndex when a
QAbstractItemModel subclass is used as the model. Also, DelegateModel is
used together with Package to provide delegates to multiple views, and
with DelegateModelGroup to sort and filter delegate items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The example below illustrates using a DelegateModel with a ListView.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQml.VisualDataModel.md">VisualDataModel</a></span> {
   <span class="name">id</span>: <span class="name">visualModel</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span> }
   }
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">height</span>: <span class="number">25</span>
   <span class="name">width</span>: <span class="number">100</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Name: &quot;</span> <span class="operator">+</span> <span class="name">name</span>}
   }
   }
   <span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">visualModel</span>
   }
   }</pre>

.. raw:: html

   <p>

Note: This type is also available as VisualDataModel in the Qt QML
module due to compatibility reasons.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@DelegateModel -->

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

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="delegate-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

delegate : Component

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

The delegate provides a template defining each item instantiated by a
view. The index is exposed as an accessible index property. Properties
of the model are also available depending upon the type of Data Model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@delegate -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="filterOnGroup-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

filterOnGroup : string

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

This property holds the name of the group used to filter the visual data
model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Only items which belong to this group are visible to a view.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default this is the items group.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@filterOnGroup -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="groups-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

groups : list<DelegateModelGroup>

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

This property holds a delegate model's group definitions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Groups define a sub-set of the items in a delegate model and can be used
to filter a model.

.. raw:: html

   </p>

.. raw:: html

   <p>

For every group defined in a DelegateModel two attached properties are
added to each delegate item. The first of the form
DelegateModel.inGroupName holds whether the item belongs to the group
and the second DelegateModel.groupNameIndex holds the index of the item
in that group.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example illustrates using groups to select items in a
model.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQml.VisualDataModel.md">VisualDataModel</a></span> {
   <span class="name">id</span>: <span class="name">visualModel</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span> }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span> }
   }
   <span class="name">groups</span>: [
   <span class="type"><a href="QtQml.VisualDataGroup.md">VisualDataGroup</a></span> { <span class="name">name</span>: <span class="string">&quot;selected&quot;</span> }
   ]
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">id</span>: <span class="name">item</span>
   <span class="name">height</span>: <span class="number">25</span>
   <span class="name">width</span>: <span class="number">200</span>
   <span class="type">Text</span> {
   <span class="name">text</span>: {
   var <span class="name">text</span> = <span class="string">&quot;Name: &quot;</span> <span class="operator">+</span> <span class="name">name</span>
   <span class="keyword">if</span> (<span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">inSelected</span>)
   <span class="name">text</span> <span class="operator">+=</span> <span class="string">&quot; (&quot;</span> <span class="operator">+</span> <span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">selectedIndex</span> <span class="operator">+</span> <span class="string">&quot;)&quot;</span>
   <span class="keyword">return</span> <span class="name">text</span>;
   }
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">inSelected</span> <span class="operator">=</span> !<span class="name">item</span>.<span class="name">VisualDataModel</span>.<span class="name">inSelected</span>
   }
   }
   }
   <span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">visualModel</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@groups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="items-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

items : DelegateModelGroup

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

This property holds visual data model's default group to which all new
items are added.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@items -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

model : model

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

This property holds the model providing data for the DelegateModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

The model provides a set of data that is used to create the items for a
view. For large or dynamic datasets the model is usually provided by a
C++ model object. The C++ model object must be a QAbstractItemModel
subclass or a simple list.

.. raw:: html

   </p>

.. raw:: html

   <p>

Models can also be created directly in QML, using a ListModel or
XmlListModel.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Data Models.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parts-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

parts : object

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

The parts property selects a DelegateModel which creates delegates from
the part named. This is used in conjunction with the Package type.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the code below selects a model which creates delegates
named list from a Package:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">DelegateModel {
   id: visualModel
   delegate: Package {
   Item { Package<span class="operator">.</span>name: <span class="string">&quot;list&quot;</span> }
   }
   model: myModel
   }
   ListView {
   width: <span class="number">200</span>; height:<span class="number">200</span>
   model: visualModel<span class="operator">.</span>parts<span class="operator">.</span>list
   }</pre>

.. raw:: html

   <p>

See also Package.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parts -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="persistedItems-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

persistedItems : DelegateModelGroup

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

This property holds visual data model's persisted items group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items in this group are not destroyed when released by a view, instead
they are persisted until removed from the group.

.. raw:: html

   </p>

.. raw:: html

   <p>

An item can be removed from the persistedItems group by setting the
DelegateModel.inPersistedItems property to false. If the item is not
referenced by a view at that time it will be destroyed. Adding an item
to this group will not create a new instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items returned by the QtQml.Models::DelegateModelGroup::create()
function are automatically added to this group.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@persistedItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="rootIndex-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

rootIndex : QModelIndex

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

QAbstractItemModel provides a hierarchical tree of data, whereas QML
only operates on list data. rootIndex allows the children of any node in
a QAbstractItemModel to be provided by this model.

.. raw:: html

   </p>

.. raw:: html

   <p>

This property only affects models of type QAbstractItemModel that are
hierarchical (e.g, a tree model).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a simple interactive file system browser. When a
directory name is clicked, the view's rootIndex is set to the
QModelIndex node of the clicked directory, thus updating the view to
show the new directory's contents.

.. raw:: html

   </p>

.. raw:: html

   <p>

main.cpp:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span> argv)
   {
   <span class="type">QApplication</span> app(argc<span class="operator">,</span> argv);
   <span class="type">QQuickView</span> view;
   <span class="type">QDirModel</span> model;
   view<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;dirModel&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>model);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;view.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   <p>

view.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListView</span> {
   <span class="name">id</span>: <span class="name">view</span>
   <span class="name">width</span>: <span class="number">300</span>
   <span class="name">height</span>: <span class="number">400</span>
   <span class="name">model</span>: <span class="name">VisualDataModel</span> {
   <span class="name">model</span>: <span class="name">dirModel</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">25</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">filePath</span> }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="keyword">if</span> (<span class="name">model</span>.<span class="name">hasModelChildren</span>)
   <span class="name">view</span>.<span class="name">model</span>.<span class="name">rootIndex</span> <span class="operator">=</span> <span class="name">view</span>.<span class="name">model</span>.<span class="name">modelIndex</span>(<span class="name">index</span>)
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

If the model is a QAbstractItemModel subclass, the delegate can also
reference a hasModelChildren property (optionally qualified by a model.
prefix) that indicates whether the delegate's model item has any child
nodes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also modelIndex() and parentModelIndex().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@rootIndex -->

.. raw:: html

   <h2>

Attached Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$groups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="groups-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.groups : stringlist

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

This attached property holds the name of DelegateModelGroups the item
belongs to.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@groups -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="inItems-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.inItems : int

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

This attached property holds whether the item belongs to the default
items DelegateModelGroup.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing this property will add or remove the item from the items group.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@inItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="inPersistedItems-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.inPersistedItems : int

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

This attached property holds whether the item belongs to the
persistedItems DelegateModelGroup.

.. raw:: html

   </p>

.. raw:: html

   <p>

Changing this property will add or remove the item from the items group.
Change with caution as removing an item from the persistedItems group
will destroy the current instance if it is not referenced by a model.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@inPersistedItems -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="isUnresolved-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.isUnresolved : bool

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

This attached property holds whether the visual item is bound to a data
model index. Returns true if the item is not bound to the model, and
false if it is.

.. raw:: html

   </p>

.. raw:: html

   <p>

An unresolved item can be bound to the data model using the
DelegateModelGroup::resolve() function.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@isUnresolved -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="itemsIndex-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.itemsIndex : int

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

This attached property holds the index of the item in the default items
DelegateModelGroup.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@itemsIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="model-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.model : int

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

This attached property holds the visual data model this delegate
instance belongs to.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@model -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="persistedItemsIndex-attached-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

DelegateModel.persistedItemsIndex : int

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

This attached property holds the index of the item in the persistedItems
DelegateModelGroup.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is attached to each instance of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@persistedItemsIndex -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$modelIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modelIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QModelIndex modelIndex(int index)

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

QAbstractItemModel provides a hierarchical tree of data, whereas QML
only operates on list data. This function assists in using tree models
in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns a QModelIndex for the specified index. This value can be
assigned to rootIndex.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also rootIndex.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@modelIndex -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parentModelIndex-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

QModelIndex parentModelIndex()

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

QAbstractItemModel provides a hierarchical tree of data, whereas QML
only operates on list data. This function assists in using tree models
in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns a QModelIndex for the parent of the current rootIndex. This
value can be assigned to rootIndex.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also rootIndex.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parentModelIndex -->



Encapsulates a model and delegate

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/QtQml/DelegateModel#count-prop>`__**** :
   int
-  ****`delegate </sdk/apps/qml/QtQml/DelegateModel#delegate-prop>`__****
   : Component
-  ****`filterOnGroup </sdk/apps/qml/QtQml/DelegateModel#filterOnGroup-prop>`__****
   : string
-  ****`groups </sdk/apps/qml/QtQml/DelegateModel#groups-prop>`__**** :
   list<DelegateModelGroup>
-  ****`items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__**** :
   DelegateModelGroup
-  ****`model </sdk/apps/qml/QtQml/DelegateModel#model-prop>`__**** :
   model
-  ****`parts </sdk/apps/qml/QtQml/DelegateModel#parts-prop>`__**** :
   object
-  ****`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__****
   : DelegateModelGroup
-  ****`rootIndex </sdk/apps/qml/QtQml/DelegateModel#rootIndex-prop>`__****
   : QModelIndex

Attached Properties
-------------------

-  ****`groups </sdk/apps/qml/QtQml/DelegateModel#groups-attached-prop>`__****
   : stringlist
-  ****`inItems </sdk/apps/qml/QtQml/DelegateModel#inItems-attached-prop>`__****
   : int
-  ****`inPersistedItems </sdk/apps/qml/QtQml/DelegateModel#inPersistedItems-attached-prop>`__****
   : int
-  ****`isUnresolved </sdk/apps/qml/QtQml/DelegateModel#isUnresolved-attached-prop>`__****
   : bool
-  ****`itemsIndex </sdk/apps/qml/QtQml/DelegateModel#itemsIndex-attached-prop>`__****
   : int
-  ****`model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__****
   : int
-  ****`persistedItemsIndex </sdk/apps/qml/QtQml/DelegateModel#persistedItemsIndex-attached-prop>`__****
   : int

Methods
-------

-  QModelIndex
   ****`modelIndex </sdk/apps/qml/QtQml/DelegateModel#modelIndex-method>`__****\ (int
   *index*)
-  QModelIndex
   ****`parentModelIndex </sdk/apps/qml/QtQml/DelegateModel#parentModelIndex-method>`__****\ ()

Detailed Description
--------------------

The `DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ type
encapsulates a model and the delegate that will be instantiated for
items in the model.

It is usually not necessary to create a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__. However, it can
be useful for manipulating and accessing the
`modelIndex </sdk/apps/qml/QtQml/DelegateModel#modelIndex-method>`__
when a QAbstractItemModel subclass is used as the model. Also,
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ is used together
with `Package </sdk/apps/qml/QtQml/Package/>`__ to provide delegates to
multiple views, and with
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__ to sort
and filter delegate items.

The example below illustrates using a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ with a ListView.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 200; height: 100
        VisualDataModel {
            id: visualModel
            model: ListModel {
                ListElement { name: "Apple" }
                ListElement { name: "Orange" }
            }
            delegate: Rectangle {
                height: 25
                width: 100
                Text { text: "Name: " + name}
            }
        }
        ListView {
            anchors.fill: parent
            model: visualModel
        }
    }

**Note:** This type is also available as
`VisualDataModel </sdk/apps/qml/QtQml/VisualDataModel/>`__ in the `Qt
QML </sdk/apps/qml/QtQml/qtqml-index/>`__ module due to compatibility
reasons.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

| 

+--------------------------------------------------------------------------+
|        \ delegate : `Component </sdk/apps/qml/QtQml/Component/>`__       |
+--------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by a
view. The index is exposed as an accessible ``index`` property.
Properties of the model are also available depending upon the type of
Data Model.

| 

+--------------------------------------------------------------------------+
|        \ filterOnGroup : string                                          |
+--------------------------------------------------------------------------+

This property holds the name of the group used to filter the visual data
model.

Only items which belong to this group are visible to a view.

By default this is the
`items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__ group.

| 

+--------------------------------------------------------------------------+
|        \ groups :                                                        |
| list<`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__>   |
+--------------------------------------------------------------------------+

This property holds a delegate model's group definitions.

Groups define a sub-set of the items in a delegate model and can be used
to filter a model.

For every group defined in a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ two attached
properties are added to each delegate item. The first of the form
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__.in\ *GroupName*
holds whether the item belongs to the group and the second
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__.\ *groupName*\ Index
holds the index of the item in that group.

The following example illustrates using groups to select items in a
model.

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 200; height: 100
        VisualDataModel {
            id: visualModel
            model: ListModel {
                ListElement { name: "Apple" }
                ListElement { name: "Orange" }
            }
            groups: [
                VisualDataGroup { name: "selected" }
            ]
            delegate: Rectangle {
                id: item
                height: 25
                width: 200
                Text {
                    text: {
                        var text = "Name: " + name
                        if (item.VisualDataModel.inSelected)
                            text += " (" + item.VisualDataModel.selectedIndex + ")"
                        return text;
                    }
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: item.VisualDataModel.inSelected = !item.VisualDataModel.inSelected
                }
            }
        }
        ListView {
            anchors.fill: parent
            model: visualModel
        }
    }

| 

+--------------------------------------------------------------------------+
|        \ items :                                                         |
| `DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__         |
+--------------------------------------------------------------------------+

This property holds visual data model's default group to which all new
items are added.

| 

+--------------------------------------------------------------------------+
|        \ model :                                                         |
| `model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__        |
+--------------------------------------------------------------------------+

This property holds the model providing data for the
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__.

The model provides a set of data that is used to create the items for a
view. For large or dynamic datasets the model is usually provided by a
C++ model object. The C++ model object must be a QAbstractItemModel
subclass or a simple list.

Models can also be created directly in QML, using a
`ListModel </sdk/apps/qml/QtQml/ListModel/>`__ or XmlListModel.

**See also** Data Models.

| 

+--------------------------------------------------------------------------+
|        \ parts : object                                                  |
+--------------------------------------------------------------------------+

The *parts* property selects a
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__ which creates
delegates from the part named. This is used in conjunction with the
`Package </sdk/apps/qml/QtQml/Package/>`__ type.

For example, the code below selects a model which creates delegates
named *list* from a `Package </sdk/apps/qml/QtQml/Package/>`__:

.. code:: cpp

    DelegateModel {
        id: visualModel
        delegate: Package {
            Item { Package.name: "list" }
        }
        model: myModel
    }
    ListView {
        width: 200; height:200
        model: visualModel.parts.list
    }

**See also** `Package </sdk/apps/qml/QtQml/Package/>`__.

| 

+--------------------------------------------------------------------------+
|        \ persistedItems :                                                |
| `DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__         |
+--------------------------------------------------------------------------+

This property holds visual data model's persisted items group.

Items in this group are not destroyed when released by a view, instead
they are persisted until removed from the group.

An item can be removed from the persistedItems group by setting the
`DelegateModel </sdk/apps/qml/QtQml/DelegateModel/>`__.\ `inPersistedItems </sdk/apps/qml/QtQml/DelegateModel#inPersistedItems-attached-prop>`__
property to false. If the item is not referenced by a view at that time
it will be destroyed. Adding an item to this group will not create a new
instance.

Items returned by the
`QtQml.Models::DelegateModelGroup::create() </sdk/apps/qml/QtQml/DelegateModelGroup#create-method>`__
function are automatically added to this group.

| 

+--------------------------------------------------------------------------+
|        \ rootIndex : QModelIndex                                         |
+--------------------------------------------------------------------------+

QAbstractItemModel provides a hierarchical tree of data, whereas QML
only operates on list data. ``rootIndex`` allows the children of any
node in a QAbstractItemModel to be provided by this model.

This property only affects models of type QAbstractItemModel that are
hierarchical (e.g, a tree model).

For example, here is a simple interactive file system browser. When a
directory name is clicked, the view's ``rootIndex`` is set to the
QModelIndex node of the clicked directory, thus updating the view to
show the new directory's contents.

``main.cpp``:

.. code:: cpp

    int main(int argc, char ** argv)
    {
        QApplication app(argc, argv);
        QQuickView view;
        QDirModel model;
        view.rootContext()->setContextProperty("dirModel", &model);
        view.setSource(QUrl::fromLocalFile("view.qml"));
        view.show();
        return app.exec();
    }

``view.qml``:

.. code:: qml

    import QtQuick 2.0
    ListView {
        id: view
        width: 300
        height: 400
        model: VisualDataModel {
            model: dirModel
            delegate: Rectangle {
                width: 200; height: 25
                Text { text: filePath }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (model.hasModelChildren)
                            view.model.rootIndex = view.model.modelIndex(index)
                    }
                }
            }
        }
    }

If the `model </sdk/apps/qml/QtQml/DelegateModel#model-attached-prop>`__
is a QAbstractItemModel subclass, the delegate can also reference a
``hasModelChildren`` property (optionally qualified by a *model*.
prefix) that indicates whether the delegate's model item has any child
nodes.

**See also**
`modelIndex() </sdk/apps/qml/QtQml/DelegateModel#modelIndex-method>`__
and
`parentModelIndex() </sdk/apps/qml/QtQml/DelegateModel#parentModelIndex-method>`__.

| 

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ DelegateModel.groups : stringlist                               |
+--------------------------------------------------------------------------+

This attached property holds the name of DelegateModelGroups the item
belongs to.

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ DelegateModel.inItems : int                                     |
+--------------------------------------------------------------------------+

This attached property holds whether the item belongs to the default
`items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__.

Changing this property will add or remove the item from the items group.

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ DelegateModel.inPersistedItems : int                            |
+--------------------------------------------------------------------------+

This attached property holds whether the item belongs to the
`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__.

Changing this property will add or remove the item from the items group.
Change with caution as removing an item from the
`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__
group will destroy the current instance if it is not referenced by a
model.

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ DelegateModel.isUnresolved : bool                               |
+--------------------------------------------------------------------------+

This attached property holds whether the visual item is bound to a data
model index. Returns true if the item is not bound to the model, and
false if it is.

An unresolved item can be bound to the data model using the
`DelegateModelGroup::resolve() </sdk/apps/qml/QtQml/DelegateModelGroup#resolve-method>`__
function.

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ DelegateModel.itemsIndex : int                                  |
+--------------------------------------------------------------------------+

This attached property holds the index of the item in the default
`items </sdk/apps/qml/QtQml/DelegateModel#items-prop>`__
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__.

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ DelegateModel.model : int                                       |
+--------------------------------------------------------------------------+

This attached property holds the visual data model this delegate
instance belongs to.

It is attached to each instance of the delegate.

| 

+--------------------------------------------------------------------------+
|        \ DelegateModel.persistedItemsIndex : int                         |
+--------------------------------------------------------------------------+

This attached property holds the index of the item in the
`persistedItems </sdk/apps/qml/QtQml/DelegateModel#persistedItems-prop>`__
`DelegateModelGroup </sdk/apps/qml/QtQml/DelegateModelGroup/>`__.

It is attached to each instance of the delegate.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ QModelIndex modelIndex(int *index*)                             |
+--------------------------------------------------------------------------+

QAbstractItemModel provides a hierarchical tree of data, whereas QML
only operates on list data. This function assists in using tree models
in QML.

Returns a QModelIndex for the specified index. This value can be
assigned to
`rootIndex </sdk/apps/qml/QtQml/DelegateModel#rootIndex-prop>`__.

**See also**
`rootIndex </sdk/apps/qml/QtQml/DelegateModel#rootIndex-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ QModelIndex parentModelIndex()                                  |
+--------------------------------------------------------------------------+

QAbstractItemModel provides a hierarchical tree of data, whereas QML
only operates on list data. This function assists in using tree models
in QML.

Returns a QModelIndex for the parent of the current
`rootIndex </sdk/apps/qml/QtQml/DelegateModel#rootIndex-prop>`__. This
value can be assigned to
`rootIndex </sdk/apps/qml/QtQml/DelegateModel#rootIndex-prop>`__.

**See also**
`rootIndex </sdk/apps/qml/QtQml/DelegateModel#rootIndex-prop>`__.

| 

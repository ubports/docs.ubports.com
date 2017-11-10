.. _sdk_qtqml_delegatemodel:

QtQml DelegateModel
===================

Encapsulates a model and delegate

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`count <sdk_qtqml_delegatemodel_count>` : int
-  :ref:`delegate <sdk_qtqml_delegatemodel_delegate>` : Component
-  :ref:`filterOnGroup <sdk_qtqml_delegatemodel_filterOnGroup>` : string
-  :ref:`groups <sdk_qtqml_delegatemodel_groups>` : list<DelegateModelGroup>
-  :ref:`items <sdk_qtqml_delegatemodel_items>` : DelegateModelGroup
-  :ref:`model <sdk_qtqml_delegatemodel_model>` : model
-  :ref:`parts <sdk_qtqml_delegatemodel_parts>` : object
-  :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` : DelegateModelGroup
-  :ref:`rootIndex <sdk_qtqml_delegatemodel_rootIndex>` : QModelIndex

Attached Properties
-------------------

-  :ref:`groups <sdk_qtqml_delegatemodel_groups>` : stringlist
-  :ref:`inItems <sdk_qtqml_delegatemodel_inItems>` : int
-  :ref:`inPersistedItems <sdk_qtqml_delegatemodel_inPersistedItems>` : int
-  :ref:`isUnresolved <sdk_qtqml_delegatemodel_isUnresolved>` : bool
-  :ref:`itemsIndex <sdk_qtqml_delegatemodel_itemsIndex>` : int
-  :ref:`model <sdk_qtqml_delegatemodel_model>` : int
-  :ref:`persistedItemsIndex <sdk_qtqml_delegatemodel_persistedItemsIndex>` : int

Methods
-------

-  QModelIndex :ref:`modelIndex <sdk_qtqml_delegatemodel_modelIndex>`\ (int *index*)
-  QModelIndex :ref:`parentModelIndex <sdk_qtqml_delegatemodel_parentModelIndex>`\ ()

Detailed Description
--------------------

The :ref:`DelegateModel <sdk_qtqml_delegatemodel>` type encapsulates a model and the delegate that will be instantiated for items in the model.

It is usually not necessary to create a :ref:`DelegateModel <sdk_qtqml_delegatemodel>`. However, it can be useful for manipulating and accessing the :ref:`modelIndex <sdk_qtqml_delegatemodel_modelIndex>` when a QAbstractItemModel subclass is used as the model. Also, :ref:`DelegateModel <sdk_qtqml_delegatemodel>` is used together with :ref:`Package <sdk_qtqml_package>` to provide delegates to multiple views, and with :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>` to sort and filter delegate items.

The example below illustrates using a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` with a ListView.

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

**Note:** This type is also available as :ref:`VisualDataModel <sdk_qtqml_visualdatamodel>` in the `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_  module due to compatibility reasons.

Property Documentation
----------------------

.. _sdk_qtqml_delegatemodel_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. _sdk_qtqml_delegatemodel_delegate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by a view. The index is exposed as an accessible ``index`` property. Properties of the model are also available depending upon the type of Data Model.

.. _sdk_qtqml_delegatemodel_filterOnGroup:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| filterOnGroup : string                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the name of the group used to filter the visual data model.

Only items which belong to this group are visible to a view.

By default this is the :ref:`items <sdk_qtqml_delegatemodel_items>` group.

.. _sdk_qtqml_delegatemodel_groups:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| groups : list<:ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`>                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds a delegate model's group definitions.

Groups define a sub-set of the items in a delegate model and can be used to filter a model.

For every group defined in a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` two attached properties are added to each delegate item. The first of the form :ref:`DelegateModel <sdk_qtqml_delegatemodel>`.in\ *GroupName* holds whether the item belongs to the group and the second :ref:`DelegateModel <sdk_qtqml_delegatemodel>`.\ *groupName*\ Index holds the index of the item in that group.

The following example illustrates using groups to select items in a model.

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

.. _sdk_qtqml_delegatemodel_items:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| items : :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`                                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds visual data model's default group to which all new items are added.

.. _sdk_qtqml_delegatemodel_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : :ref:`model <sdk_qtqml_delegatemodel_model>`                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the model providing data for the :ref:`DelegateModel <sdk_qtqml_delegatemodel>`.

The model provides a set of data that is used to create the items for a view. For large or dynamic datasets the model is usually provided by a C++ model object. The C++ model object must be a QAbstractItemModel subclass or a simple list.

Models can also be created directly in QML, using a :ref:`ListModel <sdk_qtqml_listmodel>` or XmlListModel.

**See also** Data Models.

.. _sdk_qtqml_delegatemodel_parts:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| parts : object                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The *parts* property selects a :ref:`DelegateModel <sdk_qtqml_delegatemodel>` which creates delegates from the part named. This is used in conjunction with the :ref:`Package <sdk_qtqml_package>` type.

For example, the code below selects a model which creates delegates named *list* from a :ref:`Package <sdk_qtqml_package>`:

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

**See also** :ref:`Package <sdk_qtqml_package>`.

.. _sdk_qtqml_delegatemodel_persistedItems:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| persistedItems : :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`                                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds visual data model's persisted items group.

Items in this group are not destroyed when released by a view, instead they are persisted until removed from the group.

An item can be removed from the persistedItems group by setting the :ref:`DelegateModel <sdk_qtqml_delegatemodel>`.\ :ref:`inPersistedItems <sdk_qtqml_delegatemodel_inPersistedItems>` property to false. If the item is not referenced by a view at that time it will be destroyed. Adding an item to this group will not create a new instance.

Items returned by the :ref:`QtQml.Models::DelegateModelGroup::create() <sdk_qtqml_delegatemodelgroup_create>` function are automatically added to this group.

.. _sdk_qtqml_delegatemodel_rootIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| rootIndex : QModelIndex                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. ``rootIndex`` allows the children of any node in a QAbstractItemModel to be provided by this model.

This property only affects models of type QAbstractItemModel that are hierarchical (e.g, a tree model).

For example, here is a simple interactive file system browser. When a directory name is clicked, the view's ``rootIndex`` is set to the QModelIndex node of the clicked directory, thus updating the view to show the new directory's contents.

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

If the :ref:`model <sdk_qtqml_delegatemodel_model>` is a QAbstractItemModel subclass, the delegate can also reference a ``hasModelChildren`` property (optionally qualified by a *model*. prefix) that indicates whether the delegate's model item has any child nodes.

**See also** :ref:`modelIndex() <sdk_qtqml_delegatemodel_modelIndex>` and :ref:`parentModelIndex() <sdk_qtqml_delegatemodel_parentModelIndex>`.

Attached Property Documentation
-------------------------------

.. _sdk_qtqml_delegatemodel_groups1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.groups : stringlist                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the name of DelegateModelGroups the item belongs to.

It is attached to each instance of the delegate.

.. _sdk_qtqml_delegatemodel_inItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.inItems : int                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the item belongs to the default :ref:`items <sdk_qtqml_delegatemodel_items>` :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`.

Changing this property will add or remove the item from the items group.

It is attached to each instance of the delegate.

.. _sdk_qtqml_delegatemodel_inPersistedItems:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.inPersistedItems : int                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the item belongs to the :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`.

Changing this property will add or remove the item from the items group. Change with caution as removing an item from the :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` group will destroy the current instance if it is not referenced by a model.

It is attached to each instance of the delegate.

.. _sdk_qtqml_delegatemodel_isUnresolved:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.isUnresolved : bool                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds whether the visual item is bound to a data model index. Returns true if the item is not bound to the model, and false if it is.

An unresolved item can be bound to the data model using the :ref:`DelegateModelGroup::resolve() <sdk_qtqml_delegatemodelgroup_resolve>` function.

It is attached to each instance of the delegate.

.. _sdk_qtqml_delegatemodel_itemsIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.itemsIndex : int                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the index of the item in the default :ref:`items <sdk_qtqml_delegatemodel_items>` :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`.

It is attached to each instance of the delegate.

.. _sdk_qtqml_delegatemodel_model1:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.model : int                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the visual data model this delegate instance belongs to.

It is attached to each instance of the delegate.

.. _sdk_qtqml_delegatemodel_persistedItemsIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| DelegateModel.persistedItemsIndex : int                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This attached property holds the index of the item in the :ref:`persistedItems <sdk_qtqml_delegatemodel_persistedItems>` :ref:`DelegateModelGroup <sdk_qtqml_delegatemodelgroup>`.

It is attached to each instance of the delegate.

Method Documentation
--------------------

.. _sdk_qtqml_delegatemodel_modelIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| QModelIndex modelIndex(int *index*)                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. This function assists in using tree models in QML.

Returns a QModelIndex for the specified index. This value can be assigned to :ref:`rootIndex <sdk_qtqml_delegatemodel_rootIndex>`.

**See also** :ref:`rootIndex <sdk_qtqml_delegatemodel_rootIndex>`.

.. _sdk_qtqml_delegatemodel_parentModelIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| QModelIndex parentModelIndex()                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. This function assists in using tree models in QML.

Returns a QModelIndex for the parent of the current :ref:`rootIndex <sdk_qtqml_delegatemodel_rootIndex>`. This value can be assigned to :ref:`rootIndex <sdk_qtqml_delegatemodel_rootIndex>`.

**See also** :ref:`rootIndex <sdk_qtqml_delegatemodel_rootIndex>`.


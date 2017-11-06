.. _sdk_qtqml_listmodel:

QtQml ListModel
===============

Defines a free-form list data source

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Properties
----------

-  :ref:`count <sdk_qtqml_listmodel_count>` : int
-  :ref:`dynamicRoles <sdk_qtqml_listmodel_dynamicRoles>` : bool

Methods
-------

-  :ref:`append <sdk_qtqml_listmodel_append>`\ (jsobject *dict*)
-  :ref:`clear <sdk_qtqml_listmodel_clear>`\ ()
-  object :ref:`get <sdk_qtqml_listmodel_get>`\ (int *index*)
-  :ref:`insert <sdk_qtqml_listmodel_insert>`\ (int *index*, jsobject *dict*)
-  :ref:`move <sdk_qtqml_listmodel_move>`\ (int *from*, int *to*, int *n*)
-  :ref:`remove <sdk_qtqml_listmodel_remove>`\ (int *index*, int *count*)
-  :ref:`set <sdk_qtqml_listmodel_set>`\ (int *index*, jsobject *dict*)
-  :ref:`setProperty <sdk_qtqml_listmodel_setProperty>`\ (int *index*, string *property*, variant *value*)
-  :ref:`sync <sdk_qtqml_listmodel_sync>`\ ()

Detailed Description
--------------------

The :ref:`ListModel <sdk_qtqml_listmodel>` is a simple container of :ref:`ListElement <sdk_qtqml_listelement>` definitions, each containing data roles. The contents can be defined dynamically, or explicitly in QML.

The number of elements in the model can be obtained from its :ref:`count <sdk_qtqml_listmodel_count>` property. A number of familiar methods are also provided to manipulate the contents of the model, including :ref:`append() <sdk_qtqml_listmodel_append>`, :ref:`insert() <sdk_qtqml_listmodel_insert>`, :ref:`move() <sdk_qtqml_listmodel_move>`, :ref:`remove() <sdk_qtqml_listmodel_remove>` and :ref:`set() <sdk_qtqml_listmodel_set>`. These methods accept dictionaries as their arguments; these are translated to :ref:`ListElement <sdk_qtqml_listelement>` objects by the model.

Elements can be manipulated via the model using the :ref:`setProperty() <sdk_qtqml_listmodel_setProperty>` method, which allows the roles of the specified element to be set and changed.

Example Usage
-------------

The following example shows a :ref:`ListModel <sdk_qtqml_listmodel>` containing three elements, with the roles "name" and "cost".

.. code:: qml

    import QtQuick 2.0
    ListModel {
        id: fruitModel
        ListElement {
            name: "Apple"
            cost: 2.45
        }
        ListElement {
            name: "Orange"
            cost: 3.25
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
    }

Roles (properties) in each element must begin with a lower-case letter and should be common to all elements in a model. The :ref:`ListElement <sdk_qtqml_listelement>` documentation provides more guidelines for how elements should be defined.

Since the example model contains an ``id`` property, it can be referenced by views, such as the ListView in this example:

.. code:: qml

    import QtQuick 2.0
    Rectangle {
        width: 200; height: 200
        ListModel {
            id: fruitModel
            ...
        }
        Component {
            id: fruitDelegate
            Row {
                spacing: 10
                Text { text: name }
                Text { text: '$' + cost }
            }
        }
        ListView {
            anchors.fill: parent
            model: fruitModel
            delegate: fruitDelegate
        }
    }

It is possible for roles to contain list data. In the following example we create a list of fruit attributes:

.. code:: qml

    ListModel {
        id: fruitModel
        ListElement {
            name: "Apple"
            cost: 2.45
            attributes: [
                ListElement { description: "Core" },
                ListElement { description: "Deciduous" }
            ]
        }
        ListElement {
            name: "Orange"
            cost: 3.25
            attributes: [
                ListElement { description: "Citrus" }
            ]
        }
        ListElement {
            name: "Banana"
            cost: 1.95
            attributes: [
                ListElement { description: "Tropical" },
                ListElement { description: "Seedless" }
            ]
        }
    }

The delegate displays all the fruit attributes:

.. code:: qml

    Component {
        id: fruitDelegate
        Item {
            width: 200; height: 50
            Text { id: nameField; text: name }
            Text { text: '$' + cost; anchors.left: nameField.right }
            Row {
                anchors.top: nameField.bottom
                spacing: 5
                Text { text: "Attributes:" }
                Repeater {
                    model: attributes
                    Text { text: description }
                }
            }
        }
    }

Modifying List Models
---------------------

The content of a :ref:`ListModel <sdk_qtqml_listmodel>` may be created and modified using the :ref:`clear() <sdk_qtqml_listmodel_clear>`, :ref:`append() <sdk_qtqml_listmodel_append>`, :ref:`set() <sdk_qtqml_listmodel_set>`, :ref:`insert() <sdk_qtqml_listmodel_insert>` and :ref:`setProperty() <sdk_qtqml_listmodel_setProperty>` methods. For example:

.. code:: qml

        Component {
            id: fruitDelegate
            Item {
                width: 200; height: 50
                Text { text: name }
                Text { text: '$' + cost; anchors.right: parent.right }
                // Double the price when clicked.
                MouseArea {
                    anchors.fill: parent
                    onClicked: fruitModel.setProperty(index, "cost", cost * 2)
                }
            }
        }

Note that when creating content dynamically the set of available properties cannot be changed once set. Whatever properties are first added to the model are the only permitted properties in the model.

Using Threaded List Models with WorkerScript
--------------------------------------------

:ref:`ListModel <sdk_qtqml_listmodel>` can be used together with :ref:`WorkerScript <sdk_qtqml_workerscript>` access a list model from multiple threads. This is useful if list modifications are synchronous and take some time: the list operations can be moved to a different thread to avoid blocking of the main GUI thread.

Here is an example that uses :ref:`WorkerScript <sdk_qtqml_workerscript>` to periodically append the current time to a list model:

.. code:: qml

            Timer {
                id: timer
                interval: 2000; repeat: true
                running: true
                triggeredOnStart: true
                onTriggered: {
                    var msg = {'action': 'appendCurrentTime', 'model': listModel};
                    worker.sendMessage(msg);
                }
            }

The included file, ``dataloader.js``, looks like this:

.. code:: js

    WorkerScript.onMessage = function(msg) {
        if (msg.action == 'appendCurrentTime') {
            var data = {'time': new Date().toTimeString()};
            msg.model.append(data);
            msg.model.sync();   // updates the changes to the list
        }
    }

The timer in the main example sends messages to the worker script by calling :ref:`WorkerScript::sendMessage() <sdk_qtqml_workerscript_sendMessage>`. When this message is received, ``WorkerScript.onMessage()`` is invoked in ``dataloader.js``, which appends the current time to the list model.

Note the call to :ref:`sync() <sdk_qtqml_listmodel_sync>` from the external thread. You must call :ref:`sync() <sdk_qtqml_listmodel_sync>` or else the changes made to the list from that thread will not be reflected in the list model in the main thread.

**See also** Data Models, Qt Quick Examples - Threading, and `Qt QML </sdk/apps/qml/QtQml/qtqml-index/>`_ .

Property Documentation
----------------------

.. _sdk_qtqml_listmodel_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The number of data entries in the model.

.. _sdk_qtqml_listmodel_dynamicRoles:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dynamicRoles : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

By default, the type of a role is fixed the first time the role is used. For example, if you create a role called "data" and assign a number to it, you can no longer assign a string to the "data" role. However, when the dynamicRoles property is enabled, the type of a given role is not fixed and can be different between elements.

The dynamicRoles property must be set before any data is added to the :ref:`ListModel <sdk_qtqml_listmodel>`, and must be set from the main thread.

A :ref:`ListModel <sdk_qtqml_listmodel>` that has data statically defined (via the :ref:`ListElement <sdk_qtqml_listelement>` QML syntax) cannot have the dynamicRoles property enabled.

There is a significant performance cost to using a :ref:`ListModel <sdk_qtqml_listmodel>` with dynamic roles enabled. The cost varies from platform to platform but is typically somewhere between 4-6x slower than using static role types.

Due to the performance cost of using dynamic roles, they are disabled by default.

Method Documentation
--------------------

.. _sdk_qtqml_listmodel_append:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| append(jsobject *dict*)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds a new item to the end of the list model, with the values in *dict*.

.. code:: cpp

    fruitModel.append({"cost": 5.95, "name":"Pizza"})

**See also** :ref:`set() <sdk_qtqml_listmodel_set>` and :ref:`remove() <sdk_qtqml_listmodel_remove>`.

.. _sdk_qtqml_listmodel_clear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clear()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Deletes all content from the model.

**See also** :ref:`append() <sdk_qtqml_listmodel_append>` and :ref:`remove() <sdk_qtqml_listmodel_remove>`.

.. _sdk_qtqml_listmodel_get:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| object get(int *index*)                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the item at *index* in the list model. This allows the item data to be accessed or modified from JavaScript:

.. code:: cpp

    Component.onCompleted: {
        fruitModel.append({"cost": 5.95, "name":"Jackfruit"});
        console.log(fruitModel.get(0).cost);
        fruitModel.get(0).cost = 10.95;
    }

The *index* must be an element in the list.

Note that properties of the returned object that are themselves objects will also be models, and this get() method is used to access elements:

.. code:: cpp

        fruitModel.append(..., "attributes":
            [{"name":"spikes","value":"7mm"},
             {"name":"color","value":"green"}]);
        fruitModel.get(0).attributes.get(1).value; // == "green"

**Warning:** The returned object is not guaranteed to remain valid. It should not be used in `property bindings </sdk/apps/qml/QtQml/qtqml-syntax-propertybinding/>`_ .

**See also** :ref:`append() <sdk_qtqml_listmodel_append>`.

.. _sdk_qtqml_listmodel_insert:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| insert(int *index*, jsobject *dict*)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds a new item to the list model at position *index*, with the values in *dict*.

.. code:: cpp

    fruitModel.insert(2, {"cost": 5.95, "name":"Pizza"})

The *index* must be to an existing item in the list, or one past the end of the list (equivalent to append).

**See also** :ref:`set() <sdk_qtqml_listmodel_set>` and :ref:`append() <sdk_qtqml_listmodel_append>`.

.. _sdk_qtqml_listmodel_move:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| move(int *from*, int *to*, int *n*)                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Moves *n* items *from* one position *to* another.

The from and to ranges must exist; for example, to move the first 3 items to the end of the list:

.. code:: cpp

    fruitModel.move(0, fruitModel.count - 3, 3)

**See also** :ref:`append() <sdk_qtqml_listmodel_append>`.

.. _sdk_qtqml_listmodel_remove:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| remove(int *index*, int *count* = 1)                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Deletes the content at *index* from the model.

**See also** :ref:`clear() <sdk_qtqml_listmodel_clear>`.

.. _sdk_qtqml_listmodel_set:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| set(int *index*, jsobject *dict*)                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Changes the item at *index* in the list model with the values in *dict*. Properties not appearing in *dict* are left unchanged.

.. code:: cpp

    fruitModel.set(3, {"cost": 5.95, "name":"Pizza"})

If *index* is equal to count() then a new item is appended to the list. Otherwise, *index* must be an element in the list.

**See also** :ref:`append() <sdk_qtqml_listmodel_append>`.

.. _sdk_qtqml_listmodel_setProperty:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| setProperty(int *index*, string *property*, variant *value*)                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Changes the *property* of the item at *index* in the list model to *value*.

.. code:: cpp

    fruitModel.setProperty(3, "cost", 5.95)

The *index* must be an element in the list.

**See also** :ref:`append() <sdk_qtqml_listmodel_append>`.

.. _sdk_qtqml_listmodel_sync:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| sync()                                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Writes any unsaved changes to the list model after it has been modified from a worker script.


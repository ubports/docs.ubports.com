.. _sdk_qtqml_listelement:

QtQml ListElement
=================

Defines a data item in a ListModel

+---------------------+---------------------------+
| Import Statement:   | import QtQml.Models 2.1   |
+---------------------+---------------------------+

Detailed Description
--------------------

List elements are defined inside :ref:`ListModel <sdk_qtqml_listmodel>` definitions, and represent items in a list that will be displayed using ListView or Repeater items.

List elements are defined like other QML elements except that they contain a collection of *role* definitions instead of properties. Using the same syntax as property definitions, roles both define how the data is accessed and include the data itself.

The names used for roles must begin with a lower-case letter and should be common to all elements in a given model. Values must be simple constants; either strings (quoted and optionally within a call to QT\_TR\_NOOP), boolean values (true, false), numbers, or enumeration values (such as AlignText.AlignHCenter).

Referencing Roles
-----------------

The role names are used by delegates to obtain data from list elements. Each role name is accessible in the delegate's scope, and refers to the corresponding role in the current element. Where a role name would be ambiguous to use, it can be accessed via the model property (e.g., ``model.cost`` instead of ``cost``).

Example Usage
-------------

The following model defines a series of list elements, each of which contain "name" and "cost" roles and their associated values.

.. code:: qml

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

The delegate obtains the name and cost for each element by simply referring to ``name`` and ``cost``:

.. code:: qml

    ListView {
        anchors.fill: parent
        model: fruitModel
        delegate: Row {
            Text { text: "Fruit: " + name }
            Text { text: "Cost: $" + cost }
        }
    }

**See also** :ref:`ListModel <sdk_qtqml_listmodel>`.

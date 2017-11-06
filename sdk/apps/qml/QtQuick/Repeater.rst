.. _sdk_qtquick_repeater:

QtQuick Repeater
================

Instantiates a number of Item-based components using a provided model

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import QtQuick 2.4                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`Item <sdk_qtquick_item>`                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`count <sdk_qtquick_repeater_count>` : int
-  :ref:`delegate <sdk_qtquick_repeater_delegate>` : Component
-  :ref:`model <sdk_qtquick_repeater_model>` : any

Signals
-------

-  :ref:`itemAdded <sdk_qtquick_repeater_itemAdded>`\ (int *index*, Item *item*)
-  :ref:`itemRemoved <sdk_qtquick_repeater_itemRemoved>`\ (int *index*, Item *item*)

Methods
-------

-  Item :ref:`itemAt <sdk_qtquick_repeater_itemAt>`\ (index)

Detailed Description
--------------------

The Repeater type is used to create a large number of similar items. Like other view types, a Repeater has a :ref:`model <sdk_qtquick_repeater_model>` and a :ref:`delegate <sdk_qtquick_repeater_delegate>`: for each entry in the model, the delegate is instantiated in a context seeded with data from the model. A Repeater item is usually enclosed in a positioner type such as `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_  or `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_  to visually position the multiple delegate items created by the Repeater.

The following Repeater creates three instances of a :ref:`Rectangle <sdk_qtquick_rectangle>` item within a `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ :

.. code:: qml

    import QtQuick 2.0
    Row {
        Repeater {
            model: 3
            Rectangle {
                width: 100; height: 40
                border.width: 1
                color: "yellow"
            }
        }
    }

A Repeater's :ref:`model <sdk_qtquick_repeater_model>` can be any of the supported `data models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ . Additionally, like delegates for other views, a Repeater delegate can access its index within the repeater, as well as the model data relevant to the delegate. See the :ref:`delegate <sdk_qtquick_repeater_delegate>` property documentation for details.

Items instantiated by the Repeater are inserted, in order, as children of the Repeater's parent. The insertion starts immediately after the repeater's position in its parent stacking list. This allows a Repeater to be used inside a layout. For example, the following Repeater's items are stacked between a red rectangle and a blue rectangle:

.. code:: qml

    Row {
        Rectangle { width: 10; height: 20; color: "red" }
        Repeater {
            model: 10
            Rectangle { width: 20; height: 20; radius: 10; color: "green" }
        }
        Rectangle { width: 10; height: 20; color: "blue" }
    }

**Note:** A Repeater item owns all items it instantiates. Removing or dynamically destroying an item created by a Repeater results in unpredictable behavior.

Considerations when using Repeater
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Repeater type creates all of its delegate items when the repeater is first created. This can be inefficient if there are a large number of delegate items and not all of the items are required to be visible at the same time. If this is the case, consider using other view types like :ref:`ListView <sdk_qtquick_listview>` (which only creates delegate items when they are scrolled into view) or use the Dynamic Object Creation methods to create items as they are required.

Also, note that Repeater is :ref:`Item <sdk_qtquick_item>`-based, and can only repeat :ref:`Item <sdk_qtquick_item>`-derived objects. For example, it cannot be used to repeat QtObjects:

.. code:: cpp

    //bad code
    Item {
        Can't repeat QtObject as it doesn't derive from Item.
        Repeater {
            model: 10
            QtObject {}
        }
    }

Property Documentation
----------------------

.. _sdk_qtquick_repeater_count:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| count : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This property holds the number of items in the repeater.

.. _sdk_qtquick_repeater_delegate:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] delegate : Component                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by the repeater.

Delegates are exposed to a read-only ``index`` property that indicates the index of the delegate within the repeater. For example, the following `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes/#text>`_  delegate displays the index of each repeated item:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     Column {                                                                                                                                           |                                                                                                                                                        |
|         Repeater {                                                                                                                                     |                                                                                                                                                        |
|             model: 10                                                                                                                                  |                                                                                                                                                        |
|             Text { text: "I'm item " + index }                                                                                                         |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

If the :ref:`model <sdk_qtquick_repeater_model>` is a `string list </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qstringlist-based-model>`_  or `object list </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qobjectlist-based-model>`_ , the delegate is also exposed to a read-only ``modelData`` property that holds the string or object data. For example:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|     Column {                                                                                                                                           |                                                                                                                                                        |
|         Repeater {                                                                                                                                     |                                                                                                                                                        |
|             model: ["apples", "oranges", "pears"]                                                                                                      |                                                                                                                                                        |
|             Text { text: "Data: " + modelData }                                                                                                        |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
|     }                                                                                                                                                  |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

If the :ref:`model <sdk_qtquick_repeater_model>` is a model object (such as a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ ) the delegate can access all model roles as named properties, in the same way that delegates do for view classes like :ref:`ListView <sdk_qtquick_listview>`.

**See also** `QML Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

.. _sdk_qtquick_repeater_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : any                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The model providing data for the repeater.

This property can be set to any of the supported `data models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ :

-  A number that indicates the number of delegates to be created by the repeater
-  A model (e.g. a `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_  item, or a `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_  subclass)
-  A string list
-  An object list

The type of model affects the properties that are exposed to the :ref:`delegate <sdk_qtquick_repeater_delegate>`.

**See also** `Data Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#qml-data-models>`_ .

Signal Documentation
--------------------

.. _sdk_qtquick_repeater_itemAdded:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemAdded(int *index*, :ref:`Item <sdk_qtquick_item>` *item*)                                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an item is added to the repeater. The *index* parameter holds the index at which the item has been inserted within the repeater, and the *item* parameter holds the :ref:`Item <sdk_qtquick_item>` that has been added.

The corresponding handler is ``onItemAdded``.

.. _sdk_qtquick_repeater_itemRemoved:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| itemRemoved(int *index*, :ref:`Item <sdk_qtquick_item>` *item*)                                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This signal is emitted when an item is removed from the repeater. The *index* parameter holds the index at which the item was removed from the repeater, and the *item* parameter holds the :ref:`Item <sdk_qtquick_item>` that was removed.

Do not keep a reference to *item* if it was created by this repeater, as in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is ``onItemRemoved``.

Method Documentation
--------------------

.. _sdk_qtquick_repeater_:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| :ref:`Item <sdk_qtquick_item>` itemAt(index)                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Returns the :ref:`Item <sdk_qtquick_item>` that has been created at the given *index*, or ``null`` if no item exists at *index*.


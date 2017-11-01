Instantiates a number of Item-based components using a provided model

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import QtQuick 2.4                   |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Item </sdk/apps/qml/QtQuick/Item/>` |
|                                      | __                                   |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`count </sdk/apps/qml/QtQuick/Repeater#count-prop>`__**** : int
-  ****`delegate </sdk/apps/qml/QtQuick/Repeater#delegate-prop>`__**** :
   Component
-  ****`model </sdk/apps/qml/QtQuick/Repeater#model-prop>`__**** : any

Signals
-------

-  ****`itemAdded </sdk/apps/qml/QtQuick/Repeater#itemAdded-signal>`__****\ (int
   *index*, Item *item*)
-  ****`itemRemoved </sdk/apps/qml/QtQuick/Repeater#itemRemoved-signal>`__****\ (int
   *index*, Item *item*)

Methods
-------

-  Item
   ****`itemAt </sdk/apps/qml/QtQuick/Repeater#itemAt-method>`__****\ (index)

Detailed Description
--------------------

The Repeater type is used to create a large number of similar items.
Like other view types, a Repeater has a
`model </sdk/apps/qml/QtQuick/Repeater#model-prop>`__ and a
`delegate </sdk/apps/qml/QtQuick/Repeater#delegate-prop>`__: for each
entry in the model, the delegate is instantiated in a context seeded
with data from the model. A Repeater item is usually enclosed in a
positioner type such as
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__ or
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__ to
visually position the multiple delegate items created by the Repeater.

The following Repeater creates three instances of a
`Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ item within a
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__:

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

|image0|

A Repeater's `model </sdk/apps/qml/QtQuick/Repeater#model-prop>`__ can
be any of the supported `data
models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__.
Additionally, like delegates for other views, a Repeater delegate can
access its index within the repeater, as well as the model data relevant
to the delegate. See the
`delegate </sdk/apps/qml/QtQuick/Repeater#delegate-prop>`__ property
documentation for details.

Items instantiated by the Repeater are inserted, in order, as children
of the Repeater's parent. The insertion starts immediately after the
repeater's position in its parent stacking list. This allows a Repeater
to be used inside a layout. For example, the following Repeater's items
are stacked between a red rectangle and a blue rectangle:

.. code:: qml

    Row {
        Rectangle { width: 10; height: 20; color: "red" }
        Repeater {
            model: 10
            Rectangle { width: 20; height: 20; radius: 10; color: "green" }
        }
        Rectangle { width: 10; height: 20; color: "blue" }
    }

|image1|

**Note:** A Repeater item owns all items it instantiates. Removing or
dynamically destroying an item created by a Repeater results in
unpredictable behavior.

Considerations when using Repeater
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Repeater type creates all of its delegate items when the repeater is
first created. This can be inefficient if there are a large number of
delegate items and not all of the items are required to be visible at
the same time. If this is the case, consider using other view types like
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ (which only creates
delegate items when they are scrolled into view) or use the Dynamic
Object Creation methods to create items as they are required.

Also, note that Repeater is
`Item </sdk/apps/qml/QtQuick/Item/>`__-based, and can only repeat
`Item </sdk/apps/qml/QtQuick/Item/>`__-derived objects. For example, it
cannot be used to repeat QtObjects:

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

+--------------------------------------------------------------------------+
|        \ count : int                                                     |
+--------------------------------------------------------------------------+

This property holds the number of items in the repeater.

| 

+--------------------------------------------------------------------------+
|        \ [default] delegate : Component                                  |
+--------------------------------------------------------------------------+

The delegate provides a template defining each item instantiated by the
repeater.

Delegates are exposed to a read-only ``index`` property that indicates
the index of the delegate within the repeater. For example, the
following `Text </sdk/apps/qml/QtQuick/qtquick-releasenotes#text>`__
delegate displays the index of each repeated item:

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image2|                             |
|                                      |                                      |
|     Column {                         |                                      |
|         Repeater {                   |                                      |
|             model: 10                |                                      |
|             Text { text: "I'm item " |                                      |
|  + index }                           |                                      |
|         }                            |                                      |
|     }                                |                                      |
+--------------------------------------+--------------------------------------+

If the `model </sdk/apps/qml/QtQuick/Repeater#model-prop>`__ is a
`string
list </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels#qstringlist-based-model>`__
or `object
list </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels#qobjectlist-based-model>`__,
the delegate is also exposed to a read-only ``modelData`` property that
holds the string or object data. For example:

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image3|                             |
|                                      |                                      |
|     Column {                         |                                      |
|         Repeater {                   |                                      |
|             model: ["apples", "orang |                                      |
| es", "pears"]                        |                                      |
|             Text { text: "Data: " +  |                                      |
| modelData }                          |                                      |
|         }                            |                                      |
|     }                                |                                      |
+--------------------------------------+--------------------------------------+

If the `model </sdk/apps/qml/QtQuick/Repeater#model-prop>`__ is a model
object (such as a
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__)
the delegate can access all model roles as named properties, in the same
way that delegates do for view classes like
`ListView </sdk/apps/qml/QtQuick/ListView/>`__.

**See also** `QML Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__.

| 

+--------------------------------------------------------------------------+
|        \ model : any                                                     |
+--------------------------------------------------------------------------+

The model providing data for the repeater.

This property can be set to any of the supported `data
models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__:

-  A number that indicates the number of delegates to be created by the
   repeater
-  A model (e.g. a
   `ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#listmodel>`__
   item, or a
   `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels#qabstractitemmodel>`__
   subclass)
-  A string list
-  An object list

The type of model affects the properties that are exposed to the
`delegate </sdk/apps/qml/QtQuick/Repeater#delegate-prop>`__.

**See also** `Data
Models </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview#qml-data-models>`__.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ itemAdded(int *index*, `Item </sdk/apps/qml/QtQuick/Item/>`__   |
| *item*)                                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when an item is added to the repeater. The
*index* parameter holds the index at which the item has been inserted
within the repeater, and the *item* parameter holds the
`Item </sdk/apps/qml/QtQuick/Item/>`__ that has been added.

The corresponding handler is ``onItemAdded``.

| 

+--------------------------------------------------------------------------+
|        \ itemRemoved(int *index*, `Item </sdk/apps/qml/QtQuick/Item/>`__ |
| *item*)                                                                  |
+--------------------------------------------------------------------------+

This signal is emitted when an item is removed from the repeater. The
*index* parameter holds the index at which the item was removed from the
repeater, and the *item* parameter holds the
`Item </sdk/apps/qml/QtQuick/Item/>`__ that was removed.

Do not keep a reference to *item* if it was created by this repeater, as
in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is ``onItemRemoved``.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ `Item </sdk/apps/qml/QtQuick/Item/>`__ itemAt(index)            |
+--------------------------------------------------------------------------+

Returns the `Item </sdk/apps/qml/QtQuick/Item/>`__ that has been created
at the given *index*, or ``null`` if no item exists at *index*.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/Repeater/images/repeater-simple.png
.. |image1| image:: /media/sdk/apps/qml/QtQuick/Repeater/images/repeater.png
.. |image2| image:: /media/sdk/apps/qml/QtQuick/Repeater/images/repeater-index.png
.. |image3| image:: /media/sdk/apps/qml/QtQuick/Repeater/images/repeater-modeldata.png


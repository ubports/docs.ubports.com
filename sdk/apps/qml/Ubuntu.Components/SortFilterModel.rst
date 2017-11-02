.. _sdk_ubuntu_components_sortfiltermodel:
Ubuntu.Components SortFilterModel
=================================

SortFilterModel sorts and filters rows from an existing model.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`filter.pattern <sdk_ubuntu_components_sortfiltermodel_filter.pattern-prop>`
   : string
-  :ref:`filter.property <sdk_ubuntu_components_sortfiltermodel_filter.property-prop>`
   : string
-  :ref:`model <sdk_ubuntu_components_sortfiltermodel_model-prop>`
   : QAbstractItemModel
-  :ref:`sort.order <sdk_ubuntu_components_sortfiltermodel_sort.order-prop>`
   : string
-  :ref:`sort.property <sdk_ubuntu_components_sortfiltermodel_sort.property-prop>`
   : string

Detailed Description
--------------------

The :ref:`SortFilterModel <sdk_ubuntu_components_sortfiltermodel>` takes an
existing model such as a
`ListModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-modelview/#listmodel>`_ 
or any
`QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ 
implementation. The original rows and role names show up in the
:ref:`SortFilterModel <sdk_ubuntu_components_sortfiltermodel>` with two
basic differences. For one if
:ref:`sort.property <sdk_ubuntu_components_sortfiltermodel#sort.property-prop>`
is set all rows will be sorted. Further more if
:ref:`filter.property <sdk_ubuntu_components_sortfiltermodel#filter.property-prop>`
is set only rows matching the filter will be in the model.

Example usage:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    import Ubuntu.Components.ListItems 1.1
    MainView {
        width: units.gu(80)
        height: units.gu(40)
        ListModel {
            id: movies
            ListElement {
                title: "Esign"
                producer: "Chris Larkee"
            }
            ListElement {
                title: "Elephants Dream"
                producer: "Blender"
            }
            ListElement {
                title: "Big Buck Bunny"
                producer: "Blender"
            }
        }
        SortFilterModel {
            id: sortedMovies
            model: movies
            sort.property: "title"
            sort.order: Qt.DescendingOrder
            // case insensitive sorting
            sortCaseSensitivity: Qt.CaseInsensitive
            filter.property: "producer"
            filter.pattern: /blender/
        }
        ListView {
            model: sortedMovies
            anchors.fill: parent
            delegate: Subtitled {
                text: title
                subText: producer
            }
            section.delegate: ListItem.Header { text: i18n.tr(section) }
            section.property: "title"
            section.criteria: ViewSection.FirstCharacter
        }
    }

Pay attention to the differences between the original model and the
result:

-  Big Buck Bunny will be the first row, because it's sorted by title
-  Esign won't be visible, because it's from the wrong producer

Property Documentation
----------------------

.. _sdk_ubuntu_components_sortfiltermodel_filter.pattern-prop:

+--------------------------------------------------------------------------+
|        \ filter.pattern : string                                         |
+--------------------------------------------------------------------------+

The pattern all rows must match, if
:ref:`filter.property <sdk_ubuntu_components_sortfiltermodel#filter.property-prop>`
is set.

Some examples:

-  /possible/ matches anywhere in a word, so both "impossible" and
   "possible".
-  /^sign/ matches "sign". But not "assignment" because ^ means start.
-  /vest$/ matches "safety vest" and "vest" but not "vested".

For more advanced uses it's recommended to read up on Javascript regular
expressions.

| 

.. _sdk_ubuntu_components_sortfiltermodel_filter.property-prop:

+--------------------------------------------------------------------------+
|        \ filter.property : string                                        |
+--------------------------------------------------------------------------+

If set to a valid role name, only rows matching
:ref:`filter.pattern <sdk_ubuntu_components_sortfiltermodel#filter.pattern-prop>`
will be in the model.

| 

.. _sdk_ubuntu_components_sortfiltermodel_model-prop:

+--------------------------------------------------------------------------+
|        \ model : QAbstractItemModel                                      |
+--------------------------------------------------------------------------+

The source model to sort and/ or filter.

| 

.. _sdk_ubuntu_components_sortfiltermodel_sort.order-prop:

+--------------------------------------------------------------------------+
|        \ sort.order : string                                             |
+--------------------------------------------------------------------------+

The order, if
:ref:`sort.property <sdk_ubuntu_components_sortfiltermodel#sort.property-prop>`
is set. Qt::AscendingOrder sorts results from A to Z or 0 to 9.
Qt::DescendingOrder sorts results from Z to A or 9 to 0.

| 

.. _sdk_ubuntu_components_sortfiltermodel_sort.property-prop:

+--------------------------------------------------------------------------+
|        \ sort.property : string                                          |
+--------------------------------------------------------------------------+

If set to a valid role name, all rows will be sorted according to
:ref:`sort.order <sdk_ubuntu_components_sortfiltermodel#sort.order-prop>`.

| 

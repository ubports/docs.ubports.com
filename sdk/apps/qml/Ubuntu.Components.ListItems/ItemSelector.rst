.. _sdk_ubuntu_components_listitems_itemselector:

Ubuntu.Components.ListItems ItemSelector
========================================

ListItem displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.ListItems 1.3                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `Empty </sdk/apps/qml/Ubuntu.Components/ListItems.Empty/>`_                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  `colourImage </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#colourImage-prop>`_  : bool
-  `containerHeight </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#containerHeight-prop>`_  : real
-  `currentlyExpanded </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#currentlyExpanded-prop>`_  : bool
-  `delegate </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#delegate-prop>`_  : Component
-  `expanded </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#expanded-prop>`_  : bool
-  `itemHeight </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#itemHeight-prop>`_  : real
-  `model </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#model-prop>`_  : var
-  `multiSelection </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#multiSelection-prop>`_  : bool
-  `selectedIndex </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#selectedIndex-prop>`_  : int

Signals
-------

-  `delegateClicked </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#delegateClicked-signal>`_ \ (int *index*)
-  `expansionCompleted </sdk/apps/qml/Ubuntu.Components/ListItems.ItemSelector/#expansionCompleted-signal>`_ \ ()

Detailed Description
--------------------

Examples:

.. code:: qml

    import Ubuntu.Components.ListItems 1.3 as ListItem
    Column {
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: units.gu(3)
        ListItem.ItemSelector {
            text: i18n.tr("Label")
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4")]
        }
        ListItem.ItemSelector {
            text: i18n.tr("Label")
            expanded: true
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4")]
        }
        ListItem.ItemSelector {
            text: i18n.tr("Multiple Selection")
            alwaysExpanded: false
            expanded: true
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4")]
        }
        ListItem.ItemSelector {
            text: i18n.tr("Label")
            model: customModel
            expanded: true
            colourImage: true
            delegate: selectorDelegate
        }
        Component {
            id: selectorDelegate
            OptionSelectorDelegate { text: name; subText: description; iconSource: image }
        }
        ListModel {
            id: customModel
            ListElement { name: "Name 1"; description: "Description 1"; image: "images.png" }
            ListElement { name: "Name 2"; description: "Description 2"; image: "images.png" }
            ListElement { name: "Name 3"; description: "Description 3"; image: "images.png" }
            ListElement { name: "Name 4"; description: "Description 4"; image: "images.png" }
        }
        ListItem.ItemSelector {
            text: i18n.tr("Label")
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4"),
                    i18n.tr("Value 5"),
                    i18n.tr("Value 6"),
                    i18n.tr("Value 7"),
                    i18n.tr("Value 8")]
            containerHeight: itemHeight * 4
        }
        ListItem.ItemSelector {
            text: i18n.tr("Label")
            expanded: true
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4"),
                    i18n.tr("Value 5"),
                    i18n.tr("Value 6"),
                    i18n.tr("Value 7"),
                    i18n.tr("Value 8")]
            containerHeight: itemHeight * 4
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitems_itemselector_colourImage:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| colourImage : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Colours image according to the fieldText colour of the theme, otherwise source colour is maintained.

.. _sdk_ubuntu_components_listitems_itemselector_containerHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| containerHeight : real                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Custom height for list container which allows scrolling inside the selector.

.. _sdk_ubuntu_components_listitems_itemselector_currentlyExpanded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentlyExpanded : bool                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Is our list currently expanded?

.. _sdk_ubuntu_components_listitems_itemselector_delegate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegate : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

:ref:`ListView <sdk_qtquick_listview>` delegate.

.. _sdk_ubuntu_components_listitems_itemselector_expanded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expanded : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies whether the list is always expanded.

.. _sdk_ubuntu_components_listitems_itemselector_itemHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] itemHeight : real                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Height of an individual list item.

.. _sdk_ubuntu_components_listitems_itemselector_model:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| model : `var <http://doc.qt.io/qt-5/qml-var.html>`_                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The list of values that will be shown under the label text. This is a model.

.. _sdk_ubuntu_components_listitems_itemselector_multiSelection:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| multiSelection : bool                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

If multiple choice selection is enabled the list is always expanded.

.. _sdk_ubuntu_components_listitems_itemselector_selectedIndex:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectedIndex : int                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The index of the currently selected element in our list.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_listitems_itemselector_delegateClicked:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| delegateClicked(int *index*)                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Called when delegate is clicked.

.. _sdk_ubuntu_components_listitems_itemselector_expansionCompleted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expansionCompleted()                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Called when the selector has finished expanding or collapsing.


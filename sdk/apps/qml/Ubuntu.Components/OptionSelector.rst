Component displaying either a single selected value or expanded multiple
choice with an optional image and subtext when not expanded, when
expanding it opens a listing of all the possible values for selection
with an additional option of always being expanded. If multiple choice
is selected the list is expanded automatically.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `Empty </sdk/apps/qml/Ubuntu.Compone |
|                                      | nts/ListItems.Empty/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`colourImage </sdk/apps/qml/Ubuntu.Components/OptionSelector#colourImage-prop>`__****
   : bool
-  ****`containerHeight </sdk/apps/qml/Ubuntu.Components/OptionSelector#containerHeight-prop>`__****
   : real
-  ****`currentlyExpanded </sdk/apps/qml/Ubuntu.Components/OptionSelector#currentlyExpanded-prop>`__****
   : bool
-  ****`delegate </sdk/apps/qml/Ubuntu.Components/OptionSelector#delegate-prop>`__****
   : Component
-  ****`expanded </sdk/apps/qml/Ubuntu.Components/OptionSelector#expanded-prop>`__****
   : bool
-  ****`itemHeight </sdk/apps/qml/Ubuntu.Components/OptionSelector#itemHeight-prop>`__****
   : real
-  ****`model </sdk/apps/qml/Ubuntu.Components/OptionSelector#model-prop>`__****
   : var
-  ****`multiSelection </sdk/apps/qml/Ubuntu.Components/OptionSelector#multiSelection-prop>`__****
   : bool
-  ****`selectedIndex </sdk/apps/qml/Ubuntu.Components/OptionSelector#selectedIndex-prop>`__****
   : int

Signals
-------

-  ****`delegateClicked </sdk/apps/qml/Ubuntu.Components/OptionSelector#delegateClicked-signal>`__****\ (int
   *index*)
-  ****`expansionCompleted </sdk/apps/qml/Ubuntu.Components/OptionSelector#expansionCompleted-signal>`__****\ ()

Detailed Description
--------------------

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    Column {
        spacing: units.gu(3)
        OptionSelector {
            text: i18n.tr("Label")
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4")]
        }
        OptionSelector {
            text: i18n.tr("Label")
            expanded: true
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4")]
        }
        OptionSelector {
            objectName: "optionselector_multipleselection"
            text: i18n.tr("Multiple Selection")
            expanded: false
            multiSelection: true
            model: [i18n.tr("Value 1"),
                    i18n.tr("Value 2"),
                    i18n.tr("Value 3"),
                    i18n.tr("Value 4")]
        }
        OptionSelector {
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
        OptionSelector {
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
        OptionSelector {
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

+--------------------------------------------------------------------------+
|        \ colourImage : bool                                              |
+--------------------------------------------------------------------------+

Colours image according to the fieldText colour of the theme, otherwise
source colour is maintained.

| 

+--------------------------------------------------------------------------+
|        \ containerHeight : real                                          |
+--------------------------------------------------------------------------+

Custom height for list container which allows scrolling inside the
selector.

| 

+--------------------------------------------------------------------------+
|        \ currentlyExpanded : bool                                        |
+--------------------------------------------------------------------------+

Is our list currently expanded?

| 

+--------------------------------------------------------------------------+
|        \ delegate : `Component </sdk/apps/qml/QtQml/Component/>`__       |
+--------------------------------------------------------------------------+

`ListView </sdk/apps/qml/QtQuick/ListView/>`__ delegate.

| 

+--------------------------------------------------------------------------+
|        \ expanded : bool                                                 |
+--------------------------------------------------------------------------+

Specifies whether the list is always expanded.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] itemHeight : real                                   |
+--------------------------------------------------------------------------+

Height of an individual list item.

| 

+--------------------------------------------------------------------------+
|        \ model : `var <http://doc.qt.io/qt-5/qml-var.html>`__            |
+--------------------------------------------------------------------------+

The list of values that will be shown under the label text. This is a
model.

| 

+--------------------------------------------------------------------------+
|        \ multiSelection : bool                                           |
+--------------------------------------------------------------------------+

If the multiple choice selection is enabled the list is always expanded.

| 

+--------------------------------------------------------------------------+
|        \ selectedIndex : int                                             |
+--------------------------------------------------------------------------+

The index of the currently selected element in our list.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ delegateClicked(int *index*)                                    |
+--------------------------------------------------------------------------+

Called when delegate is clicked.

| 

+--------------------------------------------------------------------------+
|        \ expansionCompleted()                                            |
+--------------------------------------------------------------------------+

Called when the selector has finished expanding or collapsing.

| 

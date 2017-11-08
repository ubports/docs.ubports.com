.. _sdk_ubuntu_components_adaptivepagelayout:

Ubuntu.Components AdaptivePageLayout
====================================

View with multiple columns of Pages.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.3          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`asynchronous <sdk_ubuntu_components_adaptivepagelayout_asynchronous>` : bool
-  :ref:`columns <sdk_ubuntu_components_adaptivepagelayout_columns>` : int
-  :ref:`layouts <sdk_ubuntu_components_adaptivepagelayout_layouts>` : PageColumnsLayout
-  :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>` : Page
-  :ref:`primaryPageSource <sdk_ubuntu_components_adaptivepagelayout_primaryPageSource>` : var

Methods
-------

-  :ref:`addPageToCurrentColumn <sdk_ubuntu_components_adaptivepagelayout_addPageToCurrentColumn>`\ (*sourcePage*, *page*, *properties*)
-  :ref:`addPageToNextColumn <sdk_ubuntu_components_adaptivepagelayout_addPageToNextColumn>`\ (*sourcePage*, *page*, *properties*)
-  :ref:`removePages <sdk_ubuntu_components_adaptivepagelayout_removePages>`\ (*page*)

Detailed Description
--------------------

The component provides a flexible way of viewing a stack of pages in one or more columns. Unlike in :ref:`PageStack <sdk_ubuntu_components_pagestack>`, there can be more than one Page active at a time, depending on the number of the columns in the view.

:ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` stores pages added in a tree. Pages are added relative to a given page, either as sibling (:ref:`addPageToCurrentColumn <sdk_ubuntu_components_adaptivepagelayout_addPageToCurrentColumn>`) or as child (:ref:`addPageToNextColumn <sdk_ubuntu_components_adaptivepagelayout_addPageToNextColumn>`). This means that removing a non-leaf page from the Page tree will remove all its children from the page tree.

The columns are populated from left to right. The column a page is added to is detected based on the source page that is given to the functions adding the page. The pages can be added either to the same column the source page resides or to the column next to the source page. Giving a null value to the source page will add the page to the leftmost column of the view.

The primary page, the very first page must be specified either through the :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>` or :ref:`primaryPageSource <sdk_ubuntu_components_adaptivepagelayout_primaryPageSource>` properties. :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>` can only hold a Page instance, :ref:`primaryPageSource <sdk_ubuntu_components_adaptivepagelayout_primaryPageSource>` can either be a Component or a url to a document defining a Page. :ref:`primaryPageSource <sdk_ubuntu_components_adaptivepagelayout_primaryPageSource>` has precedence over :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>`, and when set it will report the loaded Page through :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>` property, and will replace any value set into that property.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(100)
        height: units.gu(60)
        AdaptivePageLayout {
            anchors.fill: parent
            primaryPage: page1
            Page {
                id: page1
                header: PageHeader {
                    id: header
                    title: "Main Page"
                }
                Column {
                    anchors.top: header.bottom
                    Button {
                        text: "Add Page2 above " + page1.title
                        onClicked: page1.pageStack.addPageToCurrentColumn(page1, page2)
                    }
                    Button {
                        text: "Add Page3 next to " + page1.title
                        onClicked: page1.pageStack.addPageToNextColumn(page1, page3)
                    }
                }
            }
            Page {
                id: page2
                header: PageHeader {
                    title: "Page #2"
                }
            }
            Page {
                id: page3
                header: PageHeader {
                    title: "Page #3"
                }
            }
        }
    }

**Note:** Observe the use of the ``Page::pageStack`` property in the example above. The same property is used to share the :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` instance the Page is used in, therefore the same page can be used in a :ref:`PageStack <sdk_ubuntu_components_pagestack>` or in an :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>`. However implementations must make sure the desired :ref:`PageStack <sdk_ubuntu_components_pagestack>` or :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` function exists in the instance before using it.

:ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` supports adaptive column handling. When the number of columns changes at runtime the pages are automatically rearranged.

By default the component splits the layout in two columns when the width of the layout exceeds 80 grid units. The first column is sized to 40 grid unit width and the second one to fill the rest of the remaining space. When the 80 grid unit breakpoint is reached, the component will switch from one column to two, and vice versa. These defaults can be overridden through the :ref:`layouts <sdk_ubuntu_components_adaptivepagelayout_layouts>` property by defining the possible layouts, their column sizing and the breakpoints when the layouts should be activated. :ref:`PageColumn <sdk_ubuntu_components_pagecolumn>` configurations must appear in the same order (from left to right) as the columns appear in the layout. If none of the layouts condition is met, a one column layout will be used.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(100)
        height: units.gu(60)
        AdaptivePageLayout {
            anchors.fill: parent
            primaryPageSource: page1Component
            layouts: PageColumnsLayout {
                when: width > units.gu(80)
                // column #0
                PageColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(60)
                    preferredWidth: units.gu(40)
                }
                // column #1
                PageColumn {
                    fillWidth: true
                }
            }
            Component {
                id: page1Component
                Page {
                    id: page1
                    header: PageHeader {
                        id: header
                        title: "Main page"
                    }
                    Column {
                        anchors.top: header.bottom
                        Button {
                            text: "Add Page2 above " + page1.title
                            onClicked: page1.pageStack.addPageToCurrentColumn(page1, page2)
                        }
                        Button {
                            text: "Add Page3 next to " + page1.title
                            onClicked: page1.pageStack.addPageToNextColumn(page1, page3)
                        }
                    }
                }
            }
            Page {
                id: page2
                header: PageHeader {
                    title: "Page #2"
                }
            }
            Page {
                id: page3
                header: PageHeader {
                    title: "Page #3"
                }
            }
        }
    }

A column is considered to be resizable if the :ref:`PageColumn::minimumWidth <sdk_ubuntu_components_pagecolumn_minimumWidth>` and :ref:`PageColumn::maximumWidth <sdk_ubuntu_components_pagecolumn_maximumWidth>` configuration differs. This implies that if a column is not meant to be resized, it should have :ref:`PageColumn::minimumWidth <sdk_ubuntu_components_pagecolumn_minimumWidth>` and :ref:`PageColumn::maximumWidth <sdk_ubuntu_components_pagecolumn_maximumWidth>` set to the same value. In the example above, the first column can be resized to a minimum of 30, and a maximum of 60 grid units, and the preferred width is set to 40 grid units. This width is set every time the layout is activated.

When a :ref:`Page <sdk_ubuntu_components_page>` with the :ref:`Page::header <sdk_ubuntu_components_page_header>` property set is added to an :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>`, the :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` will synchronize the height of that header with the height of the headers in other columns, i.e., the height of each of the headers will be set to the maximum implicitHeight of all the headers.

**See also** :ref:`PageStack <sdk_ubuntu_components_pagestack>`, :ref:`PageColumnsLayout <sdk_ubuntu_components_pagecolumnslayout>`, and :ref:`PageColumn <sdk_ubuntu_components_pagecolumn>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_adaptivepagelayout_asynchronous:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| asynchronous : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property drives the way the pages should be loaded, synchronously or asynchronously. Defaults to true.

.. _sdk_ubuntu_components_adaptivepagelayout_columns:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] columns : int                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the number of columns shown in the layout.

.. _sdk_ubuntu_components_adaptivepagelayout_layouts:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layouts : :ref:`PageColumnsLayout <sdk_ubuntu_components_pagecolumnslayout>`                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the different layout configurations overriding the default configurations. Defaults to an empty list.

**See also** :ref:`PageColumnsLayout <sdk_ubuntu_components_pagecolumnslayout>`.

.. _sdk_ubuntu_components_adaptivepagelayout_primaryPage:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| primaryPage : :ref:`Page <sdk_ubuntu_components_page>`                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the first Page which will be added to the view. If the view has more than one column, the page will be added to the leftmost column. The property can only hold a Page instance. When changed runtime (not by the :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` component itself), the :ref:`primaryPageSource <sdk_ubuntu_components_adaptivepagelayout_primaryPageSource>` property will be reset.

.. _sdk_ubuntu_components_adaptivepagelayout_primaryPageSource:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| primaryPageSource : `var <http://doc.qt.io/qt-5/qml-var.html>`_                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property specifies the source of the :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>` in case the primary page is created from a Component or loaded from an external document. It has precedence over :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>`.

Method Documentation
--------------------

.. _sdk_ubuntu_components_adaptivepagelayout_addPageToCurrentColumn:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addPageToCurrentColumn( *sourcePage*, *page*, *properties*)                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Adds a ``page`` to the column the ``sourcePage`` resides in and removes all pages from the higher columns. ``page`` can be a Component or a file. ``properties`` is a JSON object containing properties to be set when page is created. ``sourcePage`` must be active.

The function creates the new page asynchronously if the new ``page`` to be added is a Component or a QML document and the :ref:`asynchronous <sdk_ubuntu_components_adaptivepagelayout_asynchronous>` property is set to true. In this case the function returns an incubator which can be used to track the page creation. For more about incubation in QML and creating components asynchronously, see :ref:`Component.incubateObject() <sdk_qtqml_component_incubateObject>`. The following example removes an element from the list model whenever the page opened in the second column is closed. Note, the example must be run on desktop or on a device with at least 90 grid units screen width.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(90)
        height: units.gu(70)
        Component {
            id: page2Component
            Page {
                header: PageHeader {
                    id: header
                    title: "Second Page"
                }
                Button {
                    anchors.top: header.bottom
                    text: "Close me"
                    onClicked: pageStack.removePages(pageStack.primaryPage);
                }
            }
        }
        AdaptivePageLayout {
            id: pageLayout
            anchors.fill: parent
            primaryPage: Page {
                header: PageHeader {
                    title: "Primary Page"
                    flickable: listView
                }
                ListView {
                    id: listView
                    anchors.fill: parent
                    model: 10
                    delegate: ListItem {
                        Label { text: modelData }
                        onClicked: {
                            var incubator = pageLayout.addPageToNextColumn(pageLayout.primaryPage, page2Component);
                            if (incubator && incubator.status == Component.Loading) {
                                incubator.onStatusChanged = function(status) {
                                    if (status == Component.Ready) {
                                        // connect page's destruction to decrement model
                                        incubator.object.Component.destruction.connect(function() {
                                            listView.model--;
                                        });
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

**See also** :ref:`Component.incubateObject <sdk_qtqml_component_incubateObject>`.

.. _sdk_ubuntu_components_adaptivepagelayout_addPageToNextColumn:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| addPageToNextColumn( *sourcePage*, *page*, *properties*)                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Remove all previous pages from the next column (relative to the column that holds ``sourcePage``) and all following columns, and then add ``page`` to the next column. If ``sourcePage`` is located in the rightmost column, the new page will be pushed to the same column as ``sourcePage``. The return value is the same as in :ref:`addPageToCurrentColumn <sdk_ubuntu_components_adaptivepagelayout_addPageToCurrentColumn>` case.

.. _sdk_ubuntu_components_adaptivepagelayout_removePages:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| removePages( *page*)                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The function removes and deletes all pages up to and including ``page`` is reached. If the *page* is the same as the :ref:`primaryPage <sdk_ubuntu_components_adaptivepagelayout_primaryPage>`, only its child pages will be removed.


View with multiple columns of Pages.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.3          |
+---------------------+--------------------------------+

Properties
----------

-  ****`asynchronous </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#asynchronous-prop>`__****
   : bool
-  ****`columns </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#columns-prop>`__****
   : int
-  ****`layouts </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#layouts-prop>`__****
   : PageColumnsLayout
-  ****`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__****
   : Page
-  ****`primaryPageSource </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPageSource-prop>`__****
   : var

Methods
-------

-  ****`addPageToCurrentColumn </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#addPageToCurrentColumn-method>`__****\ (*sourcePage*,
   *page*, *properties*)
-  ****`addPageToNextColumn </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#addPageToNextColumn-method>`__****\ (*sourcePage*,
   *page*, *properties*)
-  ****`removePages </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#removePages-method>`__****\ (*page*)

Detailed Description
--------------------

The component provides a flexible way of viewing a stack of pages in one
or more columns. Unlike in
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__, there can be
more than one Page active at a time, depending on the number of the
columns in the view.

`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
stores pages added in a tree. Pages are added relative to a given page,
either as sibling
(`addPageToCurrentColumn </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#addPageToCurrentColumn-method>`__)
or as child
(`addPageToNextColumn </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#addPageToNextColumn-method>`__).
This means that removing a non-leaf page from the Page tree will remove
all its children from the page tree.

The columns are populated from left to right. The column a page is added
to is detected based on the source page that is given to the functions
adding the page. The pages can be added either to the same column the
source page resides or to the column next to the source page. Giving a
null value to the source page will add the page to the leftmost column
of the view.

The primary page, the very first page must be specified either through
the
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__
or
`primaryPageSource </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPageSource-prop>`__
properties.
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__
can only hold a Page instance,
`primaryPageSource </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPageSource-prop>`__
can either be a Component or a url to a document defining a Page.
`primaryPageSource </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPageSource-prop>`__
has precedence over
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__,
and when set it will report the loaded Page through
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__
property, and will replace any value set into that property.

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

**Note:** Observe the use of the ``Page::pageStack`` property in the
example above. The same property is used to share the
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
instance the Page is used in, therefore the same page can be used in a
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ or in an
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__.
However implementations must make sure the desired
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ or
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
function exists in the instance before using it.

`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
supports adaptive column handling. When the number of columns changes at
runtime the pages are automatically rearranged.

By default the component splits the layout in two columns when the width
of the layout exceeds 80 grid units. The first column is sized to 40
grid unit width and the second one to fill the rest of the remaining
space. When the 80 grid unit breakpoint is reached, the component will
switch from one column to two, and vice versa. These defaults can be
overridden through the
`layouts </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#layouts-prop>`__
property by defining the possible layouts, their column sizing and the
breakpoints when the layouts should be activated.
`PageColumn </sdk/apps/qml/Ubuntu.Components/PageColumn/>`__
configurations must appear in the same order (from left to right) as the
columns appear in the layout. If none of the layouts condition is met, a
one column layout will be used.

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

A column is considered to be resizable if the
`PageColumn::minimumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#minimumWidth-prop>`__
and
`PageColumn::maximumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#maximumWidth-prop>`__
configuration differs. This implies that if a column is not meant to be
resized, it should have
`PageColumn::minimumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#minimumWidth-prop>`__
and
`PageColumn::maximumWidth </sdk/apps/qml/Ubuntu.Components/PageColumn#maximumWidth-prop>`__
set to the same value. In the example above, the first column can be
resized to a minimum of 30, and a maximum of 60 grid units, and the
preferred width is set to 40 grid units. This width is set every time
the layout is activated.

When a `Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ with the
`Page::header </sdk/apps/qml/Ubuntu.Components/Page#header-prop>`__
property set is added to an
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__,
the
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
will synchronize the height of that header with the height of the
headers in other columns, i.e., the height of each of the headers will
be set to the maximum implicitHeight of all the headers.

**See also** `PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__,
`PageColumnsLayout </sdk/apps/qml/Ubuntu.Components/PageColumnsLayout/>`__,
and `PageColumn </sdk/apps/qml/Ubuntu.Components/PageColumn/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ asynchronous : bool                                             |
+--------------------------------------------------------------------------+

The property drives the way the pages should be loaded, synchronously or
asynchronously. Defaults to true.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] columns : int                                       |
+--------------------------------------------------------------------------+

The property holds the number of columns shown in the layout.

| 

+--------------------------------------------------------------------------+
|        \ layouts :                                                       |
| `PageColumnsLayout </sdk/apps/qml/Ubuntu.Components/PageColumnsLayout/>` |
| __                                                                       |
+--------------------------------------------------------------------------+

The property holds the different layout configurations overriding the
default configurations. Defaults to an empty list.

**See also**
`PageColumnsLayout </sdk/apps/qml/Ubuntu.Components/PageColumnsLayout/>`__.

| 

+--------------------------------------------------------------------------+
|        \ primaryPage : `Page </sdk/apps/qml/Ubuntu.Components/Page/>`__  |
+--------------------------------------------------------------------------+

The property holds the first Page which will be added to the view. If
the view has more than one column, the page will be added to the
leftmost column. The property can only hold a Page instance. When
changed runtime (not by the
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
component itself), the
`primaryPageSource </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPageSource-prop>`__
property will be reset.

| 

+--------------------------------------------------------------------------+
|        \ primaryPageSource :                                             |
| `var <http://doc.qt.io/qt-5/qml-var.html>`__                             |
+--------------------------------------------------------------------------+

The property specifies the source of the
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__
in case the primary page is created from a Component or loaded from an
external document. It has precedence over
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__.

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ addPageToCurrentColumn( *sourcePage*, *page*, *properties*)     |
+--------------------------------------------------------------------------+

Adds a ``page`` to the column the ``sourcePage`` resides in and removes
all pages from the higher columns. ``page`` can be a Component or a
file. ``properties`` is a JSON object containing properties to be set
when page is created. ``sourcePage`` must be active.

The function creates the new page asynchronously if the new ``page`` to
be added is a Component or a QML document and the
`asynchronous </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#asynchronous-prop>`__
property is set to true. In this case the function returns an incubator
which can be used to track the page creation. For more about incubation
in QML and creating components asynchronously, see
`Component.incubateObject() </sdk/apps/qml/QtQml/Component#incubateObject-method>`__.
The following example removes an element from the list model whenever
the page opened in the second column is closed. Note, the example must
be run on desktop or on a device with at least 90 grid units screen
width.

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

**See also**
`Component.incubateObject </sdk/apps/qml/QtQml/Component#incubateObject-method>`__.

| 

+--------------------------------------------------------------------------+
|        \ addPageToNextColumn( *sourcePage*, *page*, *properties*)        |
+--------------------------------------------------------------------------+

Remove all previous pages from the next column (relative to the column
that holds ``sourcePage``) and all following columns, and then add
``page`` to the next column. If ``sourcePage`` is located in the
rightmost column, the new page will be pushed to the same column as
``sourcePage``. The return value is the same as in
`addPageToCurrentColumn </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#addPageToCurrentColumn-method>`__
case.

| 

+--------------------------------------------------------------------------+
|        \ removePages( *page*)                                            |
+--------------------------------------------------------------------------+

The function removes and deletes all pages up to and including ``page``
is reached. If the *page* is the same as the
`primaryPage </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout#primaryPage-prop>`__,
only its child pages will be removed.

| 

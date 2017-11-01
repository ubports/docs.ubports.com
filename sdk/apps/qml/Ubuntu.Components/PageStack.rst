A stack of Page items that is used for inter-Page navigation. Pages on
the stack can be popped, and new Pages can be pushed. The page on top of
the stack is the visible one.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  ****`currentPage </sdk/apps/qml/Ubuntu.Components/PageStack#currentPage-prop>`__****
   : Item
-  ****`data </sdk/apps/qml/Ubuntu.Components/PageStack#data-prop>`__****
   : list<Object>
-  ****`depth </sdk/apps/qml/Ubuntu.Components/PageStack#depth-prop>`__****
   : int

Methods
-------

-  ****`clear </sdk/apps/qml/Ubuntu.Components/PageStack#clear-method>`__****\ ()
-  ****`pop </sdk/apps/qml/Ubuntu.Components/PageStack#pop-method>`__****\ ()
-  ****`push </sdk/apps/qml/Ubuntu.Components/PageStack#push-method>`__****\ (*page*,
   *properties*)

Detailed Description
--------------------

`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ should be
used inside a `MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__
in order to automatically add a header and toolbar to control the stack.
The `PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ will
automatically set the header title to the title of the
`Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ that is currently on
top of the stack, and the tools of the toolbar to the tools of the
`Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ on top of the stack.
When more than one Pages are on the stack, the toolbar will
automatically feature a back-button that pop the stack when triggered.

The anchors of the
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ are set to
fill its parent by default. To use left/right/top/bottom anchors,
explicitly set anchors.fill of the
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ to undefined:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        PageStack {
            id: mainStack
            anchors {
                fill: undefined // unset the default to make the other anchors work
                left: parent.left
                right: parent.right
                top: parent.top
                bottom: rect.top
            }
        }
        Rectangle {
            id: rect
            color: UbuntuColors.red
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(10)
        }
        Component.onCompleted: mainStack.push(Qt.resolvedUrl("MyPage.qml"))
    }

Pages that are defined inside the
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ must
initially set their visibility to false to avoid the pages occluding the
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ before they
are pushed. When pushing a
`Page </sdk/apps/qml/Ubuntu.Components/Page/>`__, its visibility is
automatically updated.

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    MainView {
        width: units.gu(48)
        height: units.gu(60)
        PageStack {
            id: pageStack
            Component.onCompleted: push(page0)
            Page {
                id: page0
                title: i18n.tr("Root page")
                visible: false
                Column {
                    anchors.fill: parent
                    ListItem.Standard {
                        text: i18n.tr("Page one")
                        onClicked: pageStack.push(page1, {color: UbuntuColors.orange})
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("External page")
                        onClicked: pageStack.push(Qt.resolvedUrl("MyCustomPage.qml"))
                        progression: true
                    }
                }
            }
            Page {
                title: "Rectangle"
                id: page1
                visible: false
                property alias color: rectangle.color
                Rectangle {
                    id: rectangle
                    anchors {
                        fill: parent
                        margins: units.gu(5)
                    }
                }
            }
        }
    }

As shown in the example above, the
`push() </sdk/apps/qml/Ubuntu.Components/PageStack#push-method>`__
function can take an Item, Component or URL as input.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ currentPage : `Item </sdk/apps/qml/QtQuick/Item/>`__            |
+--------------------------------------------------------------------------+

The currently active page

| 

+--------------------------------------------------------------------------+
|        \ [default] data : list<Object>                                   |
+--------------------------------------------------------------------------+

Children of `PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__
are placed in a separate item such that they are not active by default
until they are pushed on the
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__.

| 

+--------------------------------------------------------------------------+
|        \ depth : int                                                     |
+--------------------------------------------------------------------------+

The current size of the stack

| 

Method Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ clear()                                                         |
+--------------------------------------------------------------------------+

Deactivate the active page and clear the stack.

| 

+--------------------------------------------------------------------------+
|        \ pop()                                                           |
+--------------------------------------------------------------------------+

Pop the top item from the stack if the stack size is at least 1. Do not
do anything if 0 items are on the stack.

| 

+--------------------------------------------------------------------------+
|        \ push( *page*, *properties*)                                     |
+--------------------------------------------------------------------------+

Push a page to the stack, and apply the given (optional) properties to
the page. The pushed page may be an Item, Component or URL. The function
returns the Item that was pushed, or the Item that was created from the
Component or URL. Depending on the animation of the header, the returned
Page may or may not be active and on top of the
`PageStack </sdk/apps/qml/Ubuntu.Components/PageStack/>`__ yet.

| 

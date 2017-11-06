.. _sdk_ubuntu_components_pagestack:

Ubuntu.Components PageStack
===========================

A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`currentPage <sdk_ubuntu_components_pagestack_currentPage>` : Item
-  :ref:`data <sdk_ubuntu_components_pagestack_data>` : list<Object>
-  :ref:`depth <sdk_ubuntu_components_pagestack_depth>` : int

Methods
-------

-  :ref:`clear <sdk_ubuntu_components_pagestack_clear>`\ ()
-  :ref:`pop <sdk_ubuntu_components_pagestack_pop>`\ ()
-  :ref:`push <sdk_ubuntu_components_pagestack_push>`\ (*page*, *properties*)

Detailed Description
--------------------

:ref:`PageStack <sdk_ubuntu_components_pagestack>` should be used inside a :ref:`MainView <sdk_ubuntu_components_mainview>` in order to automatically add a header and toolbar to control the stack. The :ref:`PageStack <sdk_ubuntu_components_pagestack>` will automatically set the header title to the title of the :ref:`Page <sdk_ubuntu_components_page>` that is currently on top of the stack, and the tools of the toolbar to the tools of the :ref:`Page <sdk_ubuntu_components_page>` on top of the stack. When more than one Pages are on the stack, the toolbar will automatically feature a back-button that pop the stack when triggered.

The anchors of the :ref:`PageStack <sdk_ubuntu_components_pagestack>` are set to fill its parent by default. To use left/right/top/bottom anchors, explicitly set anchors.fill of the :ref:`PageStack <sdk_ubuntu_components_pagestack>` to undefined:

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

Pages that are defined inside the :ref:`PageStack <sdk_ubuntu_components_pagestack>` must initially set their visibility to false to avoid the pages occluding the :ref:`PageStack <sdk_ubuntu_components_pagestack>` before they are pushed. When pushing a :ref:`Page <sdk_ubuntu_components_page>`, its visibility is automatically updated.

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

As shown in the example above, the :ref:`push() <sdk_ubuntu_components_pagestack_push>` function can take an Item, Component or URL as input.

Property Documentation
----------------------

.. _sdk_ubuntu_components_pagestack_currentPage:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| currentPage : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The currently active page

.. _sdk_ubuntu_components_pagestack_data:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] data : list<Object>                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Children of :ref:`PageStack <sdk_ubuntu_components_pagestack>` are placed in a separate item such that they are not active by default until they are pushed on the :ref:`PageStack <sdk_ubuntu_components_pagestack>`.

.. _sdk_ubuntu_components_pagestack_depth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| depth : int                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The current size of the stack

Method Documentation
--------------------

.. _sdk_ubuntu_components_pagestack_clear:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clear()                                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Deactivate the active page and clear the stack.

.. _sdk_ubuntu_components_pagestack_pop:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pop()                                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Pop the top item from the stack if the stack size is at least 1. Do not do anything if 0 items are on the stack.

.. _sdk_ubuntu_components_pagestack_push:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| push( *page*, *properties*)                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Push a page to the stack, and apply the given (optional) properties to the page. The pushed page may be an Item, Component or URL. The function returns the Item that was pushed, or the Item that was created from the Component or URL. Depending on the animation of the header, the returned Page may or may not be active and on top of the :ref:`PageStack <sdk_ubuntu_components_pagestack>` yet.


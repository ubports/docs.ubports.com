.. _sdk_ubuntu_components_ubuntulistview:

Ubuntu.Components UbuntuListView
================================

A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`ListView <sdk_qtquick_listview>`                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`pullToRefresh <sdk_ubuntu_components_ubuntulistview_pullToRefresh>` : pullToRefresh

Detailed Description
--------------------

Examples:

.. code:: qml

    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3 as ListItem
    Item {
        ListModel {
            id: listModel
        }
        UbuntuListView {
            id: ubuntuListView
            anchors { left: parent.left; right: parent.right }
            height: units.gu(24)
            model: listModel
            delegate: ListItem.Expandable {
                id: expandingItem
                expandedHeight: units.gu(30)
                onClicked: {
                    ubuntuListView.expandedIndex = index;
                }
            }
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_ubuntulistview_pullToRefresh:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] pullToRefresh : :ref:`pullToRefresh <sdk_ubuntu_components_ubuntulistview_pullToRefresh>`                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Attached :ref:`PullToRefresh <sdk_ubuntu_components_pulltorefresh>` to control manual model refresh. The component is disabled by default.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    UbuntuListView {
        width: units.gu(40)
        height: units.gu(71)
        model: XmlListModel {
            source: "http://feeds.reuters.com/reuters/topNews"
            query: "/rss/channel/item"
            XmlRole { name: "title"; query: "title/string()" }
        }
        // let refresh control know when the refresh gets completed
        pullToRefresh {
            enabled: true
            refreshing: model.status === XmlListModel.Loading
            onRefresh: model.reload()
        }
        delegate: ListItem {
            ListItemLayout {
                title.text: modelData
            }
            onClicked: {
                ListView.view.model.reload();
            }
        }
    }

This QML property was introduced in Ubuntu.Components 1.1.


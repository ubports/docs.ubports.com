Pull-to-refresh component for Flickables to reload a model upon pull.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Since:                               | Ubuntu.Components 1.1                |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `StyledItem </sdk/apps/qml/Ubuntu.Co |
|                                      | mponents/StyledItem/>`__             |
+--------------------------------------+--------------------------------------+

Properties
----------

-  ****`content </sdk/apps/qml/Ubuntu.Components/PullToRefresh#content-prop>`__****
   : Component
-  ****`offset </sdk/apps/qml/Ubuntu.Components/PullToRefresh#offset-prop>`__****
   : real
-  ****`refreshing </sdk/apps/qml/Ubuntu.Components/PullToRefresh#refreshing-prop>`__****
   : bool
-  ****`releaseToRefresh </sdk/apps/qml/Ubuntu.Components/PullToRefresh#releaseToRefresh-prop>`__****
   : bool
-  ****`target </sdk/apps/qml/Ubuntu.Components/PullToRefresh#target-prop>`__****
   : Flickable

Signals
-------

-  ****`refresh </sdk/apps/qml/Ubuntu.Components/PullToRefresh#refresh-signal>`__****\ ()

Detailed Description
--------------------

The component provides ability to initiate data model refresh by pulling
the attached Flickable's content. The refresh can be initiated when the
flickable content is at its top boundary. By dragging the content
further, reaching the threshold value defined by the style will initiate
the manual refresh by emitting the
`refresh </sdk/apps/qml/Ubuntu.Components/PullToRefresh#refresh-signal>`__
signal. The progress of the refresh must be notified to the component by
defining the completion clause to the
`refreshing </sdk/apps/qml/Ubuntu.Components/PullToRefresh#refreshing-prop>`__
property.

.. code:: qml

    import QtQuick 2.4
    import QtQuick.XmlListModel 2.0
    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        XmlListModel {
            id: listModel
            source: "http://feeds.reuters.com/reuters/topNews"
            query: "/rss/channel/item"
            XmlRole { name: "title"; query: "title/string()" }
        }
        Page {
            title: "Reuters"
            ListView {
                id: view
                anchors.fill: parent
                model: listModel
                delegate: Standard {
                    width: ListView.view.width
                    height: units.gu(5)
                    text: title
                }
                PullToRefresh {
                    refreshing: view.model.status === XmlListModel.Loading
                    onRefresh: view.model.reload()
                }
            }
        }
    }

**Note:**
`UbuntuListView </sdk/apps/qml/Ubuntu.Components/UbuntuListView/>`__ has
a built-in
`PullToRefresh </sdk/apps/qml/Ubuntu.Components/PullToRefresh/>`__,
therefore it is recommended to use
`UbuntuListView </sdk/apps/qml/Ubuntu.Components/UbuntuListView/>`__
instead of `ListView </sdk/apps/qml/QtQuick/ListView/>`__.

The component will also show the progress of the model's update when the
refresh gets initiated by the model or from other party. Style
implementations can decide whether to visualize that or not.

As default, the component displays a Label visualizing the two states of
the component, which is pull to refresh and release to refresh. As
mentioned, this is driven by the threshold value specified by the style,
and the state is reported by the
`releaseToRefresh </sdk/apps/qml/Ubuntu.Components/PullToRefresh#releaseToRefresh-prop>`__
property. The
`content </sdk/apps/qml/Ubuntu.Components/PullToRefresh#content-prop>`__
specifies the visuals to be shown by the component. Custom
implementations can hold any component, which will be anchor filled to
the component itself.

.. code:: qml

    import QtQuick 2.4
    import QtQuick.XmlListModel 2.0
    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        XmlListModel {
            id: listModel
            source: "http://feeds.reuters.com/reuters/topNews"
            query: "/rss/channel/item"
            XmlRole { name: "title"; query: "title/string()" }
        }
        Page {
            title: "Reuters"
            ListView {
                id: view
                anchors.fill: parent
                model: listModel
                delegate: Standard {
                    width: ListView.view.width
                    height: units.gu(5)
                    text: title
                }
                PullToRefresh {
                    id: pullToRefresh
                    refreshing: view.model.status === XmlListModel.Loading
                    onRefresh: view.model.reload()
                    content: Item {
                        Icon {
                            name: pullToRefresh.releaseToRefresh ? "search" : ""
                            height: parent.height
                            width: height
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
            }
        }
    }

**Note:** When declared as child of Flickable, set parent to the
flickable explicitly so the component does not land in the ``content``
of Flickable.

.. code:: qml

    import QtQuick 2.4
    import QtQuick.XmlListModel 2.0
    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3
    MainView {
        id: main
        width: units.gu(40)
        height: units.gu(71)
        XmlListModel {
            id: rssFeed
            source: "http://feeds.reuters.com/reuters/topNews"
            query: "/rss/channel/item"
            XmlRole { name: "title"; query: "title/string()" }
        }
        Page {
            title: "Reuters"
            Flickable {
                id: flickable
                anchors.fill: parent
                contentHeight: column.childrenRect.height
                contentWidth: column.childrenRect.width
                Column {
                    id: column
                    Repeater {
                        model: rssFeed
                        Standard {
                            width: main.width
                            height: units.gu(5)
                            text: title
                        }
                    }
                }
                PullToRefresh {
                    parent: flickable
                    refreshing: rssFeed.status === XmlListModel.Loading
                    onRefresh: rssFeed.reload()
                }
            }
        }
    }

Styling
~~~~~~~

The component style API is defined by the
`PullToRefreshStyle </sdk/apps/qml/Ubuntu.Components/Styles.PullToRefreshStyle/>`__
component. Styles may define different ways to initiate refresh upon
dragging.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ content : `Component </sdk/apps/qml/QtQml/Component/>`__        |
+--------------------------------------------------------------------------+

The property holds the visuals to be displayed when the component is
revealed upon manual refresh. The default value is a Label showing "Pull
to refresh..." text when the component is pulled down till the
activation threshold, and "Release to refresh..." after that.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] offset : real                                       |
+--------------------------------------------------------------------------+

The property holds the offset the component is pulled from the
`target </sdk/apps/qml/Ubuntu.Components/PullToRefresh#target-prop>`__
Flickable's *topMargin*. The property can be used to provide animations
in custom contents.

| 

+--------------------------------------------------------------------------+
|        \ refreshing : bool                                               |
+--------------------------------------------------------------------------+

The property notifies the component about the ongoing refresh operation.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] releaseToRefresh : bool                             |
+--------------------------------------------------------------------------+

The property specifies when the component is ready to trigger the
refresh() signal. The logic is defined by the style and the value is
transferred from the style's releaseToRefresh property. The property can
be used to define custom visuals for
`content </sdk/apps/qml/Ubuntu.Components/PullToRefresh#content-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ target : `Flickable </sdk/apps/qml/QtQuick/Flickable/>`__       |
+--------------------------------------------------------------------------+

The Flickable or derivate the component is attached to. This can only be
the parent or a sibling of the component. Defaults to the parent.

| 

Signal Documentation
--------------------

+--------------------------------------------------------------------------+
|        \ refresh()                                                       |
+--------------------------------------------------------------------------+

Signal emitted when the model refresh is initiated by the component.

| 

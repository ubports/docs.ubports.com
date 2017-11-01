A page is the basic Item that represents a single view in an Ubuntu
application. It is recommended to use the Page inside the MainView or
AdaptivePageLayout.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  ****`actionContext </sdk/apps/qml/Ubuntu.Components/Page#actionContext-prop>`__****
   : ActrionContext
-  ****`header </sdk/apps/qml/Ubuntu.Components/Page#header-prop>`__****
   : Item

Detailed Description
--------------------

`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__ provides a
header for Pages it includes if no
`header </sdk/apps/qml/Ubuntu.Components/Page#header-prop>`__ property
was set. However, the application header is deprecated and it is
recommended to set the
`header </sdk/apps/qml/Ubuntu.Components/Page#header-prop>`__ property
instead.

Anchors and height of a Page are automatically determined to align with
the header of the
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__, but can be
overridden. Page contents does not automatically leave space for the
Page `header </sdk/apps/qml/Ubuntu.Components/Page#header-prop>`__, so
this must be taken into account when anchoring the contents of the Page.

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(48)
        height: units.gu(60)
        Page {
            header: PageHeader {
                id: pageHeader
                title: i18n.tr("Example page")
                trailingActionBar.actions: [
                    Action {
                        iconName: "search"
                        text: i18n.tr("Search")
                    }
                ]
            }
            Label {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: pageHeader.bottom
                    topMargin: units.gu(5)
                }
                text: i18n.tr("Hello world!")
            }
        }
    }

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] actionContext : ActrionContext                      |
+--------------------------------------------------------------------------+

The action context of the page.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ header : `Item </sdk/apps/qml/QtQuick/Item/>`__                 |
+--------------------------------------------------------------------------+

The header property for this page. Setting this property will reparent
the header to the page and disable the
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__'s application
header.

.. code:: qml

    Page {
        id: page
        header: PageHeader {
            title: "Page with header"
            trailingActionBar.actions: [
                Action { iconName: "settings" },
                Action { iconName: "info" }
            ]
            flickable: myFlickable
        }
    }

To avoid Page content being occluded by the header, the contents of the
Page should anchor to the bottom of the header. When the Page contents
is flickable, the contents does not need to be anchored to the header,
but it is recommended to use a
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ or
`Header </sdk/apps/qml/Ubuntu.Components/Header/>`__ component as the
Page header, and set its
`Header::flickable </sdk/apps/qml/Ubuntu.Components/Header#flickable-prop>`__
property so that the Flickable gets a top-margin that leaves enough
space for the header.

This QML property was introduced in Ubuntu.Components 1.3.

**See also**
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ and
`Header </sdk/apps/qml/Ubuntu.Components/Header/>`__.

| 

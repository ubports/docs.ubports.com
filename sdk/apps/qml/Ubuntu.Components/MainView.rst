MainView is the root Item that should be used for all applications.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  ****`actionContext </sdk/apps/qml/Ubuntu.Components/MainView#actionContext-prop>`__****
   : ActionContext
-  ****`anchorToKeyboard </sdk/apps/qml/Ubuntu.Components/MainView#anchorToKeyboard-prop>`__****
   : bool
-  ****`applicationName </sdk/apps/qml/Ubuntu.Components/MainView#applicationName-prop>`__****
   : string
-  ****`backgroundColor </sdk/apps/qml/Ubuntu.Components/MainView#backgroundColor-prop>`__****
   : color

Detailed Description
--------------------

The simplest way to use a
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__ is to include a
single `Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ object inside
the `MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(48)
        height: units.gu(60)
        Page {
            header: PageHeader {
                id: pageHeader
                title: "Simple page"
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: pageHeader.bottom
                    topMargin: units.gu(5)
                }
                width: units.gu(15)
                text: "Push me"
                onClicked: print("Click!")
            }
        }
    }

It is not required to set the anchors of the
`Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ as it will
automatically fill its parent.

Do not include multiple Pages directly inside the
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__, but use
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__
inside `MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__ to
navigate between several Pages.

If the `Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ inside the
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__ includes a
Flickable, set the flickable property of the
`PageHeader </sdk/apps/qml/Ubuntu.Components/PageHeader/>`__ to
automatically hide and show the header when the user scrolls up or down:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(48)
        height: units.gu(60)
        Page {
            header: PageHeader {
                title: "Page with Flickable"
                flickable: myFlickable
            }
            Flickable {
                id: myFlickable
                anchors.fill: parent
                contentHeight: column.height
                Column {
                    id: column
                    Repeater {
                        model: 100
                        Label {
                            text: "line "+index
                        }
                    }
                }
            }
        }
    }

The same header behavior is automatic when using a
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ instead of a Flickable in
the above example.

The examples above show how to include a single
`Page </sdk/apps/qml/Ubuntu.Components/Page/>`__ inside a
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__, but more
advanced application structures are possible using
`AdaptivePageLayout </sdk/apps/qml/Ubuntu.Components/AdaptivePageLayout/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ [read-only] actionContext :                                     |
| `ActionContext </sdk/apps/qml/Ubuntu.Components/ActionContext/>`__       |
+--------------------------------------------------------------------------+

The action context of the
`MainView </sdk/apps/qml/Ubuntu.Components/MainView/>`__.

This QML property was introduced in Ubuntu.Components 1.3.

| 

+--------------------------------------------------------------------------+
|        \ anchorToKeyboard : bool                                         |
+--------------------------------------------------------------------------+

The property holds if the application should automatically resize the
contents when the input method appears

The default value is false.

| 

+--------------------------------------------------------------------------+
|        \ applicationName : string                                        |
+--------------------------------------------------------------------------+

The property holds the application's name, which must be the same as the
desktop file's name. The name also sets the name of the QCoreApplication
and defaults for data and cache folders that work on the desktop and
under confinement, as well as the default gettext domain. C++ code that
writes files may use QStandardPaths::writableLocation with
QStandardPaths::DataLocation or QStandardPaths::CacheLocation.

| 

+--------------------------------------------------------------------------+
|        \ backgroundColor : color                                         |
+--------------------------------------------------------------------------+

Color of the background.

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(60)
        backgroundColor: UbuntuColors.blue
    }

| 

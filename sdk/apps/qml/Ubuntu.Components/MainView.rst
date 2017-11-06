.. _sdk_ubuntu_components_mainview:

Ubuntu.Components MainView
==========================

MainView is the root Item that should be used for all applications.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`actionContext <sdk_ubuntu_components_mainview_actionContext>` : ActionContext
-  :ref:`anchorToKeyboard <sdk_ubuntu_components_mainview_anchorToKeyboard>` : bool
-  :ref:`applicationName <sdk_ubuntu_components_mainview_applicationName>` : string
-  :ref:`backgroundColor <sdk_ubuntu_components_mainview_backgroundColor>` : color

Detailed Description
--------------------

The simplest way to use a :ref:`MainView <sdk_ubuntu_components_mainview>` is to include a single :ref:`Page <sdk_ubuntu_components_page>` object inside the :ref:`MainView <sdk_ubuntu_components_mainview>`:

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

It is not required to set the anchors of the :ref:`Page <sdk_ubuntu_components_page>` as it will automatically fill its parent.

Do not include multiple Pages directly inside the :ref:`MainView <sdk_ubuntu_components_mainview>`, but use :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>` inside :ref:`MainView <sdk_ubuntu_components_mainview>` to navigate between several Pages.

If the :ref:`Page <sdk_ubuntu_components_page>` inside the :ref:`MainView <sdk_ubuntu_components_mainview>` includes a Flickable, set the flickable property of the :ref:`PageHeader <sdk_ubuntu_components_pageheader>` to automatically hide and show the header when the user scrolls up or down:

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

The same header behavior is automatic when using a :ref:`ListView <sdk_qtquick_listview>` instead of a Flickable in the above example.

The examples above show how to include a single :ref:`Page <sdk_ubuntu_components_page>` inside a :ref:`MainView <sdk_ubuntu_components_mainview>`, but more advanced application structures are possible using :ref:`AdaptivePageLayout <sdk_ubuntu_components_adaptivepagelayout>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_mainview_actionContext:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] actionContext : :ref:`ActionContext <sdk_ubuntu_components_actioncontext>`                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The action context of the :ref:`MainView <sdk_ubuntu_components_mainview>`.

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_mainview_anchorToKeyboard:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| anchorToKeyboard : bool                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds if the application should automatically resize the contents when the input method appears

The default value is false.

.. _sdk_ubuntu_components_mainview_applicationName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| applicationName : string                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the application's name, which must be the same as the desktop file's name. The name also sets the name of the QCoreApplication and defaults for data and cache folders that work on the desktop and under confinement, as well as the default gettext domain. C++ code that writes files may use QStandardPaths::writableLocation with QStandardPaths::DataLocation or QStandardPaths::CacheLocation.

.. _sdk_ubuntu_components_mainview_backgroundColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| backgroundColor : color                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

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


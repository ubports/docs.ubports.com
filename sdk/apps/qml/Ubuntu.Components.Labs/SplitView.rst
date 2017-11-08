.. _sdk_ubuntu_components_labs_splitview:

Ubuntu.Components.Labs SplitView
================================

A view component with a flexible layout configuration setup.

+---------------------+-----------------------------------+
| Import Statement:   | import Ubuntu.Components.Labs .   |
+---------------------+-----------------------------------+

Properties
----------

-  `activeLayout </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#activeLayout-prop>`_  : SplitViewLayout
-  `handleDelegate </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#handleDelegate-prop>`_  : Component
-  `layouts </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#layouts-prop>`_  : list<SplitViewLayout>
-  `spacing </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#spacing-prop>`_  : real

Attached Properties
-------------------

-  `column </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#column-attached-prop>`_  : int
-  `columnConfig </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#columnConfig-attached-prop>`_  : ViewColumn
-  `view </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#view-attached-prop>`_  : SplitView

Detailed Description
--------------------

The component arranges the declared child elements horizontally based on an active column configuration layout. Child elements are considered to be views, and each view is identified with a column index, specified by the `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_ .column attached property. Views should not have width declared, because the width of each view is specified by the active layout's configuration (:ref:`ViewColumn <sdk_ubuntu_components_viewcolumn>`) and will overwrite the value specified by the view. On the other hand they should have a height specified, or they can be anchored to the top and bottom of the view. `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  being a positioner, remember not to anchor horizontal anchor lines or anchor fill the columns.

In order for a `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  to show some content it must have at least one active layout present. Views which are not configured by the active layout will be hidden. Hidden views may be resized, therefore if the content is size sensitive (i.e. the amount shown differs depending on the space available), make sure the content of your view does take this into account.

.. code:: cpp

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Labs 1.0
    MainView {
        id: main
        width: units.gu(300)
        height: units.gu(80)
        SplitView {
            anchors.fill: parent
            layouts: [
                SplitViewLayout {
                    when: main.width < units.gu(80)
                    ViewColumn {
                        fillWidth: true
                    }
                },
                SplitViewLayout {
                    when: main.width >= units.gu(80)
                    ViewColumn {
                        minimumWidth: units.gu(30)
                        maximumWidth: units.gu(100)
                        preferredWidth: units.gu(40)
                    }
                    ViewColumn {
                        minimumWidth: units.gu(40)
                        fillWidth: true
                    }
                }
            ]
        }
        Page {
            id: column1
            height: parent.height
        }
        Page {
            id: column2
            height: parent.height
        }
    }

The `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  can be used with a Repeater in case the content of the view columns doesn't need to be preserved between layout changes. The example above with a Repeater would look as follows:

.. code:: cpp

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Labs 1.0
    MainView {
        id: main
        width: units.gu(300)
        height: units.gu(80)
        SplitView {
            id: view
            anchors.fill: parent
            layouts: [
                SplitViewLayout {
                    when: main.width < units.gu(80)
                    ViewColumn {
                        fillWidth: true
                    }
                },
                SplitViewLayout {
                    when: main.width >= units.gu(80)
                    ViewColumn {
                        minimumWidth: units.gu(30)
                        maximumWidth: units.gu(100)
                        preferredWidth: units.gu(40)
                    }
                    ViewColumn {
                        minimumWidth: units.gu(40)
                        fillWidth: true
                    }
                }
            ]
        }
        Repeater {
            model: view.activeLayout.columns
            Page {
                height: parent.height
            }
        }
    }

Resizing
~~~~~~~~

`SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  provides the ability to resize view columns. Each column has an attached handle which provides the ability to resize the columns using a mouse or touch. Columns can be resized if the spacing property is set and the column configurations allow that (see `spacing </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#spacing-prop>`_  property).

Attached properties
~~~~~~~~~~~~~~~~~~~

`SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  provides a set of attached properties to each column view. Views can in this way have access to various values of the `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  and configurations.

Property Documentation
----------------------

.. _sdk_ubuntu_components_labs_splitview_activeLayout:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] activeLayout : :ref:`SplitViewLayout <sdk_ubuntu_components_splitviewlayout>`                                                                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the active :ref:`SplitViewLayout <sdk_ubuntu_components_splitviewlayout>` instance, or null is no layout is active.

.. _sdk_ubuntu_components_labs_splitview_handleDelegate:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| handleDelegate : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the delegate to be shown for the column resizing handle. The delegate is for pure visual, mouse and touch handling is provided by the `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  component itself. The component provides a context property called *handle* which embeds the visuals. This can be used to anchor the visuals to the resize handle. The thickness of the handle is driven by the `spacing </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/#spacing-prop>`_  property.

.. code:: cpp

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Labs 1.0
    MainView {
        id: main
        width: units.gu(300)
        height: units.gu(80)
        SplitView {
            anchors.fill: parent
            handleDelegate: Rectangle {
                anchors {
                    fill: parent
                    leftMargin: units.dp(2)
                    rightMargin: units.dp(2)
                    topMargin: handle.height / 2 - units.gu(3)
                    bottomMargin: handle.height / 2 - units.gu(3)
                }
                color: UbuntuColors.graphite
                scale: handle.containsMouse || handle.pressed ? 1.6 : 1.0
                Behavior on scale { UbuntuNumberAnimation {} }
            }
            layouts: [
                SplitViewLayout {
                    when: main.width < units.gu(80)
                    ViewColumn {
                        fillWidth: true
                    }
                },
                SplitViewLayout {
                    when: main.width >= units.gu(80)
                    ViewColumn {
                        minimumWidth: units.gu(30)
                        maximumWidth: units.gu(100)
                        preferredWidth: units.gu(40)
                    }
                    ViewColumn {
                        minimumWidth: units.gu(40)
                        fillWidth: true
                    }
                }
            ]
        }
        Page {
            id: column1
            height: parent.height
        }
        Page {
            id: column2
            height: parent.height
        }
    }

.. _sdk_ubuntu_components_labs_splitview_layouts:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| layouts : list<:ref:`SplitViewLayout <sdk_ubuntu_components_splitviewlayout>`>                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the layout configurations declared for the given `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_ .

**See also** :ref:`SplitViewLayout <sdk_ubuntu_components_splitviewlayout>`.

.. _sdk_ubuntu_components_labs_splitview_spacing:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| spacing : real                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Spacing between view columns. A value bigger than 0 enables resizing of columns with a :ref:`minimumWidth <sdk_ubuntu_components_viewcolumn_minimumWidth>` lower than :ref:`maximumWidth <sdk_ubuntu_components_viewcolumn_maximumWidth>`. If spacing is 0 the columns cannot be resized. Defaults to 4 device pixels.

Attached Property Documentation
-------------------------------

.. _sdk_ubuntu_components_labs_splitview_column:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SplitView.column : int                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the column index the view is configured to.

.. _sdk_ubuntu_components_labs_splitview_columnConfig:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SplitView.columnConfig : :ref:`ViewColumn <sdk_ubuntu_components_viewcolumn>`                                                                                                                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The attached property holds the active layout's column configuration data. The value is null if there is no active configuration value provided for the column.

.. _sdk_ubuntu_components_labs_splitview_view:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| SplitView.view : `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Contains the `SplitView </sdk/apps/qml/Ubuntu.Components/Labs.SplitView/>`_  instance of the column.


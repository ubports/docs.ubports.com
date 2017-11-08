.. _sdk_ubuntu_components_pagecolumnslayout:

Ubuntu.Components PageColumnsLayout
===================================

Component configuring a layout in an AdaptivePageLayout component.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Since:                                                                                                                                                 | Ubuntu.Components 1.3                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`QtObject <sdk_qtqml_qtobject>`                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

Properties
----------

-  :ref:`data <sdk_ubuntu_components_pagecolumnslayout_data>` : list<PageColumn>
-  :ref:`when <sdk_ubuntu_components_pagecolumnslayout_when>` : bool

Detailed Description
--------------------

The component specifies the column configuration of a specific layout. The layout will have as many columns as many :ref:`PageColumn <sdk_ubuntu_components_pagecolumn>` elements will be declared. The layout will be activated when the :ref:`when <sdk_ubuntu_components_pagecolumnslayout_when>` property evaluates to ``true``. There can be many layouts evaluated to true, only the first one evaluated to true in the :ref:`AdaptivePageLayout::layouts <sdk_ubuntu_components_adaptivepagelayout_layouts>` list will be activated.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
        width: units.gu(100)
        height: units.gu(60)
        AdaptivePageLayout {
            anchors.fill: parent
            primaryPage: page1
            layouts: [
                PageColumnsLayout {
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
                },
                PageColumnsLayout {
                    when: true
                    PageColumn {
                        fillWidth: true
                        minimumWidth: units.gu(10)
                    }
                }
            ]
            Page {
                id: page1
                title: "Main page"
                Column {
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
                title: "Page #2"
            }
            Page {
                id: page3
                title: "Page #3"
            }
        }
    }

In the example above the second PageColumnLayout's condition is always set to true, which means that that the layout will be always active unless the first layout's condition evaluates to true. The layout overrides the single column minimumWidth default value. Note that :ref:`PageColumn::fillWidth <sdk_ubuntu_components_pagecolumn_fillWidth>` must be also set.

**Note:** When none of the conditions is met, a single column layout will be used.

**See also** :ref:`PageColumn <sdk_ubuntu_components_pagecolumn>`.

Property Documentation
----------------------

.. _sdk_ubuntu_components_pagecolumnslayout_data:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] data : list<:ref:`PageColumn <sdk_ubuntu_components_pagecolumn>`>                                                                                                                                                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Default property holding the :ref:`PageColumn <sdk_ubuntu_components_pagecolumn>` elements configuring each column.

.. _sdk_ubuntu_components_pagecolumnslayout_when:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| when : bool                                                                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Condition activating the layout. Defaults to false.


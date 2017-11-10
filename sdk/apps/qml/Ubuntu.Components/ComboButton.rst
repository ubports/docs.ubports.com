.. _sdk_ubuntu_components_combobutton:

Ubuntu.Components ComboButton
=============================

Ubuntu button providing a drop-down panel visualizing custom options.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components 1.3                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | :ref:`AbstractButton <sdk_ubuntu_components_abstractbutton>`                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>` : real
-  :ref:`comboList <sdk_ubuntu_components_combobutton_comboList>` : list<Item>
-  :ref:`comboListHeight <sdk_ubuntu_components_combobutton_comboListHeight>` : real
-  :ref:`expanded <sdk_ubuntu_components_combobutton_expanded>` : bool
-  :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>` : real
-  :ref:`font <sdk_ubuntu_components_combobutton_font>` : font
-  :ref:`iconPosition <sdk_ubuntu_components_combobutton_iconPosition>` : string

Detailed Description
--------------------

The component is composed of three main blocks: **main button**, **dropdown** and **combo list**.

The *main button* holds the main functionailty of the component, and it is located at the left-top side of the expanded button. The *clicked()* signal is triggered only when this button is pressed.

The *dropdown* is a button located on the right of the main button. Its functionality is to drive the component's expanded state.

The *combo list* is a panel showing the content specified in :ref:`comboList <sdk_ubuntu_components_combobutton_comboList>` property when expanded. The content is stretched horizontally to the component's width, and its height is controlled by the :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>` property as follows:

-  If the content height is smaller than the value of :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>`, the combo list will be expanded only to the height of the content.

   .. code:: qml

       import QtQuick 2.4
       import Ubuntu.Components 1.3
       ComboButton {
           text: "smaller content"
           Rectangle {
               height: units.gu(5) // smaller than the default expandedHeight
               color: "blue"
           }
       }

-  If the content height is greater than :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>`, the combo list will expand till the height specified by the property and the content will be scrolled; in case the combo list content is one single Flickable, :ref:`ListView <sdk_qtquick_listview>`, `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_  or :ref:`PathView <sdk_qtquick_pathview>`, the content scrolling will be provided by the content itself.

   .. code:: qml

       import QtQuick 2.4
       import Ubuntu.Components 1.3
       ComboButton {
           text: "long scrolled content"
           Column {
               Repeater {
                   model: 5
                   spacing: units.gu(1)
                   Rectangle {
                       height: units.gu(5)
                       color: "blue"
                   }
               }
           }
       }

-  In case the content is a single Flickable, :ref:`ListView <sdk_qtquick_listview>`, `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_  or :ref:`PathView <sdk_qtquick_pathview>`, the content will be filling the entire combo list area defined.

   .. code:: qml

       import QtQuick 2.4
       import Ubuntu.Components 1.3
       import Ubuntu.Components.ListItems 1.3
       ComboButton {
           text: "listview"
           ListView {
               model: 10
               delegate: Standard {
                   text: "Item #" + modelData
               }
           }
       }

-  Vertical anchoring of combo list content to its parent is not possible as the expansion calculation is done based on the combo list content height. If the content wants to take the size of the entire combo list, it should bind its height to the :ref:`comboListHeight <sdk_ubuntu_components_combobutton_comboListHeight>` property.

   .. code:: qml

       import QtQuick 2.4
       import Ubuntu.Components 1.3
       ComboButton {
           id: combo
           text: "smaller content"
           Rectangle {
               height: combo.comboListHeight
               color: "blue"
           }
       }

-  In case the expansion needs to be the size of the combo list content, the :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>` should be set to -1.

   .. code:: qml

       import QtQuick 2.4
       import Ubuntu.Components 1.3
       ComboButton {
           text: "auto-sized content"
           expandedHeight: -1
           Column {
               Repeater {
                   model: 5
                   spacing: units.gu(1)
                   Button {
                       text: "Button #" + modelData
                   }
               }
           }
       }

The combo list can be expanded/collapsed either through the :ref:`expanded <sdk_ubuntu_components_combobutton_expanded>` property or by clicking on the dropdown button. It is not collapsed when pressing the main button or clicking on the combo list. In order to do an auto-collapsing button you must reset the expanded property (set it to false) when the main button is clicked or when a selection is taken from the combo list content. The following example illustrates a possible implementation.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ComboButton {
        id: combo
        text: "Auto closing"
        expanded: true
        expandedHeight: units.gu(30)
        onClicked: expanded = false
        UbuntuListView {
            width: parent.width
            height: combo.comboListHeight
            model: 20
            delegate: Standard {
                text: "Action #" + modelData
                onClicked: {
                    combo.text = text;
                    combo.expanded = false;
                }
            }
        }
    }

Styling
~~~~~~~

The style of the component is defined in `ComboButtonStyle </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/>`_ .

Property Documentation
----------------------

.. _sdk_ubuntu_components_combobutton_collapsedHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| collapsedHeight : real                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the height of the component when collapsed. By default the value is the implicit height of the component.

.. _sdk_ubuntu_components_combobutton_comboList:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] comboList : list<:ref:`Item <sdk_qtquick_item>`>                                                                                                                                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Property holding the list of items to be shown in the combo list. Being a default property children items declared will land in the combo list.

**Note:** The component is not responsible for layouting the content. It only provides scrolling abilities for the case the content exceeds the defined expanded height.

.. _sdk_ubuntu_components_combobutton_comboListHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] comboListHeight : real                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the maximum combo list height allowed based on the :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>` and :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>` values. It is a convenience property that can be used to size the combo list content.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3
    ComboButton {
        id: combo
        text: "Full comboList size"
        ListView {
            anchors {
                left: parent.left
                right: parent.right
            }
            height: combo.comboListHeight
            model: 20
            delegate: Standard {
                text: "Action #" + modelData
            }
        }
    }

**See also** :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>` and :ref:`expandedHeight <sdk_ubuntu_components_combobutton_expandedHeight>`.

.. _sdk_ubuntu_components_combobutton_expanded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expanded : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies whether the combo list is expanded or not. The default falue is false.

.. _sdk_ubuntu_components_combobutton_expandedHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expandedHeight : real                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the maximum height value the component should expand. When setting the property, remember to take into account the :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>` value. The best practice is to use bind it with :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>`.

.. code:: qml

    ComboButton {
        text: "altered expandedHeight"
        expandedHeight: collapsedHeight + units.gu(25)
    }

A value of -1 will instruct the component to expand the combo list as much as its content height is.

The default value is :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>` + 19.5 GU, so at least 3 ListItems can fit in the combo list.

**See also** :ref:`collapsedHeight <sdk_ubuntu_components_combobutton_collapsedHeight>`.

.. _sdk_ubuntu_components_combobutton_font:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| font : :ref:`font <sdk_ubuntu_components_combobutton_font>`                                                                                                                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The font used for the button's text.

.. _sdk_ubuntu_components_combobutton_iconPosition:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| iconPosition : string                                                                                                                                                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The position of the icon relative to the text. Options are "left" and "right". The default value is "left".

If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861


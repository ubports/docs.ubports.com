.. _sdk_ubuntu_components_popups_dialog:

Ubuntu.Components.Popups Dialog
===============================

The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation.

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Import Statement:                                                                                                                                      | import Ubuntu.Components.Popups 1.3                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| Inherits:                                                                                                                                              | `PopupBase </sdk/apps/qml/Ubuntu.Components/Popups.PopupBase/>`_                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

-  Obsolete members

Properties
----------

-  `callerMargin </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#callerMargin-prop>`_  : real
-  `contentHeight </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#contentHeight-prop>`_  : real
-  `contentWidth </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#contentWidth-prop>`_  : real
-  `contents </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#contents-prop>`_  : list<Object>
-  `edgeMargins </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#edgeMargins-prop>`_  : real
-  `modal </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#modal-prop>`_  : bool
-  `style </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#style-prop>`_  : Component
-  `styleName </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#styleName-prop>`_  : string
-  `text </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#text-prop>`_  : string
-  `theme </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#theme-prop>`_  : ThemeSettings
-  `title </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#title-prop>`_  : string

Detailed Description
--------------------

`See also the Design Guidelines on Dialogs <http://design.ubuntu.com/apps/building-blocks/dialog>`_ .

Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Popups 1.3
    Item {
        width: units.gu(80)
        height: units.gu(80)
        Component {
             id: dialog
             Dialog {
                 id: dialogue
                 title: "Save file"
                 text: "Are you sure that you want to save this file?"
                 Button {
                     text: "cancel"
                     onClicked: PopupUtils.close(dialogue)
                 }
                 Button {
                     text: "overwrite previous version"
                     color: UbuntuColors.orange
                     onClicked: PopupUtils.close(dialogue)
                 }
                 Button {
                     text: "save a copy"
                     color: UbuntuColors.orange
                     onClicked: PopupUtils.close(dialogue)
                 }
             }
        }
        Button {
            anchors.centerIn: parent
            id: saveButton
            text: "save"
            onClicked: PopupUtils.open(dialog)
        }
    }

Property Documentation
----------------------

.. _sdk_ubuntu_components_popups_dialog_callerMargin:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| callerMargin : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the margin from the dialog's caller. The property is themed.

.. _sdk_ubuntu_components_popups_dialog_contentHeight:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentHeight : real                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the height of the dialog content.

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_popups_dialog_contentWidth:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentWidth : real                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Specifies the width of the dialog content.

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_popups_dialog_contents:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [default] contents : list<Object>                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Content will be put inside a column in the foreround of the Dialog.

.. _sdk_ubuntu_components_popups_dialog_edgeMargins:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| edgeMargins : real                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the margins from the dialog's dismissArea. The property is themed.

.. _sdk_ubuntu_components_popups_dialog_modal:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| modal : bool                                                                                                                                                                                                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property controls whether the dialog is modal or not. Modal dialogs block event propagation to items under dismissArea, when non-modal ones let these events passed to these items. In addition, non-modal dialogs do not dim the dismissArea.

The default value is true.

.. _sdk_ubuntu_components_popups_dialog_style:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| style : :ref:`Component <sdk_qtqml_component>`                                                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The style of the foreground of the Dialog. This property takes precedence over `styleName </sdk/apps/qml/Ubuntu.Components/Popups.Dialog/#styleName-prop>`_ 

This QML property was introduced in Ubuntu.Components 1.3.

**See also** :ref:`StyledItem::style <sdk_ubuntu_components_styleditem_style>`.

.. _sdk_ubuntu_components_popups_dialog_styleName:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| styleName : string                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The style name of the foreground of the Dialog.

This QML property was introduced in Ubuntu.Components 1.3.

**See also** :ref:`StyledItem::styleName <sdk_ubuntu_components_styleditem_styleName>`.

.. _sdk_ubuntu_components_popups_dialog_text:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| text : string                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The question to the user.

.. _sdk_ubuntu_components_popups_dialog_theme:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| theme : :ref:`ThemeSettings <sdk_ubuntu_components_themesettings>`                                                                                                                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Configure the theme of the Dialog foreground and all its subcomponents. Example:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.Popups 1.3
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        // make sure the main theme is Ambiance
        theme.name: "Ubuntu.Components.Themes.Ambiance"
        Component {
            id: dialogComponent
            Dialog {
                id: dialog
                title: "Input dialog"
                // the dialog and its children will use SuruDark
                theme: ThemeSettings {
                    name: "Ubuntu.Components.Themes.SuruDark"
                }
                TextField {
                    placeholderText: "enter text"
                }
                Button {
                    text: "Close"
                    onClicked: PopupUtils.close(dialog)
                }
            }
        }
        Button {
            text: "Open dialog"
            onClicked: PopupUtils.open(dialogComponent)
        }
    }

This QML property was introduced in Ubuntu.Components 1.3.

**See also** :ref:`StyledItem::theme <sdk_ubuntu_components_styleditem_theme>`.

.. _sdk_ubuntu_components_popups_dialog_title:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| title : string                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The title of the question to ask the user.


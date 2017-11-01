Ubuntu button providing a drop-down panel visualizing custom options.

+--------------------------------------+--------------------------------------+
| Import Statement:                    | import Ubuntu.Components 1.3         |
+--------------------------------------+--------------------------------------+
| Inherits:                            | `AbstractButton </sdk/apps/qml/Ubunt |
|                                      | u.Components/AbstractButton/>`__     |
+--------------------------------------+--------------------------------------+

-  Obsolete members

Properties
----------

-  ****`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__****
   : real
-  ****`comboList </sdk/apps/qml/Ubuntu.Components/ComboButton#comboList-prop>`__****
   : list<Item>
-  ****`comboListHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#comboListHeight-prop>`__****
   : real
-  ****`expanded </sdk/apps/qml/Ubuntu.Components/ComboButton#expanded-prop>`__****
   : bool
-  ****`expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__****
   : real
-  ****`font </sdk/apps/qml/Ubuntu.Components/ComboButton#font-prop>`__****
   : font
-  ****`iconPosition </sdk/apps/qml/Ubuntu.Components/ComboButton#iconPosition-prop>`__****
   : string

Detailed Description
--------------------

The component is composed of three main blocks: **main button**,
**dropdown** and **combo list**.

The *main button* holds the main functionailty of the component, and it
is located at the left-top side of the expanded button. The *clicked()*
signal is triggered only when this button is pressed.

The *dropdown* is a button located on the right of the main button. Its
functionality is to drive the component's expanded state.

The *combo list* is a panel showing the content specified in
`comboList </sdk/apps/qml/Ubuntu.Components/ComboButton#comboList-prop>`__
property when expanded. The content is stretched horizontally to the
component's width, and its height is controlled by the
`expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__
property as follows:

-  If the content height is smaller than the value of
   `expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__,
   the combo list will be expanded only to the height of the content.

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

-  If the content height is greater than
   `expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__,
   the combo list will expand till the height specified by the property
   and the content will be scrolled; in case the combo list content is
   one single Flickable, `ListView </sdk/apps/qml/QtQuick/ListView/>`__,
   `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example#gridview>`__
   or `PathView </sdk/apps/qml/QtQuick/PathView/>`__, the content
   scrolling will be provided by the content itself.

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

-  In case the content is a single Flickable,
   `ListView </sdk/apps/qml/QtQuick/ListView/>`__,
   `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example#gridview>`__
   or `PathView </sdk/apps/qml/QtQuick/PathView/>`__, the content will
   be filling the entire combo list area defined.

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

-  Vertical anchoring of combo list content to its parent is not
   possible as the expansion calculation is done based on the combo list
   content height. If the content wants to take the size of the entire
   combo list, it should bind its height to the
   `comboListHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#comboListHeight-prop>`__
   property.

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

-  In case the expansion needs to be the size of the combo list content,
   the
   `expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__
   should be set to -1.

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

The combo list can be expanded/collapsed either through the
`expanded </sdk/apps/qml/Ubuntu.Components/ComboButton#expanded-prop>`__
property or by clicking on the dropdown button. It is not collapsed when
pressing the main button or clicking on the combo list. In order to do
an auto-collapsing button you must reset the expanded property (set it
to false) when the main button is clicked or when a selection is taken
from the combo list content. The following example illustrates a
possible implementation.

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

The style of the component is defined in
`ComboButtonStyle </sdk/apps/qml/Ubuntu.Components/Styles.ComboButtonStyle/>`__.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ collapsedHeight : real                                          |
+--------------------------------------------------------------------------+

The property holds the height of the component when collapsed. By
default the value is the implicit height of the component.

| 

+--------------------------------------------------------------------------+
|        \ [default] comboList :                                           |
| list<`Item </sdk/apps/qml/QtQuick/Item/>`__>                             |
+--------------------------------------------------------------------------+

Property holding the list of items to be shown in the combo list. Being
a default property children items declared will land in the combo list.

**Note:** The component is not responsible for layouting the content. It
only provides scrolling abilities for the case the content exceeds the
defined expanded height.

| 

+--------------------------------------------------------------------------+
|        \ [read-only] comboListHeight : real                              |
+--------------------------------------------------------------------------+

The property holds the maximum combo list height allowed based on the
`expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__
and
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__
values. It is a convenience property that can be used to size the combo
list content.

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

**See also**
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__
and
`expandedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#expandedHeight-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ expanded : bool                                                 |
+--------------------------------------------------------------------------+

Specifies whether the combo list is expanded or not. The default falue
is false.

| 

+--------------------------------------------------------------------------+
|        \ expandedHeight : real                                           |
+--------------------------------------------------------------------------+

The property holds the maximum height value the component should expand.
When setting the property, remember to take into account the
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__
value. The best practice is to use bind it with
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__.

.. code:: qml

    ComboButton {
        text: "altered expandedHeight"
        expandedHeight: collapsedHeight + units.gu(25)
    }

A value of -1 will instruct the component to expand the combo list as
much as its content height is.

The default value is
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__
+ 19.5 GU, so at least 3 ListItems can fit in the combo list.

**See also**
`collapsedHeight </sdk/apps/qml/Ubuntu.Components/ComboButton#collapsedHeight-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ font :                                                          |
| `font </sdk/apps/qml/Ubuntu.Components/ComboButton#font-prop>`__         |
+--------------------------------------------------------------------------+

The font used for the button's text.

| 

+--------------------------------------------------------------------------+
|        \ iconPosition : string                                           |
+--------------------------------------------------------------------------+

The position of the icon relative to the text. Options are "left" and
"right". The default value is "left".

If only text or only an icon is defined, this property is ignored and
the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums:
https://bugreports.qt-project.org/browse/QTBUG-14861

| 

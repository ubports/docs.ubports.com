.. _sdk_ubuntu_components_listitem:

Ubuntu.Components ListItem
==========================

The ListItem element provides Ubuntu design standards for list or grid views. The ListItem component was designed to be used in a list view. It does not define any specific layout, but while its contents can be freely chosen by the developer, care must be taken to keep the contents light in order to ensure good performance when used in long list views.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  :ref:`action <sdk_ubuntu_components_listitem_action>` : Action
-  :ref:`color <sdk_ubuntu_components_listitem_color>` : color
-  :ref:`contentItem <sdk_ubuntu_components_listitem_contentItem>` : Item
-  :ref:`contentMoving <sdk_ubuntu_components_listitem_contentMoving>` : bool
-  :ref:`divider <sdk_ubuntu_components_listitem_divider>`

   -  :ref:`divider.colorFrom <sdk_ubuntu_components_listitem_divider_colorFrom>` : real
   -  :ref:`divider.colorTo <sdk_ubuntu_components_listitem_divider_colorTo>` : real

-  :ref:`dragMode <sdk_ubuntu_components_listitem_dragMode>` : bool
-  :ref:`dragging <sdk_ubuntu_components_listitem_dragging>` : bool
-  :ref:`expansion <sdk_ubuntu_components_listitem_expansion>`

   -  :ref:`expansion.expanded <sdk_ubuntu_components_listitem_expansion_expanded>` : bool
   -  :ref:`expansion.height <sdk_ubuntu_components_listitem_expansion_height>` : real

-  :ref:`highlightColor <sdk_ubuntu_components_listitem_highlightColor>` : color
-  :ref:`highlighted <sdk_ubuntu_components_listitem_highlighted>` : bool
-  :ref:`leadingActions <sdk_ubuntu_components_listitem_leadingActions>` : ListItemActions
-  :ref:`selectMode <sdk_ubuntu_components_listitem_selectMode>` : bool
-  :ref:`selected <sdk_ubuntu_components_listitem_selected>` : bool
-  :ref:`swipeEnabled <sdk_ubuntu_components_listitem_swipeEnabled>` : bool
-  :ref:`swiped <sdk_ubuntu_components_listitem_swiped>` : bool
-  :ref:`trailingActions <sdk_ubuntu_components_listitem_trailingActions>` : ListItemActions

Signals
-------

-  :ref:`clicked <sdk_ubuntu_components_listitem_clicked>`\ ()
-  :ref:`contentMovementEnded <sdk_ubuntu_components_listitem_contentMovementEnded>`\ ()
-  :ref:`contentMovementStarted <sdk_ubuntu_components_listitem_contentMovementStarted>`\ ()
-  :ref:`pressAndHold <sdk_ubuntu_components_listitem_pressAndHold>`\ ()

Detailed Description
--------------------

The component provides two color properties which configures the item's background when normal or highlighted. This can be configured through :ref:`color <sdk_ubuntu_components_listitem_color>` and :ref:`highlightColor <sdk_ubuntu_components_listitem_highlightColor>` properties. The list item is highlighted if there is an action attached to it. This means that the list item must have an active component declared as child, at least leading- or trailing actions specified, or to have a slot connected to :ref:`clicked <sdk_ubuntu_components_listitem_clicked>` or :ref:`pressAndHold <sdk_ubuntu_components_listitem_pressAndHold>` signal. In any other case the component will not be highlighted, and :ref:`highlighted <sdk_ubuntu_components_listitem_highlighted>` property will not be toggled either. Also, there will be no highlight happening if the click happens on the active component.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    MainView {
       width: units.gu(40)
       height: units.gu(71)
       Column {
           anchors.fill: parent
           ListItem {
               Button {
                   text: "Press me"
               }
               onClicked: console.log("clicked on ListItem")
           }
           ListItem {
               leadingActions: ListItemActions {
                   actions: [
                       Action {
                           iconName: "delete"
                       }
                   ]
               }
               onClicked: console.log("clicked on ListItem with leadingActions set")
           }
           ListItem {
               trailingActions: ListItemActions {
                   actions: [
                       Action {
                           iconName: "edit"
                       }
                   ]
               }
               onClicked: console.log("clicked on ListItem with trailingActions set")
           }
           ListItem {
               // shall specify the height when Using ListItemLayout inside ListItem
               height: clickImplementedLayout.height + (divider.visible ? divider.height : 0)
               ListItemLayout {
                   id: clickImplementedLayout
                   title.text: "onClicked implemented"
               }
               onClicked: console.log("clicked on ListItem with onClicked implemented")
           }
           ListItem {
               // shall specify the height when Using ListItemLayout inside ListItem
               height: pressHoldLayout.height + (divider.visible ? divider.height : 0)
               ListItemLayout {
                   id: pressHoldLayout
                   title.text: "onPressAndHold implemented"
               }
               onPressAndHold: console.log("long-pressed on ListItem with onPressAndHold implemented")
           }
           ListItem {
               // shall specify the height when Using ListItemLayout inside ListItem
               height: noHighlightLayout.height + (divider.visible ? divider.height : 0)
               ListItemLayout {
                   id: noHighlightLayout
                   title.text: "No highlight"
               }
           }
       }
    }

:ref:`contentItem <sdk_ubuntu_components_listitem_contentItem>` holds all components and resources declared as child to :ref:`ListItem <sdk_ubuntu_components_listitem>`. Being an Item, all properties can be accessed or altered. However, make sure you never change **x**, **y**, **width**, **height** or **anchors** properties as those are controlled by the :ref:`ListItem <sdk_ubuntu_components_listitem>` itself when leading or trailing actions are revealed or when selectable and draggable mode is turned on, and thus might cause the component to misbehave. Anchors margins are free to alter.

Each :ref:`ListItem <sdk_ubuntu_components_listitem>` has a thin divider shown on the bottom of the component. This divider can be configured through the :ref:`divider <sdk_ubuntu_components_listitem_divider>` grouped property, which can configure its margins from the edges of the :ref:`ListItem <sdk_ubuntu_components_listitem>` as well as its visibility. When used in :ref:`ListView <sdk_qtquick_listview>` or :ref:`UbuntuListView <sdk_ubuntu_components_ubuntulistview>`, the last list item will not show the divider no matter of the visible property value set.

:ref:`ListItem <sdk_ubuntu_components_listitem>` can handle actions that can get swiped from front or back of the item. These actions are Action elements visualized in panels attached to the front or to the back of the item, and are revealed by swiping the item horizontally. The swipe is started only after the mouse/touch move had passed a given threshold. The actions are visualized by a panel, which is configurable through the `ListItemStyle </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/>`_ .

The actions are configured through the :ref:`leadingActions <sdk_ubuntu_components_listitem_leadingActions>` as well as :ref:`trailingActions <sdk_ubuntu_components_listitem_trailingActions>` properties.

.. code:: qml

    ListItem {
        id: listItem
        leadingActions: ListItemActions {
            actions: [
                Action {
                    iconName: "delete"
                    onTriggered: listItem.destroy()
                }
            ]
        }
        trailingActions: ListItemActions {
            actions: [
                Action {
                    iconName: "search"
                    onTriggered: {
                        // do some search
                    }
                }
            ]
        }
    }

**Note:** When a list item is swiped, it automatically connects both leading and trailing actions to the list item. If needed, the same :ref:`ListItemActions <sdk_ubuntu_components_listitemactions>` instance can be used in both leading and trailing side. In the following example the list item can be deleted through both leading and trailing actions using the same container:

.. code:: qml

    ListItem {
        id: listItem
        leadingActions: ListItemActions {
            actions: [
                Action {
                    iconName: "delete"
                    onTriggered: listItem.destroy()
                }
            ]
        }
        trailingActions: leadingActions
    }

The action is triggered only after all the animations are completed.

:ref:`ListItem <sdk_ubuntu_components_listitem>` provides a set of attached properties which are attached to each panel of the :ref:`ListItem <sdk_ubuntu_components_listitem>`. However not all properties are valid in all the circumstances.

The component is styled using the `ListItemStyle </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/>`_  style interface.

Selection mode
~~~~~~~~~~~~~~

The selection mode of a :ref:`ListItem <sdk_ubuntu_components_listitem>` is controlled by the :ref:`ViewItems::selectMode <sdk_ubuntu_components_viewitems_selectMode>` attached property. This property is attached to each parent item of the :ref:`ListItem <sdk_ubuntu_components_listitem>` exception being when used as delegate in :ref:`ListView <sdk_qtquick_listview>`, where the property is attached to the view itself.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    Flickable {
       width: units.gu(40)
       height: units.gu(50)
       // this will not have any effect
       ViewItems.selectMode: true
       Column {
           // this will work
           ViewItems.selectMode: false
           width: parent.width
           Repeater {
               model: 25
               ListItem {
                   Label {
                       text: "ListItem in Flickable #" + index
                   }
               }
           }
       }
    }

The indices selected are stored in :ref:`ViewItems::selectedIndices <sdk_ubuntu_components_viewitems_selectedIndices>` attached property, attached the same way as the :ref:`ViewItems::selectMode <sdk_ubuntu_components_viewitems_selectMode>` property is. This is a read/write property, meaning that initial selected item indices can be set up. The list contains the indices added in the order of selection, not sorted in any form.

**Note:** When in selectable mode, the :ref:`ListItem <sdk_ubuntu_components_listitem>` content is not disabled and :ref:`clicked <sdk_ubuntu_components_listitem_clicked>` and :ref:`pressAndHold <sdk_ubuntu_components_listitem_pressAndHold>` signals are also emitted. The only restriction the component implies is that leading and trailing actions cannot be swiped in. selectable property can be used to implement different behavior when :ref:`clicked <sdk_ubuntu_components_listitem_clicked>` or :ref:`pressAndHold <sdk_ubuntu_components_listitem_pressAndHold>`.

Dragging mode
~~~~~~~~~~~~~

The dragging mode is only supported on :ref:`ListView <sdk_qtquick_listview>`, as it requires a model supported view to be used. The drag mode can be activated through the :ref:`ViewItems::dragMode <sdk_ubuntu_components_viewitems_dragMode>` attached property, when attached to the :ref:`ListView <sdk_qtquick_listview>`. The items will show a panel as defined in the style, and dragging will be possible when initiated over this panel. Pressing or clicking anywhere else on the :ref:`ListItem <sdk_ubuntu_components_listitem>` will invoke the item's action assigned to the touched area.

The dragging is realized through the :ref:`ViewItems::dragUpdated <sdk_ubuntu_components_viewitems_dragUpdated>` signal, and a signal handler must be implemented in order to have the draging working. Implementations can drive the drag to be live (each time the dragged item is dragged over an other item will change the order of the items) or drag'n'drop way (the dragged item will be moved only when the user releases the item by dropping it to the desired position). The signal has a :ref:`ListItemDrag <sdk_ubuntu_components_listitemdrag>` *event* parameter, which gives detailed information about the drag event, like started, dragged up or downwards or dropped, allowing in this way various restrictions on the dragging.

The dragging event provides three states reported in :ref:`ListItemDrag::status <sdk_ubuntu_components_listitemdrag_status>` field, *Started*, *Moving* and *Dropped*. The other event field values depend on the status, therefore the status must be taken into account when implementing the signal handler. In case live dragging is needed, *Moving* state must be checked, and for non-live drag (drag'n'drop) the *Moving* state must be blocked by setting *event.accept = false*, otherwise the dragging will not know whether the model has been updated or not.

Example of live drag implementation:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListView {
        model: ListModel {
            Component.onCompleted: {
                for (var i = 0; i < 100; i++) {
                    append({tag: "List item #"+i});
                }
            }
        }
        delegate: ListItem {
            // shall specify the height when Using ListItemLayout inside ListItem
            height: modelLayout.height + (divider.visible ? divider.height : 0)
            ListItemLayout {
                id: modelLayout
                title.text: modelData
            }
            color: dragMode ? "lightblue" : "lightgray"
            onPressAndHold: ListView.view.ViewItems.dragMode =
                !ListView.view.ViewItems.dragMode
        }
        ViewItems.onDragUpdated: {
            if (event.status == ListItemDrag.Moving) {
                model.move(event.from, event.to, 1);
            }
        }
        moveDisplaced: Transition {
            UbuntuNumberAnimation {
                property: "y"
            }
        }
    }

Example of drag'n'drop implementation:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListView {
        model: ListModel {
            Component.onCompleted: {
                for (var i = 0; i < 100; i++) {
                    append({tag: "List item #"+i});
                }
            }
        }
        delegate: ListItem {
            // shall specify the height when Using ListItemLayout inside ListItem
            height: modelLayout.height + (divider.visible ? divider.height : 0)
            ListItemLayout {
                id: modelLayout
                title.text: modelData
            }
            color: dragMode ? "lightblue" : "lightgray"
            onPressAndHold: ListView.view.ViewItems.dragMode =
                !ListView.view.ViewItems.dragMode
        }
        ViewItems.onDragUpdated: {
            if (event.status == ListItemDrag.Moving) {
                // inform dragging that move is not performed
                event.accept = false;
            } else if (event.status == ListItemDrag.Dropped) {
                model.move(event.from, event.to, 1);
            }
        }
        moveDisplaced: Transition {
            UbuntuNumberAnimation {
                property: "y"
            }
        }
    }

:ref:`ListItem <sdk_ubuntu_components_listitem>` does not provide animations when the :ref:`ListView <sdk_qtquick_listview>`'s model is updated. In order to have animation, use :ref:`UbuntuListView <sdk_ubuntu_components_ubuntulistview>` or provide a transition animation to the moveDisplaced or displaced property of the :ref:`ListView <sdk_qtquick_listview>`.

Using non-QAbstractItemModel models
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Live dragging (moving content on the move) is only possible when the model is a derivate of the `QAbstractItemModel </sdk/apps/qml/QtQuick/qtquick-modelviewsdata-cppmodels/#qabstractitemmodel>`_ . When a list model is used, the :ref:`ListView <sdk_qtquick_listview>` will re-create all the items in the view, meaning that the dragged item will no longer be controlled by the dragging. However, non-live drag'n'drop operations can still be implemented with these kind of lists as well.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListView {
        model: ["plum", "peach", "pomegrenade", "pear", "banana"]
        delegate: ListItem {
            // shall specify the height when Using ListItemLayout inside ListItem
            height: modelLayout.height + (divider.visible ? divider.height : 0)
            ListItemLayout {
                id: modelLayout
                title.text: modelData
            }
            color: dragMode ? "lightblue" : "lightgray"
            onPressAndHold: ListView.view.ViewItems.dragMode =
                !ListView.view.ViewItems.dragMode
        }
        ViewItems.onDragUpdated: {
            if (event.status == ListItemDrag.Started) {
                return;
            } else if (event.status == ListItemDrag.Dropped) {
                var fromData = model[event.from];
                // must use a temporary variable as list manipulation
                // is not working directly on model
                var list = model;
                list.splice(event.from, 1);
                list.splice(event.to, 0, fromData);
                model = list;
            } else {
                event.accept = false;
            }
        }
    }

When using :ref:`DelegateModel <sdk_qtqml_delegatemodel>`, it must be taken into account when implementing the :ref:`ViewItems::dragUpdated <sdk_ubuntu_components_viewitems_dragUpdated>` signal handler.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListView {
        model: DelegateModel {
            model: ["apple", "pear", "plum", "peach", "nuts", "dates"]
            delegate: ListItem {
                // shall specify the height when Using ListItemLayout inside ListItem
                height: modelLayout.height + (divider.visible ? divider.height : 0)
                ListItemLayout {
                    id: modelLayout
                    title.text: modelData
                }
                onPressAndHold: dragMode = !dragMode;
            }
        }
        ViewItems.onDragUpdated: {
            if (event.status == ListItemDrag.Moving) {
                event.accept = false
            } else if (event.status == ListItemDrag.Dropped) {
                var fromData = model.model[event.from];
                var list = model.model;
                list.splice(event.from, 1);
                list.splice(event.to, 0, fromData);
                model.model = list;
            }
        }
    }

Expansion
~~~~~~~~~

Since Ubuntu.Components 1.3, :ref:`ListItem <sdk_ubuntu_components_listitem>` supports expansion. ListItems declared in a view can expand exclusively, having leading and trailing panes locked when expanded and to be collapsed when tapping outside of the expanded area. The expansion is driven by the :ref:`expansion <sdk_ubuntu_components_listitem_expansion>` group property, and the behavior by the :ref:`ViewItems::expansionFlags <sdk_ubuntu_components_viewitems_expansionFlags>` and :ref:`ViewItems::expandedIndices <sdk_ubuntu_components_viewitems_expandedIndices>` attached properties. Each :ref:`ListItem <sdk_ubuntu_components_listitem>` which is required to expand should set a proper height in the :ref:`expansion.height <sdk_ubuntu_components_listitem_expansion_height>` property, which should be bigger than the collapsed height of the :ref:`ListItem <sdk_ubuntu_components_listitem>` is. The expansion itself is driven by the :ref:`expansion.expanded <sdk_ubuntu_components_listitem_expansion_expanded>` property, which can be set freely depending on the use case, on click, on long press, etc.

The default expansion behavior is set to be exclusive and locked, meaning there can be only one :ref:`ListItem <sdk_ubuntu_components_listitem>` expanded within a view and neither leading nor trailing action panels cannot be swiped in. Expanding an other :ref:`ListItem <sdk_ubuntu_components_listitem>` will collapse the previosuly expanded one. There can be cases when tapping outside of the expanded area of a :ref:`ListItem <sdk_ubuntu_components_listitem>` we woudl need the expanded one to collapse automatically. This can be achieved by setting ``ViewItems.CollapseOnOutsidePress`` flag to :ref:`ViewItems::expansionFlags <sdk_ubuntu_components_viewitems_expansionFlags>`. This flag will also turn on ``ViewItems.Exclusive`` flag, as tapping outside practicly forbids more than one item to be expanded at a time.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListView {
        width: units.gu(40)
        height: units.gu(71)
        model: ListModel {
            Component.onCompleted: {
                for (var i = 0; i < 50; i++) {
                    append({data: i});
                }
            }
        }
        ViewItems.expansionFlags: ViewItems.CollapseOnOutsidePress
        delegate: ListItem {
            ListItemLayout {
                // shall specify the height when Using ListItemLayout inside ListItem
                height: modelLayout.height + (divider.visible ? divider.height : 0)
                id: modelLayout
                title.text: "Model item #" + modelData
            }
            trailingActions: ListItemActions {
                actions: [
                    Action {
                        icon: "search"
                    },
                    Action {
                        icon: "edit"
                    },
                    Action {
                        icon: "copy"
                    }
                ]
            }
            expansion.height: units.gu(15)
            onClicked: expansion.expanded = true
        }
    }

The example above collapses the expanded item whenever it is tapped or mouse pressed outside of the expanded list item.

**Note:** Set 0 to :ref:`ViewItems::expansionFlags <sdk_ubuntu_components_viewitems_expansionFlags>` if no restrictions on expanded items is required (i.e multiple expanded items are allowed, swiping leading/trailing actions when expanded).

**Note:** Do not bind :ref:`expansion.height <sdk_ubuntu_components_listitem_expansion_height>` to the :ref:`ListItem <sdk_ubuntu_components_listitem>`'s height as is will cause binding loops.

Note on styling
~~~~~~~~~~~~~~~

:ref:`ListItem <sdk_ubuntu_components_listitem>`'s styling differs from the other components styling, as :ref:`ListItem <sdk_ubuntu_components_listitem>` loads the style only when either of the leadin/trailing panels are swiped, or when the item enters in select- or drag mode. The component does not assume any visuals to be present in the style.

**See also** :ref:`ListItemActions <sdk_ubuntu_components_listitemactions>`, :ref:`ViewItems::dragMode <sdk_ubuntu_components_viewitems_dragMode>`, :ref:`ViewItems::dragUpdated <sdk_ubuntu_components_viewitems_dragUpdated>`, and `ListItemStyle </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/>`_ .

Property Documentation
----------------------

.. _sdk_ubuntu_components_listitem_action:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| action : :ref:`Action <sdk_ubuntu_components_action>`                                                                                                                                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the action which will be triggered when the :ref:`ListItem <sdk_ubuntu_components_listitem>` is clicked. :ref:`ListItem <sdk_ubuntu_components_listitem>` will not visualize the action, that is the responsibility of the components placed inside the list item. However, when set, the :ref:`ListItem <sdk_ubuntu_components_listitem>` will be highlighted on press.

If the action set has no value type set, :ref:`ListItem <sdk_ubuntu_components_listitem>` will set its type to **Action.Integer** and the :ref:`triggered <sdk_ubuntu_components_action_triggered>` signal will be getting the :ref:`ListItem <sdk_ubuntu_components_listitem>` index as *value* parameter.

Defaults no null.

.. _sdk_ubuntu_components_listitem_color:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| color : color                                                                                                                                                                                                                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Configures the color of the normal background. The default value is transparent.

.. _sdk_ubuntu_components_listitem_contentItem:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentItem : :ref:`Item <sdk_qtquick_item>`                                                                                                                                                                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

contentItem holds the components placed on a :ref:`ListItem <sdk_ubuntu_components_listitem>`. It is anchored to the :ref:`ListItem <sdk_ubuntu_components_listitem>` on left, top and right, and to the divider on the bottom, or to the :ref:`ListItem <sdk_ubuntu_components_listitem>`'s bottom in case the divider is not visible. The content is clipped by default. It is not recommended to change the anchors as the :ref:`ListItem <sdk_ubuntu_components_listitem>` controls them, however any other property value is free to change. Example:

.. code:: qml

    ListItem {
        contentItem.anchors {
            leftMargin: units.gu(2)
            rightMargin: units.gu(2)
            topMargin: units.gu(0.5)
            bottomMargin: units.gu(0.5)
        }
    }

.. _sdk_ubuntu_components_listitem_contentMoving:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] contentMoving : bool                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property describes whether the content is moving or not. The content is moved when swiped or when snapping in or out, and lasts till the snapping animation completes.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **divider group**                                                                                                                                                                                                                                                                                            |
+==============================================================================================================================================================================================================================================================================================================+
| divider.colorFrom : real                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| divider.colorTo : real                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

This grouped property configures the thin divider shown in the bottom of the component. The divider is not moved together with the content when swiped left or right to reveal the actions. **colorFrom** and **colorTo** configure the starting and ending colors of the divider. Beside these properties all Item specific properties can be accessed.

When **visible** is true, the :ref:`ListItem <sdk_ubuntu_components_listitem>`'s content size gets thinner with the divider's **thickness**. By default the divider is anchored to the bottom, left right of the :ref:`ListItem <sdk_ubuntu_components_listitem>`, and has a 2dp height.

.. _sdk_ubuntu_components_listitem_dragMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragMode : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property reports whether a :ref:`ListItem <sdk_ubuntu_components_listitem>` is draggable or not. While in drag mode, the list item content cannot be swiped. The default value is false.

.. _sdk_ubuntu_components_listitem_dragging:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| dragging : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property informs about an ongoing dragging on a :ref:`ListItem <sdk_ubuntu_components_listitem>`.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **expansion group**                                                                                                                                                                                                                                                                                          |
+==============================================================================================================================================================================================================================================================================================================+
| expansion.expanded : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| expansion.height : real                                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The group drefines the expansion state of the :ref:`ListItem <sdk_ubuntu_components_listitem>`.

This property group was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_listitem_highlightColor:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlightColor : color                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Configures the color when highlighted. Defaults to the theme palette's background color. If changed, it can be reset by assigning undefined as value.

.. _sdk_ubuntu_components_listitem_highlighted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| highlighted : bool                                                                                                                                                                                                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

True when the item is pressed. The items stays highlighted when the mouse or touch is moved horizontally. When in Flickable (or :ref:`ListView <sdk_qtquick_listview>`), the item gets un-highlighted (false) when the mouse or touch is moved towards the vertical direction causing the flickable to move.

Configures the color when highlighted. Defaults to the theme palette's background color.

An item is highlighted, thus highlight state toggled, when pressed and it has one of the following conditions fulfilled:

-  :ref:`leadingActions <sdk_ubuntu_components_listitem_leadingActions>` or :ref:`trailingActions <sdk_ubuntu_components_listitem_trailingActions>` set,
-  it has an :ref:`action <sdk_ubuntu_components_listitem_action>` attached
-  if the :ref:`ListItem <sdk_ubuntu_components_listitem>` has an active child component, such as a :ref:`Button <sdk_ubuntu_components_button>`, a :ref:`Switch <sdk_ubuntu_components_switch>`, etc.
-  in general, if an active (enabled and visible) **MouseArea** is added as a child component
-  :ref:`clicked <sdk_ubuntu_components_listitem_clicked>` signal handler is implemented or there is a slot or function connected to it
-  :ref:`pressAndHold <sdk_ubuntu_components_listitem_pressAndHold>` signal handler is implemented or there is a slot or function connected to it.

**Note:** Adding an active component does not mean the component will be activated when the :ref:`ListItem <sdk_ubuntu_components_listitem>` will be tapped/clicked outside of the component area. If such a behavior is needed, that must be done explicitly.

.. code:: qml

    ListItem {
        Label {
            text: "This is a label"
        }
        Switch {
            id: toggle
            anchors.right: parent.right
        }
        Component.onCompleted: clicked.connect(toggle.clicked)
    }

**See also** :ref:`action <sdk_ubuntu_components_listitem_action>`, :ref:`leadingActions <sdk_ubuntu_components_listitem_leadingActions>`, and :ref:`trailingActions <sdk_ubuntu_components_listitem_trailingActions>`.

.. _sdk_ubuntu_components_listitem_leadingActions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| leadingActions : :ref:`ListItemActions <sdk_ubuntu_components_listitemactions>`                                                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the actions and its configuration to be revealed when swiped from left to right.

**See also** :ref:`trailingActions <sdk_ubuntu_components_listitem_trailingActions>`.

.. _sdk_ubuntu_components_listitem_selectMode:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selectMode : bool                                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property reports whether the component and the view using the component is in selectable state. While selectable, the :ref:`ListItem <sdk_ubuntu_components_listitem>`'s leading- and trailing panels cannot be swiped in. :ref:`clicked <sdk_ubuntu_components_listitem_clicked>` and :ref:`pressAndHold <sdk_ubuntu_components_listitem_pressAndHold>` signals are also triggered. Selectable mode can be set either through this property or through the parent attached :ref:`ViewItems::selectMode <sdk_ubuntu_components_viewitems_selectMode>` property.

.. _sdk_ubuntu_components_listitem_selected:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| selected : bool                                                                                                                                                                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property drives whether a list item is selected or not. Defaults to false.

**See also** :ref:`ListItem::selectMode <sdk_ubuntu_components_listitem_selectMode>` and :ref:`ViewItems::selectMode <sdk_ubuntu_components_viewitems_selectMode>`.

.. _sdk_ubuntu_components_listitem_swipeEnabled:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| swipeEnabled : bool                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property enables the swiping of the leading- or trailing actions. This is useful when an overlay component needs to handle mouse moves or drag events without the :ref:`ListItem <sdk_ubuntu_components_listitem>` to steal the events. Defaults to true.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ListView {
        width: units.gu(40)
        height: units.gu(70)
        model: 25
        delegate: ListItem {
            swipeEnabled: !mouseArea.drag.active
            Rectangle {
                color: "red"
                width: units.gu(2)
                height: width
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    drag.target: parent
                }
            }
        }
    }

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_listitem_swiped:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [read-only] swiped : bool                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property notifies about the content being swiped so leading or trailing actions are visible.

This QML property was introduced in Ubuntu.Components 1.3.

.. _sdk_ubuntu_components_listitem_trailingActions:

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| trailingActions : :ref:`ListItemActions <sdk_ubuntu_components_listitemactions>`                                                                                                                                                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The property holds the actions and its configuration to be revealed when swiped from right to left.

**See also** :ref:`leadingActions <sdk_ubuntu_components_listitem_leadingActions>`.

Signal Documentation
--------------------

.. _sdk_ubuntu_components_listitem_clicked:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| clicked()                                                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The signal is emitted when the component gets released while the :ref:`highlighted <sdk_ubuntu_components_listitem_highlighted>` property is set. The signal is not emitted if the :ref:`ListItem <sdk_ubuntu_components_listitem>` content is swiped or when used in Flickable (or :ref:`ListView <sdk_qtquick_listview>`, `GridView </sdk/apps/qml/QtQuick/qtquick-draganddrop-example/#gridview>`_ ) and the Flickable gets moved.

If the :ref:`ListItem <sdk_ubuntu_components_listitem>` contains a component which contains an active :ref:`MouseArea <sdk_qtquick_mousearea>`, the clicked signal will be supressed when clicked over this area.

.. _sdk_ubuntu_components_listitem_contentMovementEnded:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentMovementEnded()                                                                                                                                                                                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The signal is emitted when the content movement has ended.

.. _sdk_ubuntu_components_listitem_contentMovementStarted:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| contentMovementStarted()                                                                                                                                                                                                                                                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The signal is emitted when the content movement has started.

.. _sdk_ubuntu_components_listitem_pressAndHold:

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pressAndHold()                                                                                                                                                                                                                                                                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The signal is emitted when the list item is long pressed.

If the :ref:`ListItem <sdk_ubuntu_components_listitem>` contains a component which contains an active :ref:`MouseArea <sdk_qtquick_mousearea>`, the pressAndHold signal will be supressed when pressed over this area.


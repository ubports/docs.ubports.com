Provides configuration for actions to be added to a ListItem.

+---------------------+--------------------------------+
| Import Statement:   | import Ubuntu.Components 1.3   |
+---------------------+--------------------------------+
| Since:              | Ubuntu.Components 1.2          |
+---------------------+--------------------------------+

Properties
----------

-  ****`actions </sdk/apps/qml/Ubuntu.Components/ListItemActions#actions-prop>`__****
   : list<Action>
-  ****`delegate </sdk/apps/qml/Ubuntu.Components/ListItemActions#delegate-prop>`__****
   : Component

Detailed Description
--------------------

`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ accepts actions
that can be configured to appear when swiped to left or right. The API
does not limit the number of actions to be assigned for leading or
trailing actions, however the design constraints are allowing a maximum
of 1 action on leading- and a maximum of 3 actions on trailing side of
the `ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__.

The
`actions </sdk/apps/qml/Ubuntu.Components/ListItemActions#actions-prop>`__
are Action instances or elements derived from Action. The default
visualization of the actions can be overridden using the
`delegate </sdk/apps/qml/Ubuntu.Components/ListItemActions#delegate-prop>`__
property, and the default implementation uses the ``name`` property of
the Action.

Using with ListViews
^^^^^^^^^^^^^^^^^^^^

`ListItemActions </sdk/apps/qml/Ubuntu.Components/ListItemActions/>`__
instances can be shared between
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ instances
within the same view. When shared, the memory footprint of the view will
be lot smaller, as there will be no individual action container created
for each list's actions. Having individual
`ListItemActions </sdk/apps/qml/Ubuntu.Components/ListItemActions/>`__
instances increases the memory footprint, and also has performance
impact on kinetic scrolling.

The examples below illustrate the worst and best practice when used in a
`ListView </sdk/apps/qml/QtQuick/ListView/>`__. The worst case:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        UbuntuListView {
            anchors.fill: parent
            model: 10000
            delegate: ListItem {
                leadingActions: ListItemActions {
                    actions: [
                        Action {
                            iconName: "delete"
                        }
                    ]
                }
                trailingActions: ListItemActions {
                    actions: [
                        Action {
                            iconName: "search"
                        },
                        Action {
                            iconName: "edit"
                        },
                        Action {
                            iconName: "copy"
                        }
                    ]
                }
            }
        }
    }

This example can be optimized by sharing the action arrays between the
items:

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        ListItemActions {
            id: leading
            actions: Action {
                iconName: "delete"
            }
        }
        ListItemActions {
            id: trailing
            actions: [
                Action {
                    iconName: "search"
                },
                Action {
                    iconName: "edit"
                },
                Action {
                    iconName: "copy"
                }
            ]
        }
        UbuntuListView {
            anchors.fill: parent
            model: 10000
            delegate: ListItem {
                leadingActions: leading
                trailingActions: trailing
            }
        }
    }

Action parameter types
^^^^^^^^^^^^^^^^^^^^^^

Actions handled by the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ are all
triggered with the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__'s index as
parameter. This index can either be the model index when used with
`ListView </sdk/apps/qml/QtQuick/ListView/>`__, or the child index from
the parentItem's childItems list. Actions can use this parameter to
identify the instance of the
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ on which it was
executed, in which case
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ will change the
type from ``Actions.None`` to ``Actions.Integer`` when it is triggered.

Property Documentation
----------------------

+--------------------------------------------------------------------------+
|        \ actions :                                                       |
| list<`Action </sdk/apps/qml/Ubuntu.Components/Action/>`__>               |
+--------------------------------------------------------------------------+

The property holds the actions to be displayed. It can hold instances
cached or declared in place. An example of cached actions:

.. code:: qml

    ListItemActions {
        id: cachedActions
        actions: [
            copyAction, searchAction, cutAction
        ]
    }

| 

+--------------------------------------------------------------------------+
|        \ delegate : `Component </sdk/apps/qml/QtQml/Component/>`__       |
+--------------------------------------------------------------------------+

The property holds the custom delegate to visualize the actions listed
in the
`ListItemActions </sdk/apps/qml/Ubuntu.Components/ListItemActions/>`__.
When set to null, the default delegate specified by the
`ListItemStyle </sdk/apps/qml/Ubuntu.Components/Styles.ListItemStyle/>`__
will be used.

`ListItemActions </sdk/apps/qml/Ubuntu.Components/ListItemActions/>`__
provides the ``action`` context property which contains the Action
instance currently visualized. Using this property delegates can access
the information to be visualized. The action is triggered by the panel
item holding the visualized action, therefore only visualization is
needed by the custom delegate. The other context property exposed to
delegates is the ``index``, which specifies the index of the action
visualized.

Specifying a custom delegate will not override the triggering logic of
the action, that will be still handled by the panel itself. However
custom delegates may still need to distinguish the pressed/released
state visually. This can be achieved using the ``pressed`` context
property, which informs the delegate about the pressed state of the
action.

The delegate height is set automatically by the panel item, only the
width must be specified which will be clamped between height and the
maximum width of the list item divided by the number of actions in the
list.

.. code:: qml

    import QtQuick 2.4
    import Ubuntu.Components 1.2
    MainView {
        width: units.gu(40)
        height: units.gu(71)
        UbuntuListView {
            anchors.fill: parent
            model: 50
            delegate: ListItem {
                trailingActions: actionsList
            }
            ListItemActions {
                id: actionsList
                delegate: Column {
                    width: height + units.gu(2)
                    Icon {
                        name: action.iconName
                        width: units.gu(3)
                        height: width
                        color: pressed ? "blue" : "lightblue"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Label {
                        text: action.text + "#" + index
                        width: parent.width
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                actions: Action {
                    iconName: "starred"
                    text: "Star"
                }
            }
        }
    }

**Note:** Putting a Rectangle in the delegate can be used to override
the color of the panel. Also all
`ListItem </sdk/apps/qml/Ubuntu.Components/ListItem/>`__ attached
properties can be used in the delegates.

Defaults to null.

| 

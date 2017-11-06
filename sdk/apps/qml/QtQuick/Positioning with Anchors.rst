.. _sdk_qtquick_positioning_with_anchors:

QtQuick Positioning with Anchors
================================


In addition to the more traditional `Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#grid>`_ , `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#row>`_ , and `Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts/#column>`_ , Qt Quick also provides a way to layout items using the concept of *anchors*. Each item can be thought of as having a set of 7 invisible "anchor lines": :ref:`left <sdk_qtquick_item_anchors.left>`, :ref:`horizontalCenter <sdk_qtquick_item_anchors.horizontalCenter>`, :ref:`right <sdk_qtquick_item_anchors.right>`, :ref:`top <sdk_qtquick_item_anchors.top>`, :ref:`verticalCenter <sdk_qtquick_item_anchors.verticalCenter>`, :ref:`baseline <sdk_qtquick_item_anchors.baseline>`, and :ref:`bottom <sdk_qtquick_item_anchors.bottom>`.

The baseline (not pictured above) corresponds to the imaginary line on which text would sit. For items with no text it is the same as *top*.

The Qt Quick anchoring system allows you to define relationships between the anchor lines of different items. For example, you can write:

.. code:: cpp

    Rectangle { id: rect1; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; ... }

In this case, the left edge of *rect2* is bound to the right edge of *rect1*, producing the following:

You can specify multiple anchors. For example:

.. code:: cpp

    Rectangle { id: rect1; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; anchors.top: rect1.bottom; ... }

By specifying multiple horizontal or vertical anchors you can control the size of an item. Below, *rect2* is anchored to the right of *rect1* and the left of *rect3*. If either of the blue rectangles are moved, *rect2* will stretch and shrink as necessary:

.. code:: cpp

    Rectangle { id: rect1; x: 0; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; anchors.right: rect3.left; ... }
    Rectangle { id: rect3; x: 150; ... }

There are also some convenience anchors. anchors.fill is a convenience that is the same as setting the left,right,top and bottom anchors to the left,right,top and bottom of the target item. anchors.centerIn is another convenience anchor, and is the same as setting the verticalCenter and horizontalCenter anchors to the verticalCenter and horizontalCenter of the target item.

The anchoring system also allows *margins* and *offsets* to be specified for an item's anchors. Margins specify the amount of empty space to leave to the outside of an item's anchor, while offsets allow positioning to be manipulated using the center anchor lines. An item can specify its anchor margins individually through :ref:`leftMargin <sdk_qtquick_item_anchors.leftMargin>`, :ref:`rightMargin <sdk_qtquick_item_anchors.rightMargin>`, :ref:`topMargin <sdk_qtquick_item_anchors.topMargin>` and :ref:`bottomMargin <sdk_qtquick_item_anchors.bottomMargin>`, or use :ref:`anchors.margins <sdk_qtquick_item_anchors_margins>` to specify the same margin value for all four edges. Anchor offsets are specified using :ref:`horizontalCenterOffset <sdk_qtquick_item_anchors.horizontalCenterOffset>`, :ref:`verticalCenterOffset <sdk_qtquick_item_anchors.verticalCenterOffset>` and :ref:`baselineOffset <sdk_qtquick_item_anchors.baselineOffset>`.

The following example specifies a left margin:

.. code:: cpp

    Rectangle { id: rect1; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; anchors.leftMargin: 5; ... }

In this case, a margin of 5 pixels is reserved to the left of *rect2*, producing the following:

**Note:** Anchor margins only apply to anchors; they are *not* a generic means of applying margins to an :ref:`Item <sdk_qtquick_item>`. If an anchor margin is specified for an edge but the item is not anchored to any item on that edge, the margin is not applied.

Qt Quick provides the :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` type for specifying the anchors in a state.

.. code:: qml

    State {
        name: "anchorRight"
        AnchorChanges {
            target: rect2
            anchors.right: parent.right
            anchors.left: undefined  //remove the left anchor
        }
    }

:ref:`AnchorChanges <sdk_qtquick_anchorchanges>` can be animated using the :ref:`AnchorAnimation <sdk_qtquick_anchoranimation>` type.

.. code:: qml

    Transition {
        AnchorAnimation {}  //animates any AnchorChanges in the corresponding state change
    }

Anchors can also be changed imperatively within JavaScript. However, these changes should be carefully ordered, or they may produce unexpected outcomes. The following example illustrates the issue:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: cpp                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|         //bad code                                                                                                                                     |                                                                                                                                                        |
|         Rectangle {                                                                                                                                    |                                                                                                                                                        |
|             width: 50                                                                                                                                  |                                                                                                                                                        |
|             anchors.left: parent.left                                                                                                                  |                                                                                                                                                        |
|             function reanchorToRight() {                                                                                                               |                                                                                                                                                        |
|                 anchors.right = parent.right                                                                                                           |                                                                                                                                                        |
|                 anchors.left = undefined                                                                                                               |                                                                                                                                                        |
|             }                                                                                                                                          |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

When ``reanchorToRight`` is called, the function first sets the right anchor. At that point, both left and right anchors are set, and the item will be stretched horizontally to fill its parent. When the left anchor is unset, the new width will remain. Thus when updating anchors within JavaScript, you should first unset any anchors that are no longer required, and only then set any new anchors that are required, as shown below:

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| .. code:: qml                                                                                                                                          |                                                                                                                                                        |
|                                                                                                                                                        |                                                                                                                                                        |
|         Rectangle {                                                                                                                                    |                                                                                                                                                        |
|             width: 50                                                                                                                                  |                                                                                                                                                        |
|             anchors.left: parent.left                                                                                                                  |                                                                                                                                                        |
|             function reanchorToRight() {                                                                                                               |                                                                                                                                                        |
|                 anchors.left = undefined                                                                                                               |                                                                                                                                                        |
|                 anchors.right = parent.right                                                                                                           |                                                                                                                                                        |
|             }                                                                                                                                          |                                                                                                                                                        |
|         }                                                                                                                                              |                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

Because the evaluation order of bindings is not defined, it is not recommended to change anchors via conditional bindings, as this can lead to the ordering issue described above. In the following example the Rectangle will eventually grow to the full width of its parent, because both left and right anchors will be simultaneously set during binding update.

.. code:: cpp

    //bad code
    Rectangle {
        width: 50; height: 50
        anchors.left: state == "right" ? undefined : parent.left;
        anchors.right: state == "right" ? parent.right : undefined;
    }

This should be rewritten to use :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` instead, as :ref:`AnchorChanges <sdk_qtquick_anchorchanges>` will automatically handle ordering issues internally.

For performance reasons, you can only anchor an item to its siblings and direct parent. For example, the following anchor is invalid and would produce a warning:

.. code:: cpp

    //bad code
    Item {
        id: group1
        Rectangle { id: rect1; ... }
    }
    Item {
        id: group2
        Rectangle { id: rect2; anchors.left: rect1.right; ... }    // invalid anchor!
    }

Also, anchor-based layouts cannot be mixed with absolute positioning. If an item specifies its :ref:`x <sdk_qtquick_item_x>` position and also sets :ref:`anchors.left <sdk_qtquick_item_anchors_left>`, or anchors its left and right edges but additionally sets a :ref:`width <sdk_qtquick_item_width>`, the result is undefined, as it would not be clear whether the item should use anchoring or absolute positioning. The same can be said for setting an item's :ref:`y <sdk_qtquick_item_y>` and :ref:`height <sdk_qtquick_item_height>` with :ref:`anchors.top <sdk_qtquick_item_anchors_top>` and :ref:`anchors.bottom <sdk_qtquick_item_anchors_bottom>`, or setting :ref:`anchors.fill <sdk_qtquick_item_anchors_fill>` as well as :ref:`width <sdk_qtquick_item_width>` or :ref:`height <sdk_qtquick_item_height>`. The same applies when using positioners such as Row and Grid, which may set the item's :ref:`x <sdk_qtquick_item_x>` and :ref:`y <sdk_qtquick_item_y>` properties. If you wish to change from using anchor-based to absolute positioning, you can clear an anchor value by setting it to ``undefined``.


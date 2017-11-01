

In addition to the more traditional
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__,
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__, and
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
Qt Quick also provides a way to layout items using the concept of
*anchors*. Each item can be thought of as having a set of 7 invisible
"anchor lines": `left </sdk/apps/qml/QtQuick/Item#anchors.left-prop>`__,
`horizontalCenter </sdk/apps/qml/QtQuick/Item#anchors.horizontalCenter-prop>`__,
`right </sdk/apps/qml/QtQuick/Item#anchors.right-prop>`__,
`top </sdk/apps/qml/QtQuick/Item#anchors.top-prop>`__,
`verticalCenter </sdk/apps/qml/QtQuick/Item#anchors.verticalCenter-prop>`__,
`baseline </sdk/apps/qml/QtQuick/Item#anchors.baseline-prop>`__, and
`bottom </sdk/apps/qml/QtQuick/Item#anchors.bottom-prop>`__.

|image0|

The baseline (not pictured above) corresponds to the imaginary line on
which text would sit. For items with no text it is the same as *top*.

The Qt Quick anchoring system allows you to define relationships between
the anchor lines of different items. For example, you can write:

.. code:: cpp

    Rectangle { id: rect1; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; ... }

In this case, the left edge of *rect2* is bound to the right edge of
*rect1*, producing the following:

|image1|

You can specify multiple anchors. For example:

.. code:: cpp

    Rectangle { id: rect1; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; anchors.top: rect1.bottom; ... }

|image2|

By specifying multiple horizontal or vertical anchors you can control
the size of an item. Below, *rect2* is anchored to the right of *rect1*
and the left of *rect3*. If either of the blue rectangles are moved,
*rect2* will stretch and shrink as necessary:

.. code:: cpp

    Rectangle { id: rect1; x: 0; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; anchors.right: rect3.left; ... }
    Rectangle { id: rect3; x: 150; ... }

|image3|

There are also some convenience anchors. anchors.fill is a convenience
that is the same as setting the left,right,top and bottom anchors to the
left,right,top and bottom of the target item. anchors.centerIn is
another convenience anchor, and is the same as setting the
verticalCenter and horizontalCenter anchors to the verticalCenter and
horizontalCenter of the target item.

.. rubric:: Anchor Margins and Offsets
   :name: anchor-margins-and-offsets

The anchoring system also allows *margins* and *offsets* to be specified
for an item's anchors. Margins specify the amount of empty space to
leave to the outside of an item's anchor, while offsets allow
positioning to be manipulated using the center anchor lines. An item can
specify its anchor margins individually through
`leftMargin </sdk/apps/qml/QtQuick/Item#anchors.leftMargin-prop>`__,
`rightMargin </sdk/apps/qml/QtQuick/Item#anchors.rightMargin-prop>`__,
`topMargin </sdk/apps/qml/QtQuick/Item#anchors.topMargin-prop>`__ and
`bottomMargin </sdk/apps/qml/QtQuick/Item#anchors.bottomMargin-prop>`__,
or use
`anchors.margins </sdk/apps/qml/QtQuick/Item#anchors.margins-prop>`__ to
specify the same margin value for all four edges. Anchor offsets are
specified using
`horizontalCenterOffset </sdk/apps/qml/QtQuick/Item#anchors.horizontalCenterOffset-prop>`__,
`verticalCenterOffset </sdk/apps/qml/QtQuick/Item#anchors.verticalCenterOffset-prop>`__
and
`baselineOffset </sdk/apps/qml/QtQuick/Item#anchors.baselineOffset-prop>`__.

|image4|

The following example specifies a left margin:

.. code:: cpp

    Rectangle { id: rect1; ... }
    Rectangle { id: rect2; anchors.left: rect1.right; anchors.leftMargin: 5; ... }

In this case, a margin of 5 pixels is reserved to the left of *rect2*,
producing the following:

|image5|

**Note:** Anchor margins only apply to anchors; they are *not* a generic
means of applying margins to an `Item </sdk/apps/qml/QtQuick/Item/>`__.
If an anchor margin is specified for an edge but the item is not
anchored to any item on that edge, the margin is not applied.

.. rubric:: Changing Anchors
   :name: changing-anchors

Qt Quick provides the
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ type for
specifying the anchors in a state.

.. code:: qml

    State {
        name: "anchorRight"
        AnchorChanges {
            target: rect2
            anchors.right: parent.right
            anchors.left: undefined  //remove the left anchor
        }
    }

`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ can be animated
using the `AnchorAnimation </sdk/apps/qml/QtQuick/AnchorAnimation/>`__
type.

.. code:: qml

    Transition {
        AnchorAnimation {}  //animates any AnchorChanges in the corresponding state change
    }

Anchors can also be changed imperatively within JavaScript. However,
these changes should be carefully ordered, or they may produce
unexpected outcomes. The following example illustrates the issue:

+--------------------------------------+--------------------------------------+
| .. code:: cpp                        | |image6|                             |
|                                      |                                      |
|         //bad code                   |                                      |
|         Rectangle {                  |                                      |
|             width: 50                |                                      |
|             anchors.left: parent.lef |                                      |
| t                                    |                                      |
|             function reanchorToRight |                                      |
| () {                                 |                                      |
|                 anchors.right = pare |                                      |
| nt.right                             |                                      |
|                 anchors.left = undef |                                      |
| ined                                 |                                      |
|             }                        |                                      |
|         }                            |                                      |
+--------------------------------------+--------------------------------------+

When ``reanchorToRight`` is called, the function first sets the right
anchor. At that point, both left and right anchors are set, and the item
will be stretched horizontally to fill its parent. When the left anchor
is unset, the new width will remain. Thus when updating anchors within
JavaScript, you should first unset any anchors that are no longer
required, and only then set any new anchors that are required, as shown
below:

+--------------------------------------+--------------------------------------+
| .. code:: qml                        | |image7|                             |
|                                      |                                      |
|         Rectangle {                  |                                      |
|             width: 50                |                                      |
|             anchors.left: parent.lef |                                      |
| t                                    |                                      |
|             function reanchorToRight |                                      |
| () {                                 |                                      |
|                 anchors.left = undef |                                      |
| ined                                 |                                      |
|                 anchors.right = pare |                                      |
| nt.right                             |                                      |
|             }                        |                                      |
|         }                            |                                      |
+--------------------------------------+--------------------------------------+

Because the evaluation order of bindings is not defined, it is not
recommended to change anchors via conditional bindings, as this can lead
to the ordering issue described above. In the following example the
Rectangle will eventually grow to the full width of its parent, because
both left and right anchors will be simultaneously set during binding
update.

.. code:: cpp

    //bad code
    Rectangle {
        width: 50; height: 50
        anchors.left: state == "right" ? undefined : parent.left;
        anchors.right: state == "right" ? parent.right : undefined;
    }

This should be rewritten to use
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ instead, as
`AnchorChanges </sdk/apps/qml/QtQuick/AnchorChanges/>`__ will
automatically handle ordering issues internally.

.. rubric:: Restrictions
   :name: restrictions

For performance reasons, you can only anchor an item to its siblings and
direct parent. For example, the following anchor is invalid and would
produce a warning:

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

Also, anchor-based layouts cannot be mixed with absolute positioning. If
an item specifies its `x </sdk/apps/qml/QtQuick/Item#x-prop>`__ position
and also sets
`anchors.left </sdk/apps/qml/QtQuick/Item#anchors.left-prop>`__, or
anchors its left and right edges but additionally sets a
`width </sdk/apps/qml/QtQuick/Item#width-prop>`__, the result is
undefined, as it would not be clear whether the item should use
anchoring or absolute positioning. The same can be said for setting an
item's `y </sdk/apps/qml/QtQuick/Item#y-prop>`__ and
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__ with
`anchors.top </sdk/apps/qml/QtQuick/Item#anchors.top-prop>`__ and
`anchors.bottom </sdk/apps/qml/QtQuick/Item#anchors.bottom-prop>`__, or
setting `anchors.fill </sdk/apps/qml/QtQuick/Item#anchors.fill-prop>`__
as well as `width </sdk/apps/qml/QtQuick/Item#width-prop>`__ or
`height </sdk/apps/qml/QtQuick/Item#height-prop>`__. The same applies
when using positioners such as Row and Grid, which may set the item's
`x </sdk/apps/qml/QtQuick/Item#x-prop>`__ and
`y </sdk/apps/qml/QtQuick/Item#y-prop>`__ properties. If you wish to
change from using anchor-based to absolute positioning, you can clear an
anchor value by setting it to ``undefined``.

.. |image0| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/edges_qml.png
.. |image1| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/edge1.png
.. |image2| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/edge3.png
.. |image3| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/edge4.png
.. |image4| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/margins_qml.png
.. |image5| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/edge2.png
.. |image6| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/anchor_ordering_bad.png
.. |image7| image:: /media/sdk/apps/qml/qtquick-positioning-anchors/images/anchor_ordering.png


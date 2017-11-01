Specifies items under transition in a view

+---------------------+----------------------+
| Import Statement:   | import QtQuick 2.4   |
+---------------------+----------------------+

Attached Properties
-------------------

-  ****`destination </sdk/apps/qml/QtQuick/ViewTransition#destination-attached-prop>`__****
   : list
-  ****`index </sdk/apps/qml/QtQuick/ViewTransition#index-attached-prop>`__****
   : list
-  ****`item </sdk/apps/qml/QtQuick/ViewTransition#item-attached-prop>`__****
   : list
-  ****`targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__****
   : list
-  ****`targetItems </sdk/apps/qml/QtQuick/ViewTransition#targetItems-attached-prop>`__****
   : list

Detailed Description
--------------------

With `ListView </sdk/apps/qml/QtQuick/ListView/>`__ and
`GridView </sdk/apps/qml/QtQuick/draganddrop#gridview>`__, it is
possible to specify transitions that should be applied whenever the
items in the view change as a result of modifications to the view's
model. They both have the following properties that can be set to the
appropriate transitions to be run for various operations:

-  ``populate`` - the transition to apply to the items created initially
   for the view, or when the model changes
-  ``add`` - the transition to apply to items that are added to the view
   after it has been created
-  ``remove`` - the transition to apply to items that are removed from
   the view
-  ``move`` - the transition to apply to items that are moved within the
   view (i.e. as a result of a move operation in the model)
-  ``displaced`` - the generic transition to be applied to any items
   that are displaced by an add, move or remove operation
-  ``addDisplaced``, ``removeDisplaced`` and ``moveDisplaced`` - the
   transitions to be applied when items are displaced by add, move, or
   remove operations, respectively (these override the generic displaced
   transition if specified)

For the `Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__,
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__ and
`Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#flow>`__
positioner types, which operate with collections of child items rather
than data models, the following properties are used instead:

-  ``populate`` - the transition to apply to items that have been added
   to the positioner at the time of its creation
-  ``add`` - the transition to apply to items that are added to or
   reparented to the positioner, or items that have become
   `visible </sdk/apps/qml/QtQuick/Item#visible-prop>`__
-  ``move`` - the transition to apply to items that have moved within
   the positioner, including when they are displaced due to the addition
   or removal of other items, or when items are otherwise rearranged
   within the positioner, or when items are repositioned due to the
   resizing of other items in the positioner

View transitions have access to a
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ attached
property that provides details of the items that are under transition
and the operation that triggered the transition. Since view transitions
are run once per item, these details can be used to customize each
transition for each individual item.

The `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ attached
property provides the following properties specific to the item to which
the transition is applied:

-  `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item - the
   item that is under transition
-  `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.index -
   the index of this item
-  `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.destination
   - the (x,y) point to which this item is moving for the relevant view
   operation

In addition, `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__
provides properties specific to the items which are the target of the
operation that triggered the transition:

-  `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__
   - the indexes of the target items
-  `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetItems </sdk/apps/qml/QtQuick/ViewTransition#targetItems-attached-prop>`__
   - the target items themselves

(Note that for the
`Row </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#row>`__,
`Column </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#column>`__,
`Grid </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#grid>`__ and
`Flow </sdk/apps/qml/QtQuick/qtquick-positioning-layouts#flow>`__
positioner types, the ``move`` transition only provides these two
additional details when the transition is triggered by the addition of
items to a positioner.)

View transitions can be written without referring to any of the
attributes listed above. These attributes merely provide extra details
that are useful for customising view transitions.

Following is an introduction to view transitions and the ways in which
the `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ attached
property can be used to augment view transitions.

View transitions: a simple example
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Here is a basic example of the use of view transitions. The view below
specifies transitions for the ``add`` and ``displaced`` properties,
which will be run when items are added to the view:

.. code:: qml

    ListView {
        width: 240; height: 320
        model: ListModel {}
        delegate: Rectangle {
            width: 100; height: 30
            border.width: 1
            color: "lightsteelblue"
            Text {
                anchors.centerIn: parent
                text: name
            }
        }
        add: Transition {
            NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 400 }
            NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 400 }
        }
        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
        }
        focus: true
        Keys.onSpacePressed: model.insert(0, { "name": "Item " + model.count })
    }

When the space key is pressed, adding an item to the model, the new item
will fade in and increase in scale over 400 milliseconds as it is added
to the view. Also, any item that is displaced by the addition of a new
item will animate to its new position in the view over 400 milliseconds,
as specified by the ``displaced`` transition.

If five items were inserted in succession at index 0, the effect would
be this:

|image0|

Notice that the
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ objects
above do not need to specify a ``target`` to animate the appropriate
item. Also, the
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ in the
``addTransition`` does not need to specify the ``to`` value to move the
item to its correct position in the view. This is because the view
implicitly sets the ``target`` and ``to`` values with the correct item
and final item position values if these properties are not explicitly
defined.

At its simplest, a view transition may just animate an item to its new
position following a view operation, just as the ``displaced``
transition does above, or animate some item properties, as in the
``add`` transition above. Additionally, a view transition may make use
of the `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__
attached property to customize animation behavior for different items.
Following are some examples of how this can be achieved.

Using the ViewTransition attached property
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As stated, the various
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ properties
provide details specific to the individual item being transitioned as
well as the operation that triggered the transition. In the animation
above, five items are inserted in succession at index 0. When the fifth
and final insertion takes place, adding "Item 4" to the view, the
``add`` transition is run once (for the inserted item) and the
``displaced`` transition is run four times (once for each of the four
existing items in the view).

At this point, if we examined the ``displaced`` transition that was run
for the bottom displaced item ("Item 0"), the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ property
values provided to this transition would be as follows:

+-----------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| Property                                                                                                                                            | Value                                                        | Explanation                                                                                             |
+=====================================================================================================================================================+==============================================================+=========================================================================================================+
| `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item                                                                                     | "Item 0" delegate instance                                   | The "Item 0" `Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ object itself                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.index                                                                                    | ``int`` value of 4                                           | The index of "Item 0" within the model following the add operation                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.destination                                                                              | point value of (0, 120)                                      | The position that "Item 0" is moving to                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__   | ``int`` array, just contains the integer "0" (zero)          | The index of "Item 4", the new item added to the view                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetItems </sdk/apps/qml/QtQuick/ViewTransition#targetItems-attached-prop>`__       | object array, just contains the "Item 4" delegate instance   | The "Item 4" `Rectangle </sdk/apps/qml/QtQuick/Rectangle/>`__ object - the new item added to the view   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+

The
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__
and
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetItems </sdk/apps/qml/QtQuick/ViewTransition#targetItems-attached-prop>`__
lists provide the items and indexes of all delegate instances that are
the targets of the relevant operation. For an add operation, these are
all the items that are added into the view; for a remove, these are all
the items removed from the view, and so on. (Note these lists will only
contain references to items that have been created within the view or
its cached items; targets that are not within the visible area of the
view or within the item cache will not be accessible.)

So, while the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item,
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.index and
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.destination
values vary for each individual transition that is run, the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__
and
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetItems </sdk/apps/qml/QtQuick/ViewTransition#targetItems-attached-prop>`__
values are the same for every ``add`` and ``displaced`` transition that
is triggered by a particular add operation.

Delaying animations based on index
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Since each view transition is run once for each item affected by the
transition, the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ properties
can be used within a transition to define custom behavior for each
item's transition. For example, the
`ListView </sdk/apps/qml/QtQuick/ListView/>`__ in the previous example
could use this information to create a ripple-type effect on the
movement of the displaced items.

This can be achieved by modifying the ``displaced`` transition so that
it delays the animation of each displaced item based on the difference
between its index (provided by
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.index) and
the first removed index (provided by
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.\ `targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__):

.. code:: qml

        displaced: Transition {
            id: dispTrans
            SequentialAnimation {
                PauseAnimation {
                    duration: (dispTrans.ViewTransition.index -
                            dispTrans.ViewTransition.targetIndexes[0]) * 100
                }
                NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
            }
        }

Each displaced item delays its animation by an additional 100
milliseconds, producing a subtle ripple-type effect when items are
displaced by the add, like this:

|image1|

Animating items to intermediate positions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item
property gives a reference to the item to which the transition is being
applied. This can be used to access any of the item's attributes, custom
``property`` values, and so on.

Below is a modification of the ``displaced`` transition from the
previous example. It adds a
`ParallelAnimation </sdk/apps/qml/QtQuick/ParallelAnimation/>`__ with
nested `NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__
objects that reference
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item to
access each item's ``x`` and ``y`` values at the start of their
transitions. This allows each item to animate to an intermediate
position relative to its starting point for the transition, before
animating to its final position in the view:

.. code:: qml

        displaced: Transition {
            id: dispTrans
            SequentialAnimation {
                PauseAnimation {
                    duration: (dispTrans.ViewTransition.index -
                            dispTrans.ViewTransition.targetIndexes[0]) * 100
                }
                ParallelAnimation {
                    NumberAnimation {
                        property: "x"; to: dispTrans.ViewTransition.item.x + 20
                        easing.type: Easing.OutQuad
                    }
                    NumberAnimation {
                        property: "y"; to: dispTrans.ViewTransition.item.y + 50
                        easing.type: Easing.OutQuad
                    }
                }
                NumberAnimation { properties: "x,y"; duration: 500; easing.type: Easing.OutBounce }
            }
        }

Now, a displaced item will first move to a position of (20, 50) relative
to its starting position, and then to its final, correct position in the
view:

|image2|

Since the final
`NumberAnimation </sdk/apps/qml/QtQuick/NumberAnimation/>`__ does not
specify a ``to`` value, the view implicitly sets this value to the
item's final position in the view, and so this last animation will move
this item to the correct place. If the transition requires the final
position of the item for some calculation, this is accessible through
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.destination.

Instead of using multiple NumberAnimations, you could use a
`PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__ to
animate an item over a curved path. For example, the ``add`` transition
in the previous example could be augmented with a
`PathAnimation </sdk/apps/qml/QtQuick/animation#pathanimation>`__ as
follows: to animate newly added items along a path:

.. code:: qml

        add: Transition {
            id: addTrans
            NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 400 }
            NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 400 }
            PathAnimation {
                duration: 1000
                path: Path {
                    startX: addTrans.ViewTransition.destination.x + 200
                    startY: addTrans.ViewTransition.destination.y + 200
                    PathCurve { relativeX: -100; relativeY: -50 }
                    PathCurve { relativeX: 50; relativeY: -150 }
                    PathCurve {
                        x: addTrans.ViewTransition.destination.x
                        y: addTrans.ViewTransition.destination.y
                    }
                }
            }
        }

This animates newly added items along a path. Notice that each path is
specified relative to each item's final destination point, so that items
inserted at different indexes start their paths from different
positions:

|image3|

Handling interrupted animations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A view transition may be interrupted at any time if a different view
transition needs to be applied while the original transition is in
progress. For example, say Item A is inserted at index 0 and undergoes
an "add" transition; then, Item B is inserted at index 0 in quick
succession before Item A's transition has finished. Since Item B is
inserted before Item A, it will displace Item A, causing the view to
interrupt Item A's "add" transition mid-way and start a "displaced"
transition on Item A instead.

For simple animations that simply animate an item's movement to its
final destination, this interruption is unlikely to require additional
consideration. However, if a transition changes other properties, this
interruption may cause unwanted side effects. Consider the first example
on this page, repeated below for convenience:

.. code:: qml

    ListView {
        width: 240; height: 320
        model: ListModel {}
        delegate: Rectangle {
            width: 100; height: 30
            border.width: 1
            color: "lightsteelblue"
            Text {
                anchors.centerIn: parent
                text: name
            }
        }
        add: Transition {
            NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 400 }
            NumberAnimation { property: "scale"; from: 0; to: 1.0; duration: 400 }
        }
        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
        }
        focus: true
        Keys.onSpacePressed: model.insert(0, { "name": "Item " + model.count })
    }

If multiple items are added in rapid succession, without waiting for a
previous transition to finish, this is the result:

|image4|

Each newly added item undergoes an ``add`` transition, but before the
transition can finish, another item is added, displacing the previously
added item. Because of this, the ``add`` transition on the previously
added item is interrupted and a ``displaced`` transition is started on
the item instead. Due to the interruption, the ``opacity`` and ``scale``
animations have not completed, thus producing items with opacity and
scale that are below 1.0.

To fix this, the ``displaced`` transition should additionally ensure the
item properties are set to the end values specified in the ``add``
transition, effectively resetting these values whenever an item is
displaced. In this case, it means setting the item opacity and scale to
1.0:

.. code:: qml

        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
            // ensure opacity and scale values return to 1.0
            NumberAnimation { property: "opacity"; to: 1.0 }
            NumberAnimation { property: "scale"; to: 1.0 }
        }

Now, when an item's ``add`` transition is interrupted, its opacity and
scale are animated to 1.0 upon displacement, avoiding the erroneous
visual effects from before:

|image5|

The same principle applies to any combination of view transitions. An
added item may be moved before its add transition finishes, or a moved
item may be removed before its moved transition finishes, and so on; so,
the rule of thumb is that every transition should handle the same set of
properties.

Restrictions regarding ScriptAction
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When a view transition is initialized, any property bindings that refer
to the `ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__
attached property are evaluated in preparation for the transition. Due
to the nature of the internal construction of a view transition, the
attributes of the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ attached
property are only valid for the relevant item when the transition is
initialized, and may not be valid when the transition is actually run.

Therefore, a `ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__
within a view transition should not refer to the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__ attached
property, as it may not refer to the expected values at the time that
the `ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ is actually
invoked. Consider the following example:

.. code:: qml

    ListView {
        width: 240; height: 320
        model: ListModel {
            Component.onCompleted: {
                for (var i=0; i<8; i++)
                    append({"name": i})
            }
        }
        delegate: Rectangle {
            width: 100; height: 30
            border.width: 1
            color: "lightsteelblue"
            Text {
                anchors.centerIn: parent
                text: name
            }
            objectName: name
        }
        move: Transition {
            id: moveTrans
            SequentialAnimation {
                ColorAnimation { property: "color"; to: "yellow"; duration: 400 }
                NumberAnimation { properties: "x,y"; duration: 800; easing.type: Easing.OutBack }
                ScriptAction { script: moveTrans.ViewTransition.item.color = "lightsteelblue" }
            }
        }
        displaced: Transition {
            NumberAnimation { properties: "x,y"; duration: 400; easing.type: Easing.OutBounce }
        }
        focus: true
        Keys.onSpacePressed: model.move(5, 1, 3)
    }

When the space key is pressed, three items are moved from index 5 to
index 1. For each moved item, the ``moveTransition`` sequence presumably
animates the item's color to "yellow", then animates it to its final
position, then changes the item color back to "lightsteelblue" using a
`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__. However, when
run, the transition does not produce the intended result:

|image6|

Only the last moved item is returned to the "lightsteelblue" color; the
others remain yellow. This is because the
`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ is not run until
after the transition has already been initialized, by which time the
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item value
has changed to refer to a different item; the item that the script had
intended to refer to is not the one held by
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item at the
time the `ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ is
actually invoked.

In this instance, to avoid this issue, the view could set the property
using a `PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__
instead:

.. code:: qml

        move: Transition {
            id: moveTrans
            SequentialAnimation {
                ColorAnimation { property: "color"; to: "yellow"; duration: 400 }
                NumberAnimation { properties: "x,y"; duration: 800; easing.type: Easing.OutBack }
                //ScriptAction { script: moveTrans.ViewTransition.item.color = "lightsteelblue" } BAD!
                PropertyAction { property: "color"; value: "lightsteelblue" }
            }
        }

When the transition is initialized, the
`PropertyAction </sdk/apps/qml/QtQuick/PropertyAction/>`__ ``target``
will be set to the respective
`ViewTransition </sdk/apps/qml/QtQuick/ViewTransition/>`__.item for the
transition and will later run with the correct item target as expected.

Attached Property Documentation
-------------------------------

+--------------------------------------------------------------------------+
|        \ ViewTransition.destination : list                               |
+--------------------------------------------------------------------------+

This attached property holds the final destination position for the
transitioned item within the view.

This property value is a point with ``x`` and ``y`` properties.

| 

+--------------------------------------------------------------------------+
|        \ ViewTransition.index : list                                     |
+--------------------------------------------------------------------------+

This attached property holds the index of the item that is being
transitioned.

Note that if the item is being moved, this property holds the index that
the item is moving to, not from.

| 

+--------------------------------------------------------------------------+
|        \ ViewTransition.item : list                                      |
+--------------------------------------------------------------------------+

This attached property holds the item that is being transitioned.

**Warning:** This item should not be kept and referred to outside of the
transition as it may become invalid as the view changes.

| 

+--------------------------------------------------------------------------+
|        \ ViewTransition.targetIndexes : list                             |
+--------------------------------------------------------------------------+

This attached property holds a list of the indexes of the items in view
that are the target of the relevant operation.

The targets are the items that are the subject of the operation. For an
add operation, these are the items being added; for a remove, these are
the items being removed; for a move, these are the items being moved.

For example, if the transition was triggered by an insert operation that
added two items at index 1 and 2, this targetIndexes list would have the
value [1,2].

**Note:** The targetIndexes list only contains the indexes of items that
are actually in view, or will be in the view once the relevant operation
completes.

**See also**
`QtQuick::ViewTransition::targetItems </sdk/apps/qml/QtQuick/ViewTransition#targetItems-attached-prop>`__.

| 

+--------------------------------------------------------------------------+
|        \ ViewTransition.targetItems : list                               |
+--------------------------------------------------------------------------+

This attached property holds the list of items in view that are the
target of the relevant operation.

The targets are the items that are the subject of the operation. For an
add operation, these are the items being added; for a remove, these are
the items being removed; for a move, these are the items being moved.

For example, if the transition was triggered by an insert operation that
added two items at index 1 and 2, this targetItems list would contain
these two items.

**Note:** The targetItems list only contains items that are actually in
view, or will be in the view once the relevant operation completes.

**Warning:** The objects in this list should not be kept and referred to
outside of the transition as the items may become invalid. The
targetItems are only valid when the Transition is initially created;
this also means they should not be used by
`ScriptAction </sdk/apps/qml/QtQuick/ScriptAction/>`__ objects in the
Transition, which are not evaluated until the transition is run.

**See also**
`QtQuick::ViewTransition::targetIndexes </sdk/apps/qml/QtQuick/ViewTransition#targetIndexes-attached-prop>`__.

| 

.. |image0| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-basic.gif
.. |image1| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-delayedbyindex.gif
.. |image2| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-intermediatemove.gif
.. |image3| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-pathanim.gif
.. |image4| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-interruptedbad.gif
.. |image5| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-interruptedgood.gif
.. |image6| image:: /media/sdk/apps/qml/QtQuick/ViewTransition/images/viewtransitions-scriptactionbad.gif


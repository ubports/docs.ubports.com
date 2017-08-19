QtQuick.qtquick-statesanimations-topic
======================================

.. raw:: html

   <p>

In any modern user-interface, transitioning between states and animating
the user-interface is highly beneficial. These are first-class concepts
in Qt Quick.

.. raw:: html

   </p>

.. raw:: html

   <p>

This page describes the concept of states, state transitions, and
property animations. It details which concepts are important and why,
and how those concepts interrelate. It also provides links to in-depth
detail about the QML types that Qt Quick provides to implement those
concepts.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="states">

States

.. raw:: html

   </h2>

.. raw:: html

   <p>

The state of a particular visual item is the set of information which
describes how and where the individual component parts of the visual
item are displayed within it, and all the data associated with that
state. Most visual items in a user-interface will have a limited number
of states, each with well-defined properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, an element in a list may be either selected or not, and if
selected, it may either be the currently active single selection or it
may be part of a selection group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Each of those states may have certain associated visual appearance
(neutral, highlighted, expanded, and so forth).

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt Quick provides a State type with properties which define its
semantics and can be used to trigger behavior or animations. See the
documentation about Qt Quick States for more information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="transitions">

Transitions

.. raw:: html

   </h2>

.. raw:: html

   <p>

When a visual item transitions from one state to another, the appearance
of that item will change. A transition is an "edge" between two states.
It may trigger other events to occur, as other parts of the application
may have behavior which is triggered when a certain state is entered or
left.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt Quick provides the Transition type which has properties which define
what will occur when the application changes from one state to another.
See the documentation on Transitions during State Changes for more
information about transitions.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animations">

Animations

.. raw:: html

   </h2>

.. raw:: html

   <p>

When transitioning between states, a fluid animation can be used to aid
the user during the transition. Abrupt and unexpected changes to the
visual canvas result in a suboptimal user-experience and should be
avoided.

.. raw:: html

   </p>

.. raw:: html

   <p>

If an element in a list becomes selected, the color change (from neutral
to highlighted) can be animated. If the position of the element in the
list is changed, it can be moved in an fluidly animated fashion so that
the eye of the user can track the change.

.. raw:: html

   </p>

.. raw:: html

   <p>

These types of animations are supported in Qt Quick through various
animation and transition types. See the documentation on Animations and
Transitions In Qt Quick for information about these types and how to use
them.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animating-property-assignments">

Animating Property Assignments

.. raw:: html

   </h2>

.. raw:: html

   <p>

Animations are not only related to states and transitions between
states. For example, an animation might be triggered by other events,
which are not associated with a distinct state.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is often beneficial to always animate changes to certain properties
of visual items, regardless of the cause of the change (for example,
opacity effects). Qt Quick provides the Behavior type which allows the
client to specify animation behavior for changes to properties. The
Behavior type is an example of a QML object property modifier.

.. raw:: html

   </p>

.. raw:: html

   <p>

Please see the documentation about default property animations for more
information about using the Behavior type to provide default property
change animations.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is important to note, that using default property animations (via the
Behavior type) in combination with state-transition animations can
sometimes result in undefined behavior occurring. Please see the
documentation about using Qt Quick Behaviors with States for more
information about this topic.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animators">

Animators

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Animator types are a special type of animation which bypass the QML
objects and operate directly on the primitives in the scene graph. This
has the benefit that the Animator based animations can be run on the
scene graph's rendering thread (when applicable) and can continue to
animate even when UI is otherwise blocked.

.. raw:: html

   </p>

.. raw:: html

   <p>

Qt Quick provides the following Animator types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

XAnimator - Animates the horizontal position of an Item.

.. raw:: html

   </li>

.. raw:: html

   <li>

YAnimator - Animates the vertical position of an Item.

.. raw:: html

   </li>

.. raw:: html

   <li>

ScaleAnimator - Animates the scale factor of an Item.

.. raw:: html

   </li>

.. raw:: html

   <li>

RotationAnimator - Animates the rotation of an Item.

.. raw:: html

   </li>

.. raw:: html

   <li>

OpacityAnimator - Animates the opacity of an Item.

.. raw:: html

   </li>

.. raw:: html

   <li>

UniformAnimator - Animates a uniform in a ShaderEffect.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="animated-sprites">

Animated Sprites

.. raw:: html

   </h2>

.. raw:: html

   <p>

The concept of animated sprites is separate to the concept of animations
as used elsewhere on this page. If you want to create or use an animated
image or sprite, please see the documentation about sprite animations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-statesanimations-topic.html -->

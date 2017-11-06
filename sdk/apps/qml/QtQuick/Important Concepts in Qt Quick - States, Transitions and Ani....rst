.. _sdk_qtquick_important_concepts_in_qt_quick_-_states,_transitions_and_ani___:

QtQuick Important Concepts in Qt Quick - States, Transitions and Ani...
=======================================================================


In any modern user-interface, transitioning between states and animating the user-interface is highly beneficial. These are first-class concepts in Qt Quick.

This page describes the concept of states, state transitions, and property animations. It details which concepts are important and why, and how those concepts interrelate. It also provides links to in-depth detail about the QML types that Qt Quick provides to implement those concepts.

The state of a particular visual item is the set of information which describes how and where the individual component parts of the visual item are displayed within it, and all the data associated with that state. Most visual items in a user-interface will have a limited number of states, each with well-defined properties.

For example, an element in a list may be either selected or not, and if selected, it may either be the currently active single selection or it may be part of a selection group.

Each of those states may have certain associated visual appearance (neutral, highlighted, expanded, and so forth).

Qt Quick provides a ``State`` type with properties which define its semantics and can be used to trigger behavior or animations. See the documentation about `Qt Quick States </sdk/apps/qml/QtQuick/qtquick-statesanimations-states/>`_  for more information.

When a visual item transitions from one state to another, the appearance of that item will change. A transition is an "edge" between two states. It may trigger other events to occur, as other parts of the application may have behavior which is triggered when a certain state is entered or left.

Qt Quick provides the ``Transition`` type which has properties which define what will occur when the application changes from one state to another. See the documentation on `Transitions during State Changes </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/#transitions-during-state-changes>`_  for more information about transitions.

When transitioning between states, a fluid animation can be used to aid the user during the transition. Abrupt and unexpected changes to the visual canvas result in a suboptimal user-experience and should be avoided.

If an element in a list becomes selected, the color change (from neutral to highlighted) can be animated. If the position of the element in the list is changed, it can be moved in an fluidly animated fashion so that the eye of the user can track the change.

These types of animations are supported in Qt Quick through various animation and transition types. See the documentation on `Animations and Transitions In Qt Quick </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/>`_  for information about these types and how to use them.

Animations are not only related to states and transitions between states. For example, an animation might be triggered by other events, which are not associated with a distinct state.

It is often beneficial to always animate changes to certain properties of visual items, regardless of the cause of the change (for example, opacity effects). Qt Quick provides the :ref:`Behavior <sdk_qtquick_behavior>` type which allows the client to specify animation behavior for changes to properties. The :ref:`Behavior <sdk_qtquick_behavior>` type is an example of a QML object property modifier.

Please see the documentation about `default property animations </sdk/apps/qml/QtQuick/qtquick-statesanimations-animations/#default-animation-as-behaviors>`_  for more information about using the :ref:`Behavior <sdk_qtquick_behavior>` type to provide default property change animations.

It is important to note, that using default property animations (via the :ref:`Behavior <sdk_qtquick_behavior>` type) in combination with state-transition animations can sometimes result in undefined behavior occurring. Please see the documentation about `using Qt Quick Behaviors with States </sdk/apps/qml/QtQuick/qtquick-statesanimations-behaviors/>`_  for more information about this topic.

The :ref:`Animator <sdk_qtquick_animator>` types are a special type of animation which bypass the QML objects and operate directly on the primitives in the `scene graph </sdk/apps/qml/QtQuick/qtquick-visualcanvas-scenegraph/>`_ . This has the benefit that the Animator based animations can be run on the scene graph's rendering thread (when applicable) and can continue to animate even when UI is otherwise blocked.

Qt Quick provides the following Animator types:

-  :ref:`XAnimator <sdk_qtquick_xanimator>` - Animates the horizontal position of an :ref:`Item <sdk_qtquick_item>`.
-  :ref:`YAnimator <sdk_qtquick_yanimator>` - Animates the vertical position of an :ref:`Item <sdk_qtquick_item>`.
-  :ref:`ScaleAnimator <sdk_qtquick_scaleanimator>` - Animates the scale factor of an :ref:`Item <sdk_qtquick_item>`.
-  :ref:`RotationAnimator <sdk_qtquick_rotationanimator>` - Animates the rotation of an :ref:`Item <sdk_qtquick_item>`.
-  :ref:`OpacityAnimator <sdk_qtquick_opacityanimator>` - Animates the opacity of an :ref:`Item <sdk_qtquick_item>`.
-  :ref:`UniformAnimator <sdk_qtquick_uniformanimator>` - Animates a uniform in a :ref:`ShaderEffect <sdk_qtquick_shadereffect>`.

The concept of animated sprites is separate to the concept of animations as used elsewhere on this page. If you want to create or use an animated image or sprite, please see the documentation about `sprite animations </sdk/apps/qml/QtQuick/qtquick-effects-sprites/>`_ .


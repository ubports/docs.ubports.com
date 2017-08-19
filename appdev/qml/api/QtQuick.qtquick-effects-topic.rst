QtQuick.qtquick-effects-topic
=============================

.. raw:: html

   <h2 id="graphical-effects-and-particles">

Graphical Effects and Particles

.. raw:: html

   </h2>

.. raw:: html

   <p>

Visually appealing user-interfaces are more engaging than lacklustre
ones. That said, the designer must bear in mind that visual effects
simply provide a useful way to subtly communicate to the user (for
example, which visual item is active, or how focus is being
transferred). Over-use of visual effects can actually detract from the
user-experience.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="visual-transformation">

Visual Transformation

.. raw:: html

   </h2>

.. raw:: html

   <p>

Visual objects can be transformed. For example, they can be scaled or
rotated. These sort of transformations can provide hints about focus or
selection, and can provide intuitive hints about what events are
occurring in an application.

.. raw:: html

   </p>

.. raw:: html

   <p>

For information about visual transformations to visual objects, see the
page titled Qt Quick Transformation Types.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="shader-effects">

Shader Effects

.. raw:: html

   </h2>

.. raw:: html

   <p>

Shader effects allow the full, raw power of a graphics processing unit
to be utilized directly via vertex and fragment shaders. Using too many
shader effects can result in increased power usage and sometimes slow
performance, but if used sparingly and carefully, a shader can allow
complex and visually appealing effects to be applied to a visual object
(for example, ripples in water).

.. raw:: html

   </p>

.. raw:: html

   <p>

For information about shader effects, see the ShaderEffect reference
documentation.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="particles">

Particles

.. raw:: html

   </h2>

.. raw:: html

   <p>

A particle system allows explosions, fireworks, smoke, fog and wind
effects to be simulated and displayed to the user. Qt Quick provides a
particle system which allows these sort of complex, 2D simulations to be
performed, including support for environmental effects like gravity and
turbulence. Particles are most commonly used to add subtle and visually
appealing effects to currently selected items in lists or in activity
notifiers, and in games.

.. raw:: html

   </p>

.. raw:: html

   <p>

For information about particles, see the documentation about the Qt
Quick Particle System.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="sprites">

Sprites

.. raw:: html

   </h2>

.. raw:: html

   <p>

A sprite is an animated image made up of frames. Sprites are commonly
found in games. Qt Quick provides a visual type to display sprites, as
well as a complex, stochastic, frame-transition controller for more
complex applications which use sprites extensively (such as games).

.. raw:: html

   </p>

.. raw:: html

   <p>

For information about sprite animations, see the page titled Sprite
Animations.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="opacity">

Opacity

.. raw:: html

   </h2>

.. raw:: html

   <p>

Visual objects can be opaque or translucent. For example, an application
can make one visual object opaque and other visual objects translucent
to focus the users attention on the opaque one. This is controlled using
the opacity property of the Item.

.. raw:: html

   </p>

.. raw:: html

   <p>

For more information about opacity, see the Item documentation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-effects-topic.html -->

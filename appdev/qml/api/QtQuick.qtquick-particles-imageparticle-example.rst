QtQuick.qtquick-particles-imageparticle-example
===============================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a collection of small QML examples relating to using Affectors
in the particle system. Each example is a small QML file emphasizing a
particular type or feature.

.. raw:: html

   </p>

.. raw:: html

   <p>

All at once shows off several of the features of ImageParticle at the
same time.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">sprites</span>: [
   <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
   <span class="name">name</span>: <span class="string">&quot;bear&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;../../images/bear_tiles.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">13</span>
   <span class="name">frameDuration</span>: <span class="number">120</span>
   }
   ]
   <span class="name">colorVariation</span>: <span class="number">0.5</span>
   <span class="name">rotationVelocityVariation</span>: <span class="number">360</span>
   <span class="name">colorTable</span>: <span class="string">&quot;../../images/colortable.png&quot;</span></pre>

.. raw:: html

   <p>

Colored shows a simple ImageParticle with some color variation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: <span class="string">&quot;qrc:///particleresources/star.png&quot;</span>
   <span class="name">alpha</span>: <span class="number">0</span>
   <span class="name">alphaVariation</span>: <span class="number">0.2</span>
   <span class="name">colorVariation</span>: <span class="number">1.0</span>
   }</pre>

.. raw:: html

   <p>

Color Table sets the color over life on the particles to provide a fixed
rainbow effect.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">source</span>: <span class="string">&quot;qrc:///particleresources/glowdot.png&quot;</span>
   <span class="name">colorTable</span>: <span class="string">&quot;../../images/colortable.png&quot;</span>
   <span class="name">sizeTable</span>: <span class="string">&quot;../../images/colortable.png&quot;</span></pre>

.. raw:: html

   <p>

Deformation spins and squishes a starfish particle.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">system</span>: <span class="name">sys</span>
   <span class="name">groups</span>: [<span class="string">&quot;goingLeft&quot;</span>, <span class="string">&quot;goingRight&quot;</span>]
   <span class="name">source</span>: <span class="string">&quot;../../images/starfish_4.png&quot;</span>
   <span class="name">rotation</span>: <span class="number">90</span>
   <span class="name">rotationVelocity</span>: <span class="number">90</span>
   <span class="name">autoRotation</span>: <span class="number">true</span>
   }
   <span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">system</span>: <span class="name">sys</span>
   <span class="name">groups</span>: [<span class="string">&quot;goingDown&quot;</span>]
   <span class="name">source</span>: <span class="string">&quot;../../images/starfish_0.png&quot;</span>
   <span class="name">rotation</span>: <span class="number">180</span>
   <span class="name">yVector</span>: <span class="name">PointDirection</span> { <span class="name">y</span>: <span class="number">0.5</span>; <span class="name">yVariation</span>: <span class="number">0.25</span>; <span class="name">xVariation</span>: <span class="number">0.25</span>; }
   }</pre>

.. raw:: html

   <p>

Rotation demonstrates the autoRotate property, so that particles rotate
in the direction that they travel.

.. raw:: html

   </p>

.. raw:: html

   <p>

Sharing demonstrates what happens when multiple ImageParticles try to
render the same particle. The following ImageParticle renders the
particles inside the ListView:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">system</span>: <span class="name">particles</span>
   <span class="name">source</span>: <span class="string">&quot;../../images/flower.png&quot;</span>
   <span class="name">alpha</span>: <span class="number">0.1</span>
   <span class="name">color</span>: <span class="string">&quot;white&quot;</span>
   <span class="name">rotationVariation</span>: <span class="number">180</span>
   <span class="name">z</span>: -<span class="number">1</span>
   }</pre>

.. raw:: html

   <p>

The following ImageParticle is placed inside the list highlight, and
renders the particles above the other ImageParticle.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">system</span>: <span class="name">particles</span>
   <span class="name">source</span>: <span class="string">&quot;../../images/flower.png&quot;</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">clip</span>: <span class="number">true</span>
   <span class="name">alpha</span>: <span class="number">1.0</span>
   }</pre>

.. raw:: html

   <p>

Note that because it sets the color and alpha in this ImageParticle, it
renders the particles in a different color. Since it doesn't specify
anything about the rotation, it shares the rotation with the other
ImageParticle so that the flowers are rotated the same way in both. Note
that you can undo rotation in another ImageParticle, you just need to
explicitly set rotationVariation to 0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Sprites demonstrates using an image particle to render animated sprites
instead of static images for each particle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

particles/imageparticle/imageparticle.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/allatonce.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/colored.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/colortable.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/deformation.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/rotation.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/sharing.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/content/sprites.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/imageparticle.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/imageparticle.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/imageparticle/imageparticle.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@particles/imageparticle -->

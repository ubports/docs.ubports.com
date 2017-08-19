QtQuick.qtquick-particles-affectors-example
===========================================

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

Age demonstrates using an Age affector to prematurely end the lives of
particles.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Age.md">Age</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">system</span>: <span class="name">particles</span>
   <span class="name">once</span>: <span class="number">true</span>
   <span class="name">lifeLeft</span>: <span class="number">1200</span>
   <span class="name">advancePosition</span>: <span class="number">false</span>
   }</pre>

.. raw:: html

   <p>

As you move the affector around the screen, the particles inside it
(which haven't already been affected) jump to a period near the end of
their life. This gives them a short period to finish fading out, but
changing lifeLeft to 0 (the default), would cause them to reach the end
of their life instantly.

.. raw:: html

   </p>

.. raw:: html

   <p>

Attractor demonstrates using an Attractor affector to simulate a black
hole

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Attractor.md">Attractor</a></span> {
   <span class="name">id</span>: <span class="name">gs</span>; <span class="name">pointX</span>: <span class="name">root</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>; <span class="name">pointY</span>: <span class="name">root</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>; <span class="name">strength</span>: <span class="number">4000000</span>;
   <span class="name">affectedParameter</span>: <span class="name">Attractor</span>.<span class="name">Acceleration</span>
   <span class="name">proportionalToDistance</span>: <span class="name">Attractor</span>.<span class="name">InverseQuadratic</span>
   }</pre>

.. raw:: html

   <p>

All particles in the scene, including the rocket ship's exhaust and
pellets, are pulled towards the black hole. This effect is stronger
closer to the black hole, so the asteroids near the top of the screen
are barely affected at all, while the ones towards the middle sometimes
curve drastically. To complete the effect, an Age affector covers the
black hole to destroy particles which come in contact with it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom Affector manipulates the properties of the particles directly in
javascript. One Affector is used to make the leaves rock back and forth
as they fall, looking more leaf-like than just spinning in circles:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {
   property <span class="type">real</span> <span class="name">coefficient</span>: <span class="number">0.1</span>
   property <span class="type">real</span> <span class="name">velocity</span>: <span class="number">1.5</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="number">100</span>
   <span class="name">onAffectParticles</span>: {
   <span class="comment">/*  //Linear movement
   if (particle.r == 0) {
   particle.r = Math.random() &gt; 0.5 ? -1 : 1;
   } else if (particle.r == 1) {
   particle.rotation += velocity * dt;
   if (particle.rotation &gt;= maxAngle)
   particle.r = -1;
   } else if (particle.r == -1) {
   particle.rotation -= velocity * dt;
   if (particle.rotation &lt;= -1 * maxAngle)
   particle.r = 1;
   }
   */</span>
   <span class="comment">//Wobbly movement</span>
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">particles</span>.<span class="name">length</span>; i++) {
   var <span class="name">particle</span> = <span class="name">particles</span>[<span class="name">i</span>];
   <span class="keyword">if</span> (<span class="name">particle</span>.<span class="name">r</span> <span class="operator">==</span> <span class="number">0.0</span>) {
   <span class="name">particle</span>.<span class="name">r</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">+</span> <span class="number">0.01</span>;
   }
   <span class="name">particle</span>.<span class="name">rotation</span> <span class="operator">+=</span> <span class="name">velocity</span> <span class="operator">*</span> <span class="name">particle</span>.<span class="name">r</span> <span class="operator">*</span> <span class="name">dt</span>;
   <span class="name">particle</span>.<span class="name">r</span> <span class="operator">-=</span> <span class="name">particle</span>.<span class="name">rotation</span> <span class="operator">*</span> <span class="name">coefficient</span>;
   <span class="keyword">if</span> (<span class="name">particle</span>.<span class="name">r</span> <span class="operator">==</span> <span class="number">0.0</span>)
   <span class="name">particle</span>.<span class="name">r</span> <span class="operator">-=</span> <span class="name">particle</span>.<span class="name">rotation</span> <span class="operator">*</span> <span class="number">0.000001</span>;
   <span class="name">particle</span>.<span class="name">update</span> <span class="operator">=</span> <span class="number">1</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

Another is used to provide a slightly varying friction to the leaves as
they 'land', to look more natural:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {<span class="comment">//Custom Friction, adds some 'randomness'</span>
   <span class="name">x</span>: -<span class="number">60</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">120</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">onAffectParticles</span>: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">particles</span>.<span class="name">length</span>; i++) {
   var <span class="name">particle</span> = <span class="name">particles</span>[<span class="name">i</span>];
   var <span class="name">pseudoRand</span> = (<span class="name">Math</span>.<span class="name">floor</span>(<span class="name">particle</span>.<span class="name">t</span><span class="operator">*</span><span class="number">1327</span>) <span class="operator">%</span> <span class="number">10</span>) <span class="operator">+</span> <span class="number">1</span>;
   var <span class="name">yslow</span> = <span class="name">dt</span> <span class="operator">*</span> <span class="name">pseudoRand</span> <span class="operator">*</span> <span class="number">0.5</span> <span class="operator">+</span> <span class="number">1</span>;
   var <span class="name">xslow</span> = <span class="name">dt</span> <span class="operator">*</span> <span class="name">pseudoRand</span> <span class="operator">*</span> <span class="number">0.05</span> <span class="operator">+</span> <span class="number">1</span>;
   <span class="keyword">if</span> (<span class="name">particle</span>.<span class="name">vy</span> <span class="operator">&lt;</span> <span class="number">1</span>)
   <span class="name">particle</span>.<span class="name">vy</span> <span class="operator">=</span> <span class="number">0</span>;
   <span class="keyword">else</span>
   <span class="name">particle</span>.<span class="name">vy</span> <span class="operator">=</span> (<span class="name">particle</span>.<span class="name">vy</span> <span class="operator">/</span> <span class="name">yslow</span>);
   <span class="keyword">if</span> (<span class="name">particle</span>.<span class="name">vx</span> <span class="operator">&lt;</span> <span class="number">1</span>)
   <span class="name">particle</span>.<span class="name">vx</span> <span class="operator">=</span> <span class="number">0</span>;
   <span class="keyword">else</span>
   <span class="name">particle</span>.<span class="name">vx</span> <span class="operator">=</span> (<span class="name">particle</span>.<span class="name">vx</span> <span class="operator">/</span> <span class="name">xslow</span>);
   <span class="name">particle</span>.<span class="name">update</span> <span class="operator">=</span> <span class="number">true</span>;
   }
   }
   }</pre>

.. raw:: html

   <p>

Friction is similar to the falling leaves in the custom affector, except
that it uses a flat friction the whole way down instead of custom
affectors.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Friction.md">Friction</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">anchors</span>.margins: -<span class="number">40</span>
   <span class="name">factor</span>: <span class="number">0.4</span>
   }</pre>

.. raw:: html

   <p>

Gravity is a convenience affector for applying a constant acceleration
to particles inside it

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Gravity.md">Gravity</a></span> {
   <span class="name">system</span>: <span class="name">sys</span>
   <span class="name">magnitude</span>: <span class="number">32</span>
   <span class="name">angle</span>: <span class="name">ground</span>.<span class="name">rotation</span> <span class="operator">+</span> <span class="number">90</span>
   }</pre>

.. raw:: html

   <p>

GroupGoal sets up two particle groups for flaming and non-flaming balls,
and gives you various ways to transition between them.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
   <span class="name">name</span>: <span class="string">&quot;unlit&quot;</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">to</span>: {&quot;lighting&quot;:<span class="number">1</span>, &quot;unlit&quot;:<span class="number">99</span>}
   <span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="name">source</span>: <span class="string">&quot;../../images/particleA.png&quot;</span>
   <span class="name">colorVariation</span>: <span class="number">0.1</span>
   <span class="name">color</span>: <span class="string">&quot;#2060160f&quot;</span>
   }
   <span class="type"><a href="QtQuick.Particles.GroupGoal.md">GroupGoal</a></span> {
   <span class="name">whenCollidingWith</span>: [<span class="string">&quot;lit&quot;</span>]
   <span class="name">goalState</span>: <span class="string">&quot;lighting&quot;</span>
   <span class="name">jump</span>: <span class="number">true</span>
   }
   }</pre>

.. raw:: html

   <p>

The non-flaming balls have a one in a hundred chance of lighting on
their own each second, but they also have a GroupGoal set on the whole
group. This affector affects all particles of the unlit group, when
colliding with particles in the lit group, and cause them to move to the
lighting group.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
   <span class="name">name</span>: <span class="string">&quot;lighting&quot;</span>
   <span class="name">duration</span>: <span class="number">100</span>
   <span class="name">to</span>: {&quot;lit&quot;:<span class="number">1</span>}
   }</pre>

.. raw:: html

   <p>

lighting is an intermediate group so that the glow builds up and the
transition is less jarring. So it automatically moves into the lit group
after 100ms.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
   <span class="name">name</span>: <span class="string">&quot;lit&quot;</span>
   <span class="name">duration</span>: <span class="number">10000</span>
   <span class="name">onEntered</span>: score++;
   <span class="type"><a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a></span> {
   <span class="name">id</span>: <span class="name">fireballFlame</span>
   <span class="name">group</span>: <span class="string">&quot;flame&quot;</span>
   <span class="name">emitRatePerParticle</span>: <span class="number">48</span>
   <span class="name">lifeSpan</span>: <span class="number">200</span>
   <span class="name">emitWidth</span>: <span class="number">8</span>
   <span class="name">emitHeight</span>: <span class="number">8</span>
   <span class="name">size</span>: <span class="number">24</span>
   <span class="name">sizeVariation</span>: <span class="number">8</span>
   <span class="name">endSize</span>: <span class="number">4</span>
   }
   <span class="type"><a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a></span> {
   <span class="name">id</span>: <span class="name">fireballSmoke</span>
   <span class="name">group</span>: <span class="string">&quot;smoke&quot;</span></pre>

.. raw:: html

   <p>

The lit group also has TrailEmitters on it for additional fire and
smoke, but does not transition anywhere. There are two more GroupGoal
objects that allow particles in the unlit group to transition to the
lighting group (and then to the lit group).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.GroupGoal.md">GroupGoal</a></span> {
   <span class="name">groups</span>: [<span class="string">&quot;unlit&quot;</span>]
   <span class="name">goalState</span>: <span class="string">&quot;lit&quot;</span>
   <span class="name">jump</span>: <span class="number">true</span>
   <span class="name">system</span>: <span class="name">particles</span>
   <span class="name">x</span>: -<span class="number">15</span>
   <span class="name">y</span>: -<span class="number">55</span>
   <span class="name">height</span>: <span class="number">75</span>
   <span class="name">width</span>: <span class="number">30</span>
   <span class="name">shape</span>: <span class="name">MaskShape</span> {<span class="name">source</span>: <span class="string">&quot;../../images/matchmask.png&quot;</span>}
   }</pre>

.. raw:: html

   <p>

The first is just an area bound to the location of an image of a pilot
flame. When unlit balls pass through the flame, they go straight to lit
because the pilot flame is so hot.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//Click to enflame</span>
   <span class="type"><a href="QtQuick.Particles.GroupGoal.md">GroupGoal</a></span> {
   <span class="name">groups</span>: [<span class="string">&quot;unlit&quot;</span>]
   <span class="name">goalState</span>: <span class="string">&quot;lighting&quot;</span>
   <span class="name">jump</span>: <span class="number">true</span>
   <span class="name">enabled</span>: <span class="name">ma</span>.<span class="name">pressed</span>
   <span class="name">width</span>: <span class="number">18</span>
   <span class="name">height</span>: <span class="number">18</span>
   <span class="name">x</span>: <span class="name">ma</span>.<span class="name">mouseX</span> <span class="operator">-</span> <span class="name">width</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">y</span>: <span class="name">ma</span>.<span class="name">mouseY</span> <span class="operator">-</span> <span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   }</pre>

.. raw:: html

   <p>

The second is bound to the location of the last pointer interaction, so
that touching or clicking on unlit balls (which is hard due to their
constant movement) causes them to move to the lighting group.

.. raw:: html

   </p>

.. raw:: html

   <p>

Move shows some simple effects you can get by altering trajectory
midway. The red particles have an affector that affects their position,
jumping them forwards by 120px.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {
   <span class="name">groups</span>: [<span class="string">&quot;A&quot;</span>]
   <span class="name">x</span>: <span class="number">120</span>
   <span class="name">width</span>: <span class="number">80</span>
   <span class="name">height</span>: <span class="number">80</span>
   <span class="name">once</span>: <span class="number">true</span>
   <span class="name">position</span>: <span class="name">PointDirection</span> { <span class="name">x</span>: <span class="number">120</span>; }
   }</pre>

.. raw:: html

   <p>

The green particles have an affector that affects their velocity, but
with some angle variation. By adding some random direction velocity to
their existing forwards velocity, they begin to spray off in a cone.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {
   <span class="name">groups</span>: [<span class="string">&quot;B&quot;</span>]
   <span class="name">x</span>: <span class="number">120</span>
   <span class="name">y</span>: <span class="number">240</span>
   <span class="name">width</span>: <span class="number">80</span>
   <span class="name">height</span>: <span class="number">80</span>
   <span class="name">once</span>: <span class="number">true</span>
   <span class="name">velocity</span>: <span class="name">AngleDirection</span> { <span class="name">angleVariation</span>:<span class="number">360</span>; <span class="name">magnitude</span>: <span class="number">72</span> }
   }</pre>

.. raw:: html

   <p>

The blue particles have an affector that affects their acceleration, and
because it sets relative to false this resets the acceleration instead
of adding to it. Once the blue particles reach the affector, their
horizontal velocity stops increasing as their vertical velocity
decreases.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {
   <span class="name">groups</span>: [<span class="string">&quot;C&quot;</span>]
   <span class="name">x</span>: <span class="number">120</span>
   <span class="name">y</span>: <span class="number">400</span>
   <span class="name">width</span>: <span class="number">80</span>
   <span class="name">height</span>: <span class="number">120</span>
   <span class="name">once</span>: <span class="number">true</span>
   <span class="name">relative</span>: <span class="number">false</span>
   <span class="name">acceleration</span>: <span class="name">PointDirection</span> { <span class="name">y</span>: -<span class="number">80</span>; }
   }</pre>

.. raw:: html

   <p>

SpriteGoal has an affector which interacts with the sprite engine of
particles, if they are being drawn as sprites by ImageParticle.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.SpriteGoal.md">SpriteGoal</a></span> {
   <span class="name">groups</span>: [<span class="string">&quot;meteor&quot;</span>]
   <span class="name">system</span>: <span class="name">sys</span>
   <span class="name">goalState</span>: <span class="string">&quot;explode&quot;</span>
   <span class="name">jump</span>: <span class="number">true</span>
   <span class="name">anchors</span>.fill: <span class="name">rocketShip</span>
   <span class="name">width</span>: <span class="number">60</span>
   <span class="name">height</span>: <span class="number">60</span>
   }</pre>

.. raw:: html

   <p>

The SpriteGoal follows the image of the rocket ship on screen, and when
it interacts with particles drawn by ImageParticle as sprites, it
instructs them to move immediately to the "explode" state, which in this
case is the animation of the asteroid breaking into many pieces.

.. raw:: html

   </p>

.. raw:: html

   <p>

Turbulence has a flame with smoke, and both sets of particles being
affected by a Turbulence affector. This gives a faint wind effect.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Turbulence.md">Turbulence</a></span> {
   <span class="name">id</span>: <span class="name">turb</span>
   <span class="name">enabled</span>: <span class="number">true</span>
   <span class="name">height</span>: (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">2</span>) <span class="operator">-</span> <span class="number">4</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="name">x</span>: <span class="name">parent</span>. <span class="name">width</span> <span class="operator">/</span> <span class="number">4</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">strength</span>: <span class="number">32</span>
   NumberAnimation on <span class="name">strength</span>{<span class="name">from</span>: <span class="number">16</span>; <span class="name">to</span>: <span class="number">64</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutBounce</span>; <span class="name">duration</span>: <span class="number">1800</span>; <span class="name">loops</span>: -<span class="number">1</span>}
   }</pre>

.. raw:: html

   <p>

To make the wind change direction, subsitute a black and white noise
image in the noiseSource parameter (it currently uses a default noise
source).

.. raw:: html

   </p>

.. raw:: html

   <p>

Wander uses a Wander affector to add some horizontal drift to snowflakes
as they fall down.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Wander.md">Wander</a></span> {
   <span class="name">id</span>: <span class="name">wanderer</span>
   <span class="name">system</span>: <span class="name">particles</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">xVariance</span>: <span class="number">360</span><span class="operator">/</span>(<span class="name">wanderer</span>.<span class="name">affectedParameter</span><span class="operator">+</span><span class="number">1</span>);
   <span class="name">pace</span>: <span class="number">100</span><span class="operator">*</span>(<span class="name">wanderer</span>.<span class="name">affectedParameter</span><span class="operator">+</span><span class="number">1</span>);
   }</pre>

.. raw:: html

   <p>

There are different movements given by applying the Wander to different
attributes of the trajectory, so the example makes it easy to play
around and see the difference.

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

particles/affectors/affectors.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/GreyButton.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/age.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/attractor.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/customaffector.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/friction.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/gravity.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/groupgoal.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/move.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/spritegoal.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/turbulence.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/content/wander.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/affectors.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/affectors.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/affectors/affectors.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@particles/affectors -->

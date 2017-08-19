QtQuick.qtquick-particles-system-example
========================================

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

Dynamic comparison compares using the particle system to getting a
similar effect with the following code that dynamically instantiates
Image types.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">fakeEmitter</span>
   <span class="keyword">function</span> <span class="name">burst</span>(<span class="name">number</span>) {
   <span class="keyword">while</span> (<span class="name">number</span> <span class="operator">&gt;</span> <span class="number">0</span>) {
   var <span class="name">item</span> = <span class="name">fakeParticle</span>.<span class="name">createObject</span>(<span class="name">root</span>);
   <span class="name">item</span>.<span class="name">lifeSpan</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">5000</span> <span class="operator">+</span> <span class="number">5000</span>;
   <span class="name">item</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="name">root</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>) <span class="operator">+</span> (<span class="name">root</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>);
   <span class="name">item</span>.<span class="name">y</span> <span class="operator">=</span> <span class="number">0</span>;
   number--;
   }
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">fakeParticle</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">int</span> <span class="name">lifeSpan</span>: <span class="number">10000</span>
   <span class="name">width</span>: <span class="number">32</span>
   <span class="name">height</span>: <span class="number">32</span>
   <span class="name">source</span>: <span class="string">&quot;qrc:///particleresources/glowdot.png&quot;</span>
   <span class="name">y</span>: <span class="number">0</span>
   PropertyAnimation on <span class="name">y</span> {<span class="name">from</span>: -<span class="number">16</span>; <span class="name">to</span>: <span class="name">root</span>.<span class="name">height</span><span class="operator">-</span><span class="number">16</span>; <span class="name">duration</span>: <span class="name">container</span>.<span class="name">lifeSpan</span>; <span class="name">running</span>: <span class="number">true</span>}
   SequentialAnimation on <span class="name">opacity</span> {
   <span class="name">running</span>: <span class="number">true</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>:<span class="number">0</span>; <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">500</span>}
   <span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="name">container</span>.<span class="name">lifeSpan</span> <span class="operator">-</span> <span class="number">1000</span>}
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>:<span class="number">1</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">500</span>}
   <span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">container</span>.<span class="name">destroy</span>(); }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

Note how the Image objects are not able to be randomly colorized.

.. raw:: html

   </p>

.. raw:: html

   <p>

Start and Stop simply sets the running and paused states of a
ParticleSystem. While the system does not perform any simulation when
stopped or paused, a restart restarts the simulation from the beginning,
while unpausing resumes the simulation from where it was.

.. raw:: html

   </p>

.. raw:: html

   <p>

Timed group changes is an example that highlights the ParticleGroup
type. While normally referring to groups with a string name is
sufficient, additional effects can be done by setting properties on
groups. The first group has a variable duration on it, but always
transitions to the second group.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
   <span class="name">name</span>: <span class="string">&quot;fire&quot;</span>
   <span class="name">duration</span>: <span class="number">2000</span>
   <span class="name">durationVariation</span>: <span class="number">2000</span>
   <span class="name">to</span>: {&quot;splode&quot;:<span class="number">1</span>}
   }</pre>

.. raw:: html

   <p>

The second group has a TrailEmitter on it, and a fixed duration for
emitting into the third group. By placing the TrailEmitter as a direct
child of the ParticleGroup, it automatically selects that group to
follow.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
   <span class="name">name</span>: <span class="string">&quot;splode&quot;</span>
   <span class="name">duration</span>: <span class="number">400</span>
   <span class="name">to</span>: {&quot;dead&quot;:<span class="number">1</span>}
   <span class="type"><a href="QtQuick.Particles.TrailEmitter.md">TrailEmitter</a></span> {
   <span class="name">group</span>: <span class="string">&quot;works&quot;</span>
   <span class="name">emitRatePerParticle</span>: <span class="number">100</span>
   <span class="name">lifeSpan</span>: <span class="number">1000</span>
   <span class="name">maximumEmitted</span>: <span class="number">1200</span>
   <span class="name">size</span>: <span class="number">8</span>
   <span class="name">velocity</span>: <span class="name">AngleDirection</span> {<span class="name">angle</span>: <span class="number">270</span>; <span class="name">angleVariation</span>: <span class="number">45</span>; <span class="name">magnitude</span>: <span class="number">20</span>; <span class="name">magnitudeVariation</span>: <span class="number">20</span>;}
   <span class="name">acceleration</span>: <span class="name">PointDirection</span> {<span class="name">y</span>:<span class="number">100</span>; <span class="name">yVariation</span>: <span class="number">20</span>}
   }
   }</pre>

.. raw:: html

   <p>

The third group has an Affector as a direct child, which makes the
affector automatically target this group. The affector means that as
soon as particles enter this group, a burst function can be called on
another emitter, using the x,y positions of this particle.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleGroup.md">ParticleGroup</a></span> {
   <span class="name">name</span>: <span class="string">&quot;dead&quot;</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="type"><a href="QtQuick.Particles.Affector.md">Affector</a></span> {
   <span class="name">once</span>: <span class="number">true</span>
   <span class="name">onAffected</span>: <span class="name">worksEmitter</span>.<span class="name">burst</span>(<span class="number">400</span>,<span class="name">x</span>,<span class="name">y</span>)
   }
   }</pre>

.. raw:: html

   <p>

If TrailEmitter does not suit your needs for multiple emitters, you can
also dynamically create Emitters while still using the same
ParticleSystem and image particle

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">8</span>; i++) {
   var <span class="name">obj</span> = <span class="name">emitterComp</span>.<span class="name">createObject</span>(<span class="name">root</span>);
   <span class="name">obj</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">x</span>
   <span class="name">obj</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">y</span>
   <span class="name">obj</span>.<span class="name">targetX</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">240</span> <span class="operator">-</span> <span class="number">120</span> <span class="operator">+</span> <span class="name">obj</span>.<span class="name">x</span>
   <span class="name">obj</span>.<span class="name">targetY</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">240</span> <span class="operator">-</span> <span class="number">120</span> <span class="operator">+</span> <span class="name">obj</span>.<span class="name">y</span>
   <span class="name">obj</span>.<span class="name">life</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">round</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">2400</span>) <span class="operator">+</span> <span class="number">200</span>
   <span class="name">obj</span>.<span class="name">emitRate</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">round</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">32</span>) <span class="operator">+</span> <span class="number">32</span>
   <span class="name">obj</span>.<span class="name">go</span>();
   }</pre>

.. raw:: html

   <p>

Note that this effect, a flurry of flying rainbow spears, would be
better served with TrailEmitter. It is only done with dynamic emitters
in this example to show the concept more simply.

.. raw:: html

   </p>

.. raw:: html

   <p>

Multiple Painters shows how to control paint ordering of individual
particles. While the paint ordering of particles within one ImagePainter
is not strictly defined, ImageParticle objects follow the normal
Z-ordering rules for Qt Quick items. This example allow you to paint the
inside of the particles above the black borders using a pair of
ImageParticles each painting different parts of the same logical
particle.

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

particles/system/system.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/content/dynamiccomparison.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/content/dynamicemitters.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/content/multiplepainters.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/content/startstop.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/content/timedgroupchanges.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/system.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/system.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/system/system.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@particles/system -->

QtQuick.qtquick-particles-emitters-example
==========================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a collection of small QML examples relating to using Emitters in
the particle system. Each example is a small QML file emphasizing a
particular type or feature.

.. raw:: html

   </p>

.. raw:: html

   <p>

Velocity from motion gives the effect of strong particle motion through
primarily moving the emitters:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.Emitter.md">Emitter</a></span> {
   <span class="name">id</span>: <span class="name">trailsNormal</span>
   <span class="name">system</span>: <span class="name">sys1</span>
   <span class="name">emitRate</span>: <span class="number">500</span>
   <span class="name">lifeSpan</span>: <span class="number">2000</span>
   <span class="name">y</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span> ? <span class="name">mouseArea</span>.<span class="name">mouseY</span> : <span class="name">circle</span>.<span class="name">cy</span>
   <span class="name">x</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span> ? <span class="name">mouseArea</span>.<span class="name">mouseX</span> : <span class="name">circle</span>.<span class="name">cx</span>
   <span class="name">velocity</span>: <span class="name">PointDirection</span> {<span class="name">xVariation</span>: <span class="number">4</span>; <span class="name">yVariation</span>: <span class="number">4</span>;}
   <span class="name">acceleration</span>: <span class="name">PointDirection</span> {<span class="name">xVariation</span>: <span class="number">10</span>; <span class="name">yVariation</span>: <span class="number">10</span>;}
   <span class="name">velocityFromMovement</span>: <span class="number">8</span>
   <span class="name">size</span>: <span class="number">8</span>
   <span class="name">sizeVariation</span>: <span class="number">4</span>
   }</pre>

.. raw:: html

   <p>

Burst and pulse calls the burst and pulse methods on two idential
emitters.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">if</span> (<span class="name">lastWasPulse</span>) {
   <span class="name">burstEmitter</span>.<span class="name">burst</span>(<span class="number">500</span>);
   <span class="name">lastWasPulse</span> <span class="operator">=</span> <span class="number">false</span>;
   } <span class="keyword">else</span> {
   <span class="name">pulseEmitter</span>.<span class="name">pulse</span>(<span class="number">500</span>);
   <span class="name">lastWasPulse</span> <span class="operator">=</span> <span class="number">true</span>;
   }</pre>

.. raw:: html

   <p>

Note how burst takes an argument of number of particles to emit, and
pulse takes an argument of number of milliseconds to emit for. This
gives a slightly different behaviour, which is easy to see in this
example.

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom Emitter connects to the emitParticles signal to set arbitrary
values on particle data as they're emitted;

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">onEmitParticles</span>: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">particles</span>.<span class="name">length</span>; i++) {
   var <span class="name">particle</span> = <span class="name">particles</span>[<span class="name">i</span>];
   <span class="name">particle</span>.<span class="name">startSize</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">max</span>(<span class="number">02</span>,<span class="name">Math</span>.<span class="name">min</span>(<span class="number">492</span>,<span class="name">Math</span>.<span class="name">tan</span>(<span class="name">particle</span>.<span class="name">t</span><span class="operator">/</span><span class="number">2</span>)<span class="operator">*</span><span class="number">24</span>));
   var <span class="name">theta</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">6.0</span>);
   <span class="name">particle</span>.<span class="name">red</span> <span class="operator">=</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">1</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">2</span> ? <span class="number">0.2</span> : <span class="number">1</span>;
   <span class="name">particle</span>.<span class="name">green</span> <span class="operator">=</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">2</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">3</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">4</span> ? <span class="number">0.2</span> : <span class="number">1</span>;
   <span class="name">particle</span>.<span class="name">blue</span> <span class="operator">=</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">4</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">5</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="number">0.2</span> : <span class="number">1</span>;
   <span class="name">theta</span> <span class="operator">/=</span> <span class="number">6.0</span>;
   <span class="name">theta</span> <span class="operator">*=</span> <span class="number">2.0</span><span class="operator">*</span><span class="name">Math</span>.<span class="name">PI</span>;
   <span class="name">theta</span> <span class="operator">+=</span> <span class="name">sys</span>.<span class="name">convert</span>(<span class="name">sys</span>.<span class="name">petalRotation</span>);<span class="comment">//Convert from degrees to radians</span>
   <span class="name">particle</span>.<span class="name">initialVX</span> <span class="operator">=</span> <span class="name">petalLength</span> <span class="operator">*</span> <span class="name">Math</span>.<span class="name">cos</span>(<span class="name">theta</span>);
   <span class="name">particle</span>.<span class="name">initialVY</span> <span class="operator">=</span> <span class="name">petalLength</span> <span class="operator">*</span> <span class="name">Math</span>.<span class="name">sin</span>(<span class="name">theta</span>);
   <span class="name">particle</span>.<span class="name">initialAX</span> <span class="operator">=</span> <span class="name">particle</span>.<span class="name">initialVX</span> <span class="operator">*</span> -<span class="number">0.5</span>;
   <span class="name">particle</span>.<span class="name">initialAY</span> <span class="operator">=</span> <span class="name">particle</span>.<span class="name">initialVY</span> <span class="operator">*</span> -<span class="number">0.5</span>;
   }
   }</pre>

.. raw:: html

   <p>

This is used to emit curving particles in six rotating spokes.

.. raw:: html

   </p>

.. raw:: html

   <p>

Emit mask sets an image mask on the Emitter, to emit out of an arbitrary
shape.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">shape</span>: <span class="name">MaskShape</span> {
   <span class="name">source</span>: <span class="string">&quot;../../images/starfish_mask.png&quot;</span>
   }</pre>

.. raw:: html

   <p>

Maximum emitted emits no more than a certain number of particles at a
time. This example makes it easy to see what happens when the limit is
reached.

.. raw:: html

   </p>

.. raw:: html

   <p>

Shape and Direction emits particles out of an unfilled Ellipse shape,
using a TargetDirection

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">shape</span>: <span class="name">EllipseShape</span> {<span class="name">fill</span>: <span class="number">false</span>}
   <span class="name">velocity</span>: <span class="name">TargetDirection</span> {
   <span class="name">targetX</span>: <span class="name">root</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">targetY</span>: <span class="name">root</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
   <span class="name">proportionalMagnitude</span>: <span class="number">true</span>
   <span class="name">magnitude</span>: <span class="number">0.5</span>
   }</pre>

.. raw:: html

   <p>

This sends the particles towards the center of the ellipse with
proportional speed, keeping the ellipse outline as they move to the
center.

.. raw:: html

   </p>

.. raw:: html

   <p>

TrailEmitter uses that type to add smoke particles to trail the fire
particles in the scene.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">onEmitParticles</span>: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">particles</span>.<span class="name">length</span>; i++) {
   var <span class="name">particle</span> = <span class="name">particles</span>[<span class="name">i</span>];
   <span class="name">particle</span>.<span class="name">startSize</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">max</span>(<span class="number">02</span>,<span class="name">Math</span>.<span class="name">min</span>(<span class="number">492</span>,<span class="name">Math</span>.<span class="name">tan</span>(<span class="name">particle</span>.<span class="name">t</span><span class="operator">/</span><span class="number">2</span>)<span class="operator">*</span><span class="number">24</span>));
   var <span class="name">theta</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">6.0</span>);
   <span class="name">particle</span>.<span class="name">red</span> <span class="operator">=</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">1</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">2</span> ? <span class="number">0.2</span> : <span class="number">1</span>;
   <span class="name">particle</span>.<span class="name">green</span> <span class="operator">=</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">2</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">3</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">4</span> ? <span class="number">0.2</span> : <span class="number">1</span>;
   <span class="name">particle</span>.<span class="name">blue</span> <span class="operator">=</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">4</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">5</span> <span class="operator">||</span> <span class="name">theta</span> <span class="operator">==</span> <span class="number">0</span> ? <span class="number">0.2</span> : <span class="number">1</span>;
   <span class="name">theta</span> <span class="operator">/=</span> <span class="number">6.0</span>;
   <span class="name">theta</span> <span class="operator">*=</span> <span class="number">2.0</span><span class="operator">*</span><span class="name">Math</span>.<span class="name">PI</span>;
   <span class="name">theta</span> <span class="operator">+=</span> <span class="name">sys</span>.<span class="name">convert</span>(<span class="name">sys</span>.<span class="name">petalRotation</span>);<span class="comment">//Convert from degrees to radians</span>
   <span class="name">particle</span>.<span class="name">initialVX</span> <span class="operator">=</span> <span class="name">petalLength</span> <span class="operator">*</span> <span class="name">Math</span>.<span class="name">cos</span>(<span class="name">theta</span>);
   <span class="name">particle</span>.<span class="name">initialVY</span> <span class="operator">=</span> <span class="name">petalLength</span> <span class="operator">*</span> <span class="name">Math</span>.<span class="name">sin</span>(<span class="name">theta</span>);
   <span class="name">particle</span>.<span class="name">initialAX</span> <span class="operator">=</span> <span class="name">particle</span>.<span class="name">initialVX</span> <span class="operator">*</span> -<span class="number">0.5</span>;
   <span class="name">particle</span>.<span class="name">initialAY</span> <span class="operator">=</span> <span class="name">particle</span>.<span class="name">initialVY</span> <span class="operator">*</span> -<span class="number">0.5</span>;
   }
   }</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

particles/emitters/emitters.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/burstandpulse.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/customemitter.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/emitmask.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/maximumemitted.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/shapeanddirection.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/trailemitter.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/content/velocityfrommotion.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/emitters.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/emitters.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/emitters/emitters.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@particles/emitters -->

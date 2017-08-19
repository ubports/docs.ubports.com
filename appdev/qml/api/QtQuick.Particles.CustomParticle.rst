QtQuick.Particles.CustomParticle
================================

.. raw:: html

   <p>

For specifying shaders to paint particles More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CustomParticle -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQuick.Particles 2.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

ParticlePainter

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

fragmentShader : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

vertexShader : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$CustomParticle-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@CustomParticle -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$fragmentShader -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="fragmentShader-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

fragmentShader : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the fragment shader's GLSL source code. The default
shader expects the texture coordinate to be passed from the vertex
shader as "varying highp vec2 qt\_TexCoord0", and it samples from a
sampler2D named "source".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@fragmentShader -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="vertexShader-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

vertexShader : string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This property holds the vertex shader's GLSL source code.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default shader passes the texture coordinate along to the fragment
shader as "varying highp vec2 qt\_TexCoord0".

.. raw:: html

   </p>

.. raw:: html

   <p>

To aid writing a particle vertex shader, the following GLSL code is
prepended to your vertex shader:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">attribute highp vec2 qt_ParticlePos;
   attribute highp vec2 qt_ParticleTex;
   attribute highp vec4 qt_ParticleData; <span class="comment">//  x = time,  y = lifeSpan, z = size,  w = endSize</span>
   attribute highp vec4 qt_ParticleVec; <span class="comment">// x,y = constant velocity,  z,w = acceleration</span>
   attribute highp <span class="type">float</span> qt_ParticleR;
   uniform highp mat4 qt_Matrix;
   uniform highp <span class="type">float</span> qt_Timestamp;
   varying highp vec2 qt_TexCoord0;
   <span class="type">void</span> defaultMain() {
   qt_TexCoord0 <span class="operator">=</span> qt_ParticleTex;
   highp <span class="type">float</span> size <span class="operator">=</span> qt_ParticleData<span class="operator">.</span>z;
   highp <span class="type">float</span> endSize <span class="operator">=</span> qt_ParticleData<span class="operator">.</span>w;
   highp <span class="type">float</span> t <span class="operator">=</span> (qt_Timestamp <span class="operator">-</span> qt_ParticleData<span class="operator">.</span>x) <span class="operator">/</span> qt_ParticleData<span class="operator">.</span>y;
   highp <span class="type">float</span> currentSize <span class="operator">=</span> mix(size<span class="operator">,</span> endSize<span class="operator">,</span> t <span class="operator">*</span> t);
   <span class="keyword">if</span> (t <span class="operator">&lt;</span> <span class="number">0.</span> <span class="operator">|</span><span class="operator">|</span> t <span class="operator">&gt;</span> <span class="number">1.</span>)
   currentSize <span class="operator">=</span> <span class="number">0.</span>;
   highp vec2 pos <span class="operator">=</span> qt_ParticlePos
   <span class="operator">-</span> currentSize <span class="operator">/</span> <span class="number">2.</span> <span class="operator">+</span> currentSize <span class="operator">*</span> qt_ParticleTex   <span class="comment">// adjust size</span>
   <span class="operator">+</span> qt_ParticleVec<span class="operator">.</span>xy <span class="operator">*</span> t <span class="operator">*</span> qt_ParticleData<span class="operator">.</span>y         <span class="comment">// apply velocity vector..</span>
   <span class="operator">+</span> <span class="number">0.5</span> <span class="operator">*</span> qt_ParticleVec<span class="operator">.</span>zw <span class="operator">*</span> pow(t <span class="operator">*</span> qt_ParticleData<span class="operator">.</span>y<span class="operator">,</span> <span class="number">2.</span>);
   gl_Position <span class="operator">=</span> qt_Matrix <span class="operator">*</span> vec4(pos<span class="operator">.</span>x<span class="operator">,</span> pos<span class="operator">.</span>y<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>);
   }</pre>

.. raw:: html

   <p>

defaultMain() is the same code as in the default shader, you can call
this for basic particle functions and then add additional variables for
custom effects. Note that the vertex shader for particles is responsible
for simulating the movement of particles over time, the particle data
itself only has the starting position and spawn time.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@vertexShader -->



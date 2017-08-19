QtQuick.UniformAnimator
=======================

.. raw:: html

   <p>

The UniformAnimator type animates a uniform of a ShaderEffect. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UniformAnimator -->

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

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Qt 5.2

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

uniform : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$UniformAnimator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Animator types are different from normal Animation types. When using an
Animator, the animation can be run in the render thread and the property
value will jump to the end when the animation is complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value of the QML property defining the uniform is updated after the
animation has finished.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet shows how to use a UniformAnimator together with a
ShaderEffect item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ShaderEffect.md">ShaderEffect</a></span> {
   <span class="name">id</span>: <span class="name">shader</span>
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   property <span class="type">variant</span> <span class="name">t</span>;
   <span class="type"><a href="index.html">UniformAnimator</a></span> {
   <span class="name">target</span>: <span class="name">shader</span>
   <span class="name">uniform</span>: <span class="string">&quot;t&quot;</span>
   <span class="name">from</span>: <span class="number">0</span>
   <span class="name">to</span>: <span class="number">1</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">running</span>: <span class="number">true</span>
   }
   <span class="name">fragmentShader</span>:
   <span class="string">&quot;
   uniform lowp float t;
   varying highp vec2 qt_TexCoord0;
   void main() {
   lowp float c = qt_TexCoord0.y;
   gl_FragColor = vec4(0, 0, c * t, 1);
   }
   &quot;</span>
   }</pre>

.. raw:: html

   <p>

It is also possible to use the on keyword to tie the UniformAnimator
directly to a uniform of a ShaderEffect instance.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ShaderEffect.md">ShaderEffect</a></span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   property <span class="type">variant</span> <span class="name">t</span>;
   UniformAnimator on <span class="name">t</span> {
   <span class="name">from</span>: <span class="number">0</span>
   <span class="name">to</span>: <span class="number">1</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   }
   <span class="name">fragmentShader</span>:
   <span class="string">&quot;
   uniform lowp float t;
   varying highp vec2 qt_TexCoord0;
   void main() {
   lowp float c = qt_TexCoord0.y;
   gl_FragColor = vec4(c * t, 0, 0, 1);
   }
   &quot;</span>
   }</pre>

.. raw:: html

   <p>

See also ShaderEffect and ShaderEffectSource.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@UniformAnimator -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$uniform -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="uniform-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

uniform : string

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

This property holds the name of the uniform to animate.

.. raw:: html

   </p>

.. raw:: html

   <p>

The value of the uniform must correspond to both a property on the
target ShaderEffect and must be a uniform of type float in the fragment
or vertex shader.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@uniform -->



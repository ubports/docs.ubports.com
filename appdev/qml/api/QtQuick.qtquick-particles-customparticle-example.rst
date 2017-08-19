QtQuick.qtquick-particles-customparticle-example
================================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This is a collection of small QML examples relating to using
CustomParticle in the particle system. Each example is a small QML file
emphasizing a different way to use CustomParticle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Blur Particles adds a blur effect to the particles, which increases over
the particle's life time. It uses a custom vertex shader:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">vertexShader</span>:<span class="string">&quot;
   uniform lowp float qt_Opacity;
   varying lowp float fFade;
   varying lowp float fBlur;
   void main() {
   defaultMain();
   highp float t = (qt_Timestamp - qt_ParticleData.x) / qt_ParticleData.y;
   highp float fadeIn = min(t * 10., 1.);
   highp float fadeOut = 1. - max(0., min((t - 0.75) * 4., 1.));
   fFade = fadeIn * fadeOut * qt_Opacity;
   fBlur = max(0.2 * t, t * qt_ParticleR);
   }
   &quot;</span></pre>

.. raw:: html

   <p>

to propagate life time simulation to a custom fragment shader:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">fragmentShader</span>: <span class="string">&quot;
   uniform sampler2D source;
   uniform sampler2D blurred;
   varying highp vec2 qt_TexCoord0;
   varying highp float fBlur;
   varying highp float fFade;
   void main() {
   gl_FragColor = mix(texture2D(source, qt_TexCoord0), texture2D(blurred, qt_TexCoord0), min(1.0,fBlur*3.0)) * fFade;
   }&quot;</span></pre>

.. raw:: html

   <p>

which has access to both the normal image sampler and a blurred sampler,
the image plus a ShaderEffect.

.. raw:: html

   </p>

.. raw:: html

   <p>

Fragment Shader just uses the particle system as a vertex delivery
system.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">fragmentShader</span>: <span class="string">&quot;
   varying highp vec2 fPos;
   varying lowp float fFade;
   varying highp vec2 qt_TexCoord0;
   void main() {//*2 because this generates dark colors mostly
   highp vec2 circlePos = qt_TexCoord0*2.0 - vec2(1.0,1.0);
   highp float dist = length(circlePos);
   highp float circleFactor = max(min(1.0 - dist, 1.0), 0.0);
   gl_FragColor = vec4(fPos.x*2.0 - fPos.y, fPos.y*2.0 - fPos.x, fPos.x*fPos.y*2.0, 0.0) * circleFactor * fFade;
   }&quot;</span></pre>

.. raw:: html

   <p>

Image Colors uses CustomParticle to assign colors to particles based on
their location in a picture. The vertex shader,

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">vertexShader</span>:<span class="string">&quot;
   uniform highp float maxWidth;
   uniform highp float maxHeight;
   varying highp vec2 fTex2;
   varying lowp float fFade;
   uniform lowp float qt_Opacity;
   void main() {
   fTex2 = vec2(qt_ParticlePos.x, qt_ParticlePos.y);
   //Uncomment this next line for each particle to use full texture, instead of the solid color at the center of the particle.
   //fTex2 = fTex2 + ((- qt_ParticleData.z / 2. + qt_ParticleData.z) * qt_ParticleTex); //Adjusts size so it's like a chunk of image.
   fTex2 = fTex2 / vec2(maxWidth, maxHeight);
   highp float t = (qt_Timestamp - qt_ParticleData.x) / qt_ParticleData.y;
   fFade = min(t*4., (1.-t*t)*.75) * qt_Opacity;
   defaultMain();
   }
   &quot;</span></pre>

.. raw:: html

   <p>

passes along the starting position for each vertex to the fragment
shader,

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">fragmentShader</span>: <span class="string">&quot;
   uniform sampler2D particleTexture;
   uniform sampler2D pictureTexture;
   varying highp vec2 qt_TexCoord0;
   varying highp vec2 fTex2;
   varying lowp float fFade;
   void main() {
   gl_FragColor = texture2D(pictureTexture, fTex2) * texture2D(particleTexture, qt_TexCoord0).w * fFade;
   }&quot;</span></pre>

.. raw:: html

   <p>

which uses it to determine the color for that particle.

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

particles/customparticle/customparticle.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/content/blurparticles.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/content/fragmentshader.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/content/imagecolors.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/customparticle.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/customparticle.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

particles/customparticle/customparticle.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@particles/customparticle -->

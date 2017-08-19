QtQuick.qtquick-imageelements-example
=====================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Image Elements is a collection of small QML examples relating to image
types. For more information, visit Use Case - Visual Elements In QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="borderimage">

BorderImage

.. raw:: html

   </h2>

.. raw:: html

   <p>

BorderImage shows off the various scaling modes of the BorderImage type
by setting its horizontalTileMode and verticalTileMode properties.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="image">

Image

.. raw:: html

   </h2>

.. raw:: html

   <p>

Image shows off the various fill modes of the Image type.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="shadows">

Shadows

.. raw:: html

   </h2>

.. raw:: html

   <p>

Shadows shows how to create a drop shadow effect for a rectangular item
using a BorderImage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.BorderImage.md">BorderImage</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">rectangle</span>
   <span class="type">anchors</span> { <span class="name">leftMargin</span>: -<span class="number">6</span>; <span class="name">topMargin</span>: -<span class="number">6</span>; <span class="name">rightMargin</span>: -<span class="number">8</span>; <span class="name">bottomMargin</span>: -<span class="number">8</span> }
   <span class="type">border</span> { <span class="name">left</span>: <span class="number">10</span>; <span class="name">top</span>: <span class="number">10</span>; <span class="name">right</span>: <span class="number">10</span>; <span class="name">bottom</span>: <span class="number">10</span> }
   <span class="name">source</span>: <span class="string">&quot;shadow.png&quot;</span>
   }</pre>

.. raw:: html

   <h2 id="animatedsprite">

AnimatedSprite

.. raw:: html

   </h2>

.. raw:: html

   <p>

AnimatedSprite shows how to display a simple animation using an
AnimatedSprite object:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.AnimatedSprite.md">AnimatedSprite</a></span> {
   <span class="name">id</span>: <span class="name">sprite</span>
   <span class="name">width</span>: <span class="number">170</span>
   <span class="name">height</span>: <span class="number">170</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">source</span>: <span class="string">&quot;content/speaker.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">60</span>
   <span class="name">frameSync</span>: <span class="number">true</span>
   <span class="name">frameWidth</span>: <span class="number">170</span>
   <span class="name">frameHeight</span>: <span class="number">170</span>
   <span class="name">loops</span>: <span class="number">3</span>
   }</pre>

.. raw:: html

   <p>

The sprite animation will loop three times.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="spritesequence">

SpriteSequence

.. raw:: html

   </h2>

.. raw:: html

   <p>

SpriteSequence demonstrates using a sprite sequence to draw an animated
and interactive bear. The SpriteSequence object defines five different
sprites. The bear is initially in a still state:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span>{
   <span class="name">name</span>: <span class="string">&quot;still&quot;</span>
   <span class="name">source</span>: <span class="string">&quot;content/BearSheet.png&quot;</span>
   <span class="name">frameCount</span>: <span class="number">1</span>
   <span class="name">frameWidth</span>: <span class="number">256</span>
   <span class="name">frameHeight</span>: <span class="number">256</span>
   <span class="name">frameDuration</span>: <span class="number">100</span>
   <span class="name">to</span>: {&quot;still&quot;:<span class="number">1</span>, &quot;blink&quot;:<span class="number">0.1</span>, &quot;floating&quot;:<span class="number">0</span>}
   }</pre>

.. raw:: html

   <p>

When the scene is clicked, an animation sets the sprite sequence to the
falling states and animates the bear's y property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="name">id</span>: <span class="name">anim</span>
   <span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">image</span>.<span class="name">goalSprite</span> <span class="operator">=</span> <span class="string">&quot;falling&quot;</span>; }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">image</span>; <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">to</span>: <span class="number">480</span>; <span class="name">duration</span>: <span class="number">12000</span>; }
   <span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: {<span class="name">image</span>.<span class="name">goalSprite</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>; <span class="name">image</span>.<span class="name">jumpTo</span>(<span class="string">&quot;still&quot;</span>);} }
   <span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">image</span>; <span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">value</span>: <span class="number">0</span> }
   }</pre>

.. raw:: html

   <p>

At the end of the animation the bear is set back to its initial state.

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

imageelements/animatedsprite.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/borderimage.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/image.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/imageelements.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/shadows.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/spritesequence.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/content/BorderImageSelector.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/content/ImageCell.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/content/MyBorderImage.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/content/ShadowRectangle.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/imageelements.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/imageelements.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

imageelements/imageelements.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@imageelements -->

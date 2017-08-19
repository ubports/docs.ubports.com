QtQuick.qtquick-text-example
============================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Text is a collection of small QML examples relating to text. Each
example is a small QML file, usually containing or emphasizing a
particular type or feature. You can run and observe the behavior of each
example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="hello">

Hello

.. raw:: html

   </h2>

.. raw:: html

   <p>

Hello shows how to change and animate the letter spacing of a Text type.
It uses a sequential animation to first animate the font.letterSpacing
property from 0 to 50 over three seconds and then move the text to a
random position on screen:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            SequentialAnimation on <span class="name">font</span>.letterSpacing {
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>;
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">50</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InQuad</span>; <span class="name">duration</span>: <span class="number">3000</span> }
   <span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> {
   <span class="name">script</span>: {
   <span class="name">container</span>.<span class="name">y</span> <span class="operator">=</span> (<span class="name">screen</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">4</span>) <span class="operator">+</span> (<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">screen</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">2</span>)
   <span class="name">container</span>.<span class="name">x</span> <span class="operator">=</span> (<span class="name">screen</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">4</span>) <span class="operator">+</span> (<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">screen</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>)
   }
   }
   }</pre>

.. raw:: html

   <h2 id="fonts">

Fonts

.. raw:: html

   </h2>

.. raw:: html

   <p>

Fonts shows different ways of using fonts with the Text type. Simply by
name, using the font.family property directly:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">            <span class="name">font</span>.family: <span class="string">&quot;Times&quot;</span></pre>

.. raw:: html

   <p>

or using a FontLoader type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.FontLoader.md">FontLoader</a></span> { <span class="name">id</span>: <span class="name">fixedFont</span>; <span class="name">name</span>: <span class="string">&quot;Courier&quot;</span> }</pre>

.. raw:: html

   <p>

or using a FontLoader and specifying a local font file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.FontLoader.md">FontLoader</a></span> { <span class="name">id</span>: <span class="name">localFont</span>; <span class="name">source</span>: <span class="string">&quot;content/fonts/tarzeau_ocr_a.ttf&quot;</span> }</pre>

.. raw:: html

   <p>

or finally using a FontLoader and specifying a remote font file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.FontLoader.md">FontLoader</a></span> { <span class="name">id</span>: <span class="name">webFont</span>; <span class="name">source</span>: <span class="string">&quot;http://www.princexml.com/fonts/steffmann/Starburst.ttf&quot;</span> }</pre>

.. raw:: html

   <h2 id="available-fonts">

Available Fonts

.. raw:: html

   </h2>

.. raw:: html

   <p>

Available Fonts shows how to use the QML Qt global object and a list
view to display all the fonts available on the system. The ListView type
uses the list of fonts available as its model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">model</span>: <span class="name">Qt</span>.<span class="name">fontFamilies</span>()</pre>

.. raw:: html

   <p>

Inside the delegate, the font family is set with the modelData:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                <span class="name">font</span>.family: <span class="name">modelData</span></pre>

.. raw:: html

   <h2 id="banner">

Banner

.. raw:: html

   </h2>

.. raw:: html

   <p>

Banner is a simple example showing how to create a banner using a row of
text types and a NumberAnimation.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="img-tag">

Img Tag

.. raw:: html

   </h2>

.. raw:: html

   <p>

Img tag shows different ways of displaying images in text objects using
the <img> tag.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="text-layout">

Text Layout

.. raw:: html

   </h2>

.. raw:: html

   <p>

Text Layout shows how to create a more complex layout for a text item.
This example lays out the text in two columns using the onLineLaidOut
handler that allows you to position and resize each line:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">onLineLaidOut</span>: {
   <span class="name">line</span>.<span class="name">width</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>  <span class="operator">-</span> (<span class="name">margin</span>)
   <span class="keyword">if</span> (<span class="name">line</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">line</span>.<span class="name">height</span> <span class="operator">&gt;=</span> <span class="name">height</span>) {
   <span class="name">line</span>.<span class="name">y</span> <span class="operator">-=</span> <span class="name">height</span> <span class="operator">-</span> <span class="name">margin</span>
   <span class="name">line</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span> <span class="operator">+</span> <span class="name">margin</span>
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

text/styledtext-layout.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/text.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/fonts/availableFonts.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/fonts/banner.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/fonts/fonts.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/fonts/hello.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/imgtag/TextWithImage.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/imgtag/imgtag.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/textselection/textselection.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

text/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

text/text.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

text/text.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

text/text.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@text -->

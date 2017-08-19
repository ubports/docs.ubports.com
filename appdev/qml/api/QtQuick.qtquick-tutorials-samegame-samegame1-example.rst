QtQuick.qtquick-tutorials-samegame-samegame1-example
====================================================

.. raw:: html

   <h3>

Creating the application screen

.. raw:: html

   </h3>

.. raw:: html

   <p>

The first step is to create the basic QML items in your application.

.. raw:: html

   </p>

.. raw:: html

   <p>

To begin with, we create our Same Game application with a main screen
like this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This is defined by the main application file, samegame.qml, which looks
like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">screen</span>
   <span class="name">width</span>: <span class="number">490</span>; <span class="name">height</span>: <span class="number">720</span>
   <span class="type"><a href="QtQuick.SystemPalette.md">SystemPalette</a></span> { <span class="name">id</span>: <span class="name">activePalette</span> }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
   <span class="type">anchors</span> { <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>; <span class="name">bottom</span>: <span class="name">toolBar</span>.<span class="name">top</span> }
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">background</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: <span class="string">&quot;../shared/pics/background.jpg&quot;</span>
   <span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectCrop</span>
   }
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">toolBar</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">window</span>
   <span class="name">anchors</span>.bottom: <span class="name">screen</span>.<span class="name">bottom</span>
   <span class="type">Button</span> {
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
   <span class="name">text</span>: <span class="string">&quot;New Game&quot;</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;This doesn't do anything yet...&quot;</span>)
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">score</span>
   <span class="type">anchors</span> { <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
   <span class="name">text</span>: <span class="string">&quot;Score: Who knows?&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

This gives you a basic game window that includes the main canvas for the
blocks, a "New Game" button and a score display.

.. raw:: html

   </p>

.. raw:: html

   <p>

One item you may not recognize here is the SystemPalette item. This
provides access to the Qt system palette and is used to give the button
a more native look-and-feel.

.. raw:: html

   </p>

.. raw:: html

   <p>

Notice the anchors for the Item, Button and Text types are set using
group (dot) notation for readability.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Adding Button and Block components

.. raw:: html

   </h3>

.. raw:: html

   <p>

The Button item in the code above is defined in a separate component
file named Button.qml. To create a functional button, we use the QML
types Text and MouseArea inside a Rectangle. Here is the Button.qml
code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">string</span> <span class="name">text</span>: <span class="string">&quot;Button&quot;</span>
   signal <span class="type">clicked</span>
   <span class="name">width</span>: <span class="name">buttonLabel</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>; <span class="name">height</span>: <span class="name">buttonLabel</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">5</span>
   <span class="type">border</span> { <span class="name">width</span>: <span class="number">1</span>; <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">darker</span>(<span class="name">activePalette</span>.<span class="name">button</span>) }
   <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="name">radius</span>: <span class="number">8</span>
   <span class="comment">// color the button with a gradient</span>
   <span class="name">gradient</span>: <span class="name">Gradient</span> {
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> {
   <span class="name">position</span>: <span class="number">0.0</span>
   <span class="name">color</span>: {
   <span class="keyword">if</span> (<span class="name">mouseArea</span>.<span class="name">pressed</span>)
   <span class="keyword">return</span> <span class="name">activePalette</span>.<span class="name">dark</span>
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="name">activePalette</span>.<span class="name">light</span>
   }
   }
   <span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">button</span> }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">container</span>.<span class="name">clicked</span>();
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">buttonLabel</span>
   <span class="name">anchors</span>.centerIn: <span class="name">container</span>
   <span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">buttonText</span>
   <span class="name">text</span>: <span class="name">container</span>.<span class="name">text</span>
   }
   }</pre>

.. raw:: html

   <p>

This essentially defines a rectangle that contains text and can be
clicked. The MouseArea has an onClicked() handler that is implemented to
emit the clicked() signal of the container when the area is clicked.

.. raw:: html

   </p>

.. raw:: html

   <p>

In Same Game, the screen is filled with small blocks when the game
begins. Each block is just an item that contains an image. The block
code is defined in a separate Block.qml file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">block</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">img</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: <span class="string">&quot;../shared/pics/redStone.png&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

At the moment, the block doesn't do anything; it is just an image. As
the tutorial progresses we will animate and give behaviors to the
blocks. We have not added any code yet to create the blocks; we will do
this in the next chapter.

.. raw:: html

   </p>

.. raw:: html

   <p>

We have set the image to be the size of its parent Item using
anchors.fill: parent. This means that when we dynamically create and
resize the block items later on in the tutorial, the image will be
scaled automatically to the correct size.

.. raw:: html

   </p>

.. raw:: html

   <p>

Notice the relative path for the Image type's source property. This path
is relative to the location of the file that contains the Image type.
Alternatively, you could set the Image source to an absolute file path
or a URL that contains an image.

.. raw:: html

   </p>

.. raw:: html

   <p>

You should be familiar with the code so far. We have just created some
basic types to get started. Next, we will populate the game canvas with
some blocks.

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

tutorials/samegame/samegame1/Block.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame1/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame1/samegame.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame1/samegame1.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/samegame/samegame1 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Advanced Tutorial QML Advanced Tutorial 2 - Populating the Game
Canvas

.. raw:: html

   </p>

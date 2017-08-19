QtQuick.qtquick-tutorials-samegame-samegame2-example
====================================================

.. raw:: html

   <h3>

Generating the blocks in JavaScript

.. raw:: html

   </h3>

.. raw:: html

   <p>

Now that we've written some types, let's start writing the game.

.. raw:: html

   </p>

.. raw:: html

   <p>

The first task is to generate the game blocks. Each time the New Game
button is clicked, the game canvas is populated with a new, random set
of blocks. Since we need to dynamically generate new blocks for each new
game, we cannot use Repeater to define the blocks. Instead, we will
create the blocks in JavaScript.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is the JavaScript code for generating the blocks, contained in a
new file, samegame.js. The code is explained below.

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">var <span class="name">blockSize</span> = <span class="number">40</span>;
   var <span class="name">maxColumn</span> = <span class="number">10</span>;
   var <span class="name">maxRow</span> = <span class="number">15</span>;
   var <span class="name">maxIndex</span> = <span class="name">maxColumn</span> <span class="operator">*</span> <span class="name">maxRow</span>;
   var <span class="name">board</span> = new <span class="name">Array</span>(<span class="name">maxIndex</span>);
   var <span class="name">component</span>;
   <span class="comment">//Index function used instead of a 2D array</span>
   <span class="keyword">function</span> <span class="name">index</span>(<span class="name">column</span>, row) {
   <span class="keyword">return</span> <span class="name">column</span> <span class="operator">+</span> (<span class="name">row</span> <span class="operator">*</span> <span class="name">maxColumn</span>);
   }
   <span class="keyword">function</span> <span class="name">startNewGame</span>() {
   <span class="comment">//Delete blocks from previous game</span>
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">maxIndex</span>; i++) {
   <span class="keyword">if</span> (<span class="name">board</span>[<span class="name">i</span>] <span class="operator">!=</span> <span class="number">null</span>)
   <span class="name">board</span>[<span class="name">i</span>].<span class="name">destroy</span>();
   }
   <span class="comment">//Calculate board size</span>
   <span class="name">maxColumn</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">background</span>.<span class="name">width</span> <span class="operator">/</span> <span class="name">blockSize</span>);
   <span class="name">maxRow</span> <span class="operator">=</span> <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">background</span>.<span class="name">height</span> <span class="operator">/</span> <span class="name">blockSize</span>);
   <span class="name">maxIndex</span> <span class="operator">=</span> <span class="name">maxRow</span> <span class="operator">*</span> <span class="name">maxColumn</span>;
   <span class="comment">//Initialize Board</span>
   <span class="name">board</span> <span class="operator">=</span> new <span class="name">Array</span>(<span class="name">maxIndex</span>);
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">column</span> = <span class="number">0</span>; <span class="name">column</span> <span class="operator">&lt;</span> <span class="name">maxColumn</span>; column++) {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">row</span> = <span class="number">0</span>; <span class="name">row</span> <span class="operator">&lt;</span> <span class="name">maxRow</span>; row++) {
   <span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">row</span>)] <span class="operator">=</span> <span class="number">null</span>;
   <span class="name">createBlock</span>(<span class="name">column</span>, <span class="name">row</span>);
   }
   }
   }
   <span class="keyword">function</span> <span class="name">createBlock</span>(<span class="name">column</span>, row) {
   <span class="keyword">if</span> (<span class="name">component</span> <span class="operator">==</span> <span class="number">null</span>)
   <span class="name">component</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Block.qml&quot;</span>);
   <span class="comment">// Note that if Block.qml was not a local file, component.status would be</span>
   <span class="comment">// Loading and we should wait for the component's statusChanged() signal to</span>
   <span class="comment">// know when the file is downloaded and ready before calling createObject().</span>
   <span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
   var <span class="name">dynamicObject</span> = <span class="name">component</span>.<span class="name">createObject</span>(<span class="name">background</span>);
   <span class="keyword">if</span> (<span class="name">dynamicObject</span> <span class="operator">==</span> <span class="number">null</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;error creating block&quot;</span>);
   <span class="name">console</span>.<span class="name">log</span>(<span class="name">component</span>.<span class="name">errorString</span>());
   <span class="keyword">return</span> <span class="number">false</span>;
   }
   <span class="name">dynamicObject</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">column</span> <span class="operator">*</span> <span class="name">blockSize</span>;
   <span class="name">dynamicObject</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">row</span> <span class="operator">*</span> <span class="name">blockSize</span>;
   <span class="name">dynamicObject</span>.<span class="name">width</span> <span class="operator">=</span> <span class="name">blockSize</span>;
   <span class="name">dynamicObject</span>.<span class="name">height</span> <span class="operator">=</span> <span class="name">blockSize</span>;
   <span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">row</span>)] <span class="operator">=</span> <span class="name">dynamicObject</span>;
   } <span class="keyword">else</span> {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;error loading block component&quot;</span>);
   <span class="name">console</span>.<span class="name">log</span>(<span class="name">component</span>.<span class="name">errorString</span>());
   <span class="keyword">return</span> <span class="number">false</span>;
   }
   <span class="keyword">return</span> <span class="number">true</span>;
   }</pre>

.. raw:: html

   <p>

The startNewGame() function deletes the blocks created in the previous
game and calculates the number of rows and columns of blocks required to
fill the game window for the new game. Then, it creates an array to
store all the game blocks, and calls createBlock() to create enough
blocks to fill the game window.

.. raw:: html

   </p>

.. raw:: html

   <p>

The createBlock() function creates a block from the Block.qml file and
moves the new block to its position on the game canvas. This involves
several steps:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Qt.createComponent() is called to generate a type from Block.qml. If the
component is ready, we can call createObject() to create an instance of
the Block item.

.. raw:: html

   </li>

.. raw:: html

   <li>

If createObject() returned null (i.e. if there was an error while
loading the object), print the error information.

.. raw:: html

   </li>

.. raw:: html

   <li>

Place the block in its position on the board and set its width and
height. Also, store it in the blocks array for future reference.

.. raw:: html

   </li>

.. raw:: html

   <li>

Finally, print error information to the console if the component could
not be loaded for some reason (for example, if the file is missing).

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Connecting JavaScript components to QML

.. raw:: html

   </h3>

.. raw:: html

   <p>

Now we need to call the JavaScript code in samegame.js from our QML
files. To do this, we add this line to samegame.qml which imports the
JavaScript file as a module:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;samegame.js&quot; as SameGame</pre>

.. raw:: html

   <p>

This allows us to refer to any functions within samegame.js using
"SameGame" as a prefix: for example, SameGame.startNewGame() or
SameGame.createBlock(). This means we can now connect the New Game
button's onClicked handler to the startNewGame() function, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">Button</span> {
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
   <span class="name">text</span>: <span class="string">&quot;New Game&quot;</span>
   <span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">startNewGame</span>()
   }</pre>

.. raw:: html

   <p>

So, when you click the New Game button, startNewGame() is called and
generates a field of blocks, like this:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Now, we have a screen of blocks, and we can begin to add the game
mechanics.

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

tutorials/samegame/samegame2/Block.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame2/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame2/samegame.js

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame2/samegame.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame2/samegame2.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/samegame/samegame2 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Advanced Tutorial 1 - Creating the Game Canvas and Blocks QML
Advanced Tutorial 3 - Implementing the Game Logic

.. raw:: html

   </p>

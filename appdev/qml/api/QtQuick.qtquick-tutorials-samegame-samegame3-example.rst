QtQuick.qtquick-tutorials-samegame-samegame3-example
====================================================

.. raw:: html

   <h3>

Making a playable game

.. raw:: html

   </h3>

.. raw:: html

   <p>

Now that we have all the game components, we can add the game logic that
dictates how a player interacts with the blocks and plays the game until
it is won or lost.

.. raw:: html

   </p>

.. raw:: html

   <p>

To do this, we have added the following functions to samegame.js:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

handleClick(x,y)

.. raw:: html

   </li>

.. raw:: html

   <li>

floodFill(xIdx,yIdx,type)

.. raw:: html

   </li>

.. raw:: html

   <li>

shuffleDown()

.. raw:: html

   </li>

.. raw:: html

   <li>

victoryCheck()

.. raw:: html

   </li>

.. raw:: html

   <li>

floodMoveCheck(xIdx, yIdx, type)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

As this is a tutorial about QML, not game design, we will only discuss
handleClick() and victoryCheck() below since they interface directly
with the QML types. Note that although the game logic here is written in
JavaScript, it could have been written in C++ and then exposed to QML.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Enabling mouse click interaction

.. raw:: html

   </h4>

.. raw:: html

   <p>

To make it easier for the JavaScript code to interface with the QML
types, we have added an Item called gameCanvas to samegame.qml. It
replaces the background as the item which contains the blocks. It also
accepts mouse input from the user. Here is the item code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">gameCanvas</span>
   property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
   property <span class="type">int</span> <span class="name">blockSize</span>: <span class="number">40</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">%</span> <span class="name">blockSize</span>)
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">%</span> <span class="name">blockSize</span>)
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">handleClick</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   }</pre>

.. raw:: html

   <p>

The gameCanvas item is the exact size of the board, and has a score
property and a MouseArea to handle mouse clicks. The blocks are now
created as its children, and its dimensions are used to determine the
board size so that the application scales to the available screen size.
Since its size is bound to a multiple of blockSize, blockSize was moved
out of samegame.js and into samegame.qml as a QML property. Note that it
can still be accessed from the script.

.. raw:: html

   </p>

.. raw:: html

   <p>

When clicked, the MouseArea calls handleClick() in samegame.js, which
determines whether the player's click should cause any blocks to be
removed, and updates gameCanvas.score with the current score if
necessary. Here is the handleClick() function:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="keyword">function</span> <span class="name">handleClick</span>(<span class="name">xPos</span>, yPos) {
   var <span class="name">column</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">xPos</span> <span class="operator">/</span> <span class="name">gameCanvas</span>.<span class="name">blockSize</span>);
   var <span class="name">row</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">yPos</span> <span class="operator">/</span> <span class="name">gameCanvas</span>.<span class="name">blockSize</span>);
   <span class="keyword">if</span> (<span class="name">column</span> <span class="operator">&gt;=</span> <span class="name">maxColumn</span> <span class="operator">||</span> <span class="name">column</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">row</span> <span class="operator">&gt;=</span> <span class="name">maxRow</span> <span class="operator">||</span> <span class="name">row</span> <span class="operator">&lt;</span> <span class="number">0</span>)
   <span class="keyword">return</span>;
   <span class="keyword">if</span> (<span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">row</span>)] <span class="operator">==</span> <span class="number">null</span>)
   <span class="keyword">return</span>;
   <span class="comment">//If it's a valid block, remove it and all connected (does nothing if it's not connected)</span>
   <span class="name">floodFill</span>(<span class="name">column</span>, <span class="name">row</span>, -<span class="number">1</span>);
   <span class="keyword">if</span> (<span class="name">fillFound</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
   <span class="keyword">return</span>;
   <span class="name">gameCanvas</span>.<span class="name">score</span> <span class="operator">+=</span> (<span class="name">fillFound</span> <span class="operator">-</span> <span class="number">1</span>) <span class="operator">*</span> (<span class="name">fillFound</span> <span class="operator">-</span> <span class="number">1</span>);
   <span class="name">shuffleDown</span>();
   <span class="name">victoryCheck</span>();
   }</pre>

.. raw:: html

   <p>

Note that if score was a global variable in the samegame.js file you
would not be able to bind to it. You can only bind to QML properties.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Updating the score

.. raw:: html

   </h4>

.. raw:: html

   <p>

When the player clicks a block and triggers handleClick(), handleClick()
also calls victoryCheck() to update the score and to check whether the
player has completed the game. Here is the victoryCheck() code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="keyword">function</span> <span class="name">victoryCheck</span>() {
   <span class="comment">//Award bonus points if no blocks left</span>
   var <span class="name">deservesBonus</span> = <span class="number">true</span>;
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">column</span> = <span class="name">maxColumn</span> <span class="operator">-</span> <span class="number">1</span>; <span class="name">column</span> <span class="operator">&gt;=</span> <span class="number">0</span>; column--)
   <span class="keyword">if</span> (<span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">maxRow</span> <span class="operator">-</span> <span class="number">1</span>)] <span class="operator">!=</span> <span class="number">null</span>)
   <span class="name">deservesBonus</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="keyword">if</span> (<span class="name">deservesBonus</span>)
   <span class="name">gameCanvas</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">500</span>;
   <span class="comment">//Check whether game has finished</span>
   <span class="keyword">if</span> (<span class="name">deservesBonus</span> <span class="operator">||</span> !(<span class="name">floodMoveCheck</span>(<span class="number">0</span>, <span class="name">maxRow</span> <span class="operator">-</span> <span class="number">1</span>, -<span class="number">1</span>)))
   <span class="name">dialog</span>.<span class="name">show</span>(<span class="string">&quot;Game Over. Your score is &quot;</span> <span class="operator">+</span> <span class="name">gameCanvas</span>.<span class="name">score</span>);
   }</pre>

.. raw:: html

   <p>

This updates the gameCanvas.score value and displays a "Game Over"
dialog if the game is finished.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Game Over dialog is created using a Dialog type that is defined in
Dialog.qml. Here is the Dialog.qml code. Notice how it is designed to be
usable imperatively from the script file, via the functions and signals:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   <span class="keyword">function</span> <span class="name">show</span>(<span class="name">text</span>) {
   <span class="name">dialogText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">text</span>;
   <span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
   }
   <span class="keyword">function</span> <span class="name">hide</span>() {
   <span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
   }
   <span class="name">width</span>: <span class="name">dialogText</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>
   <span class="name">height</span>: <span class="name">dialogText</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">20</span>
   <span class="name">opacity</span>: <span class="number">0</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">dialogText</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;&quot;</span>
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">hide</span>();
   }
   }</pre>

.. raw:: html

   <p>

And this is how it is used in the main samegame.qml file:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">Dialog</span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">z</span>: <span class="number">100</span>
   }</pre>

.. raw:: html

   <p>

We give the dialog a z value of 100 to ensure it is displayed on top of
our other components. The default z value for an item is 0.

.. raw:: html

   </p>

.. raw:: html

   <h4>

A dash of color

.. raw:: html

   </h4>

.. raw:: html

   <p>

It's not much fun to play Same Game if all the blocks are the same
color, so we've modified the createBlock() function in samegame.js to
randomly create a different type of block (for either red, green or
blue) each time it is called. Block.qml has also changed so that each
block contains a different image depending on its type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">block</span>
   property <span class="type">int</span> <span class="name">type</span>: <span class="number">0</span>
   <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">img</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: {
   <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">0</span>)
   <span class="keyword">return</span> <span class="string">&quot;../shared/pics/redStone.png&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">1</span>)
   <span class="keyword">return</span> <span class="string">&quot;../shared/pics/blueStone.png&quot;</span>;
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="string">&quot;../shared/pics/greenStone.png&quot;</span>;
   }
   }
   }</pre>

.. raw:: html

   <h3>

A working game

.. raw:: html

   </h3>

.. raw:: html

   <p>

Now we now have a working game! The blocks can be clicked, the player
can score, and the game can end (and then you can start a new one). Here
is a screenshot of what has been accomplished so far:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This is what samegame.qml looks like now:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import &quot;samegame.js&quot; as SameGame
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
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">gameCanvas</span>
   property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
   property <span class="type">int</span> <span class="name">blockSize</span>: <span class="number">40</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">%</span> <span class="name">blockSize</span>)
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">%</span> <span class="name">blockSize</span>)
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">handleClick</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   }
   }
   <span class="type">Dialog</span> {
   <span class="name">id</span>: <span class="name">dialog</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">z</span>: <span class="number">100</span>
   }
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">toolBar</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">window</span>
   <span class="name">anchors</span>.bottom: <span class="name">screen</span>.<span class="name">bottom</span>
   <span class="type">Button</span> {
   <span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
   <span class="name">text</span>: <span class="string">&quot;New Game&quot;</span>
   <span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">startNewGame</span>()
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

The game works, but it's a little boring right now. Where are the smooth
animated transitions? Where are the high scores? If you were a QML
expert you could have written these in the first iteration, but in this
tutorial they've been saved until the next chapter - where your
application becomes alive!

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

tutorials/samegame/samegame3/Block.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame3/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame3/Dialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame3/samegame.js

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame3/samegame.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame3/samegame3.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/samegame/samegame3 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Advanced Tutorial 2 - Populating the Game Canvas QML Advanced
Tutorial 4 - Finishing Touches

.. raw:: html

   </p>

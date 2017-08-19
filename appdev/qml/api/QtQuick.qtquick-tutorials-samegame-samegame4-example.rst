QtQuick.qtquick-tutorials-samegame-samegame4-example
====================================================

.. raw:: html

   <h3>

Adding some flair

.. raw:: html

   </h3>

.. raw:: html

   <p>

Now we're going to do two things to liven up the game: animate the
blocks and add a High Score system.

.. raw:: html

   </p>

.. raw:: html

   <p>

We've also cleaned up the directory structure for our application files.
We now have a lot of files, so all the JavaScript and QML files outside
of samegame.qml have been moved into a new sub-directory named
"content".

.. raw:: html

   </p>

.. raw:: html

   <p>

In anticipation of the new block animations, Block.qml file is now
renamed to BoomBlock.qml.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Animating block movement

.. raw:: html

   </h4>

.. raw:: html

   <p>

First we will animate the blocks so that they move in a fluid manner.
QML has a number of methods for adding fluid movement, and in this case
we're going to use the Behavior type to add a SpringAnimation. In
BoomBlock.qml, we apply a SpringAnimation behavior to the x and y
properties so that the block will follow and animate its movement in a
spring-like fashion towards the specified position (whose values will be
set by samegame.js).Here is the code added to BoomBlock.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">property <span class="type">bool</span> <span class="name">spawned</span>: <span class="number">false</span>
   Behavior on <span class="name">x</span> {
   <span class="name">enabled</span>: <span class="name">spawned</span>;
   <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span>{ <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.2</span> }
   }
   Behavior on <span class="name">y</span> {
   <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span>{ <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.2</span> }
   }</pre>

.. raw:: html

   <p>

The spring and damping values can be changed to modify the spring-like
effect of the animation.

.. raw:: html

   </p>

.. raw:: html

   <p>

The enabled: spawned setting refers to the spawned value that is set
from createBlock() in samegame.js. This ensures the SpringAnimation on
the x is only enabled after createBlock() has set the block to the
correct position. Otherwise, the blocks will slide out of the corner
(0,0) when a game begins, instead of falling from the top in rows. (Try
commenting out enabled: spawned and see for yourself.)

.. raw:: html

   </p>

.. raw:: html

   <h4>

Animating block opacity changes

.. raw:: html

   </h4>

.. raw:: html

   <p>

Next, we will add a smooth exit animation. For this, we'll use a
Behavior type, which allows us to specify a default animation when a
property change occurs. In this case, when the opacity of a Block
changes, we will animate the opacity value so that it gradually fades in
and out, instead of abruptly changing between fully visible and
invisible. To do this, we'll apply a Behavior on the opacity property of
the Image type in BoomBlock.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
   <span class="name">id</span>: <span class="name">img</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">source</span>: {
   <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">0</span>)
   <span class="keyword">return</span> <span class="string">&quot;../../shared/pics/redStone.png&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">1</span>)
   <span class="keyword">return</span> <span class="string">&quot;../../shared/pics/blueStone.png&quot;</span>;
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="string">&quot;../../shared/pics/greenStone.png&quot;</span>;
   }
   <span class="name">opacity</span>: <span class="number">0</span>
   Behavior on <span class="name">opacity</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>:<span class="string">&quot;opacity&quot;</span>; <span class="name">duration</span>: <span class="number">200</span> }
   }
   }</pre>

.. raw:: html

   <p>

Note the opacity: 0 which means the block is transparent when it is
first created. We could set the opacity in samegame.js when we create
and destroy the blocks, but instead we'll use states, since this is
useful for the next animation we're going to add. Initially, we add
these States to the root type of BoomBlock.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">property bool dying: <span class="keyword">false</span>
   states: <span class="operator">[</span>
   State{ name: <span class="string">&quot;AliveState&quot;</span>; when: spawned <span class="operator">=</span><span class="operator">=</span> <span class="keyword">true</span> <span class="operator">&amp;</span><span class="operator">&amp;</span> dying <span class="operator">=</span><span class="operator">=</span> <span class="keyword">false</span>
   PropertyChanges { target: img; opacity: <span class="number">1</span> }
   }<span class="operator">,</span>
   State{ name: <span class="string">&quot;DeathState&quot;</span>; when: dying <span class="operator">=</span><span class="operator">=</span> <span class="keyword">true</span>
   PropertyChanges { target: img; opacity: <span class="number">0</span> }
   }
   <span class="operator">]</span></pre>

.. raw:: html

   <p>

Now blocks will automatically fade in, as we already set spawned to true
when we implemented the block animations. To fade out, we set dying to
true instead of setting opacity to 0 when a block is destroyed (in the
floodFill() function).

.. raw:: html

   </p>

.. raw:: html

   <h4>

Adding particle effects

.. raw:: html

   </h4>

.. raw:: html

   <p>

Finally, we'll add a cool-looking particle effect to the blocks when
they are destroyed. To do this, we first add a ParticleSystem in
BoomBlock.qml, like so:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span> {
   <span class="name">id</span>: <span class="name">sys</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
   <span class="comment">// ![0]</span>
   <span class="name">source</span>: {
   <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">0</span>)
   <span class="keyword">return</span> <span class="string">&quot;../../shared/pics/redStar.png&quot;</span>;
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">1</span>)
   <span class="keyword">return</span> <span class="string">&quot;../../shared/pics/blueStar.png&quot;</span>;
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="string">&quot;../../shared/pics/greenStar.png&quot;</span>;
   }
   <span class="name">rotationVelocityVariation</span>: <span class="number">360</span>
   <span class="comment">// ![0]</span>
   }
   <span class="type"><a href="QtQuick.Particles.Emitter.md">Emitter</a></span> {
   <span class="name">id</span>: <span class="name">particles</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">emitRate</span>: <span class="number">0</span>
   <span class="name">lifeSpan</span>: <span class="number">700</span>
   <span class="name">velocity</span>: <span class="name">AngleDirection</span> {<span class="name">angleVariation</span>: <span class="number">360</span>; <span class="name">magnitude</span>: <span class="number">80</span>; <span class="name">magnitudeVariation</span>: <span class="number">40</span>}
   <span class="name">size</span>: <span class="number">16</span>
   }
   }</pre>

.. raw:: html

   <p>

To fully understand this you should read Using the Qt Quick Particle
System, but it's important to note that emitRate is set to zero so that
particles are not emitted normally. Also, we extend the dying State,
which creates a burst of particles by calling the burst() method on the
particles type. The code for the states now look like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;AliveState&quot;</span>
   <span class="name">when</span>: <span class="name">spawned</span> <span class="operator">==</span> <span class="number">true</span> <span class="operator">&amp;&amp;</span> <span class="name">dying</span> <span class="operator">==</span> <span class="number">false</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">opacity</span>: <span class="number">1</span> }
   },
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;DeathState&quot;</span>
   <span class="name">when</span>: <span class="name">dying</span> <span class="operator">==</span> <span class="number">true</span>
   <span class="type"><a href="QtQuick.StateChangeScript.md">StateChangeScript</a></span> { <span class="name">script</span>: <span class="name">particles</span>.<span class="name">burst</span>(<span class="number">50</span>); }
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">img</span>; <span class="name">opacity</span>: <span class="number">0</span> }
   <span class="type"><a href="QtQuick.StateChangeScript.md">StateChangeScript</a></span> { <span class="name">script</span>: <span class="name">block</span>.<span class="name">destroy</span>(<span class="number">1000</span>); }
   }
   ]</pre>

.. raw:: html

   <p>

Now the game is beautifully animated, with subtle (or not-so-subtle)
animations added for all of the player's actions. The end result is
shown below, with a different set of images to demonstrate basic
theming:

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The theme change here is produced simply by replacing the block images.
This can be done at runtime by changing the Image source property, so
for a further challenge, you could add a button that toggles between
themes with different images.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Keeping a High Scores table

.. raw:: html

   </h3>

.. raw:: html

   <p>

Another feature we might want to add to the game is a method of storing
and retrieving high scores.

.. raw:: html

   </p>

.. raw:: html

   <p>

To do this, we will show a dialog when the game is over to request the
player's name and add it to a High Scores table. This requires a few
changes to Dialog.qml. In addition to a Text type, it now has a
TextInput child item for receiving keyboard text input:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   ...
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">id</span>: <span class="name">textInput</span>
   <span class="type">anchors</span> { <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span>; <span class="name">left</span>: <span class="name">dialogText</span>.<span class="name">right</span> }
   <span class="name">width</span>: <span class="number">80</span>
   <span class="name">text</span>: <span class="string">&quot;&quot;</span>
   <span class="name">onAccepted</span>: <span class="name">container</span>.<span class="name">hide</span>()    <span class="comment">// close dialog when Enter is pressed</span>
   }
   ...
   }</pre>

.. raw:: html

   <p>

We'll also add a showWithInput() function. The text input will only be
visible if this function is called instead of show(). When the dialog is
closed, it emits a closed() signal, and other types can retrieve the
text entered by the user through an inputText property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">container</span>
   property <span class="type">string</span> <span class="name">inputText</span>: <span class="name">textInput</span>.<span class="name">text</span>
   signal <span class="type">closed</span>
   <span class="keyword">function</span> <span class="name">show</span>(<span class="name">text</span>) {
   <span class="name">dialogText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">text</span>;
   <span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
   <span class="name">textInput</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
   }
   <span class="keyword">function</span> <span class="name">showWithInput</span>(<span class="name">text</span>) {
   <span class="name">show</span>(<span class="name">text</span>);
   <span class="name">textInput</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
   <span class="name">textInput</span>.<span class="name">focus</span> <span class="operator">=</span> <span class="number">true</span>;
   <span class="name">textInput</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;&quot;</span>
   }
   <span class="keyword">function</span> <span class="name">hide</span>() {
   <span class="name">textInput</span>.<span class="name">focus</span> <span class="operator">=</span> <span class="number">false</span>;
   <span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
   <span class="name">container</span>.<span class="name">closed</span>();
   }
   ...
   }</pre>

.. raw:: html

   <p>

Now the dialog can be used in samegame.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Dialog</span> {
   <span class="name">id</span>: <span class="name">nameInputDialog</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">z</span>: <span class="number">100</span>
   <span class="name">onClosed</span>: {
   <span class="keyword">if</span> (<span class="name">nameInputDialog</span>.<span class="name">inputText</span> <span class="operator">!=</span> <span class="string">&quot;&quot;</span>)
   <span class="name">SameGame</span>.<span class="name">saveHighScore</span>(<span class="name">nameInputDialog</span>.<span class="name">inputText</span>);
   }
   }</pre>

.. raw:: html

   <p>

When the dialog emits the closed signal, we call the new saveHighScore()
function in samegame.js, which stores the high score locally in an SQL
database and also send the score to an online database if possible.

.. raw:: html

   </p>

.. raw:: html

   <p>

The nameInputDialog is activated in the victoryCheck() function in
samegame.js:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">function victoryCheck() {
   ...
   //Check whether game has finished
   if (deservesBonus || !(floodMoveCheck(0, maxRow - 1, -1))) {
   gameDuration = new Date() - gameDuration;
   nameInputDialog.showWithInput(&quot;You won! Please enter your name: &quot;);
   }
   }</pre>

.. raw:: html

   <h4>

Storing high scores offline

.. raw:: html

   </h4>

.. raw:: html

   <p>

Now we need to implement the functionality to actually save the High
Scores table.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is the saveHighScore() function in samegame.js:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">function saveHighScore(name) {
   if (scoresURL != &quot;&quot;)
   sendHighScore(name);
   var db = Sql.LocalStorage.openDatabaseSync(&quot;SameGameScores&quot;, &quot;1.0&quot;, &quot;Local SameGame High Scores&quot;, 100);
   var dataStr = &quot;INSERT INTO Scores VALUES(?, ?, ?, ?)&quot;;
   var data = [name, gameCanvas.score, maxColumn + &quot;x&quot; + maxRow, Math.floor(gameDuration / 1000)];
   db.transaction(function(tx) {
   tx.executeSql('CREATE TABLE IF NOT EXISTS Scores(name TEXT, score NUMBER, gridSize TEXT, time NUMBER)');
   tx.executeSql(dataStr, data);
   var rs = tx.executeSql('SELECT * FROM Scores WHERE gridSize = &quot;12x17&quot; ORDER BY score desc LIMIT 10');
   var r = &quot;\nHIGH SCORES for a standard sized grid\n\n&quot;
   for (var i = 0; i &lt; rs.rows.length; i++) {
   r += (i + 1) + &quot;. &quot; + rs.rows.item(i).name + ' got ' + rs.rows.item(i).score + ' points in ' + rs.rows.item(i).time + ' seconds.\n';
   }
   dialog.show(r);
   });
   }</pre>

.. raw:: html

   <p>

First we call sendHighScore() (explained in the section below) if it is
possible to send the high scores to an online database.

.. raw:: html

   </p>

.. raw:: html

   <p>

Then, we use the Local Storage API to maintain a persistent SQL database
unique to this application. We create an offline storage database for
the high scores using openDatabaseSync() and prepare the data and SQL
query that we want to use to save it. The offline storage API uses SQL
queries for data manipulation and retrieval, and in the db.transaction()
call we use three SQL queries to initialize the database (if necessary),
and then add to and retrieve high scores. To use the returned data, we
turn it into a string with one line per row returned, and show a dialog
containing that string.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is one way of storing and displaying high scores locally, but
certainly not the only way. A more complex alternative would be to
create a high score dialog component, and pass it the results for
processing and display (instead of reusing the Dialog). This would allow
a more themeable dialog that could better present the high scores. If
your QML is the UI for a C++ application, you could also have passed the
score to a C++ function to store it locally in a variety of ways,
including a simple format without SQL or in another SQL database.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Storing high scores online

.. raw:: html

   </h4>

.. raw:: html

   <p>

You've seen how you can store high scores locally, but it is also easy
to integrate a web-enabled high score storage into your QML application.
The implementation we've done her is very simple: the high score data is
posted to a php script running on a server somewhere, and that server
then stores it and displays it to visitors. You could also request an
XML or QML file from that same server, which contains and displays the
scores, but that's beyond the scope of this tutorial. The php script we
use here is available in the examples directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the player entered their name we can send the data to the web service
us

.. raw:: html

   </p>

.. raw:: html

   <p>

If the player enters a name, we send the data to the service using this
code in samegame.js:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">function sendHighScore(name) {
   var postman = new XMLHttpRequest()
   var postData = &quot;name=&quot; + name + &quot;&amp;score=&quot; + gameCanvas.score + &quot;&amp;gridSize=&quot; + maxColumn + &quot;x&quot; + maxRow + &quot;&amp;time=&quot; + Math.floor(gameDuration / 1000);
   postman.open(&quot;POST&quot;, scoresURL, true);
   postman.setRequestHeader(&quot;Content-Type&quot;, &quot;application/x-www-form-urlencoded&quot;);
   postman.onreadystatechange = function() {
   if (postman.readyState == postman.DONE) {
   dialog.show(&quot;Your score has been uploaded.&quot;);
   }
   }
   postman.send(postData);
   }</pre>

.. raw:: html

   <p>

The XMLHttpRequest in this code is the same as the XMLHttpRequest() as
you'll find in standard browser JavaScript, and can be used in the same
way to dynamically get XML or QML from the web service to display the
high scores. We don't worry about the response in this case - we just
post the high score data to the web server. If it had returned a QML
file (or a URL to a QML file) you could instantiate it in much the same
way as you did with the blocks.

.. raw:: html

   </p>

.. raw:: html

   <p>

An alternate way to access and submit web-based data would be to use QML
types designed for this purpose. XmlListModel makes it very easy to
fetch and display XML based data such as RSS in a QML application (see
the Flickr demo for an example).

.. raw:: html

   </p>

.. raw:: html

   <h3>

That's it!

.. raw:: html

   </h3>

.. raw:: html

   <p>

By following this tutorial you've seen how you can write a fully
functional application in QML:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Build your application with QML types

.. raw:: html

   </li>

.. raw:: html

   <li>

Add application logic with JavaScript code

.. raw:: html

   </li>

.. raw:: html

   <li>

Add animations with Behaviors and states

.. raw:: html

   </li>

.. raw:: html

   <li>

Store persistent application data using, for example,
QtQuick.LocalStorage or XMLHttpRequest

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

There is so much more to learn about QML that we haven't been able to
cover in this tutorial. Check out all the examples and the documentation
to see all the things you can do with QML!

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

tutorials/samegame/samegame4/samegame.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame4/content/BoomBlock.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame4/content/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame4/content/Dialog.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame4/content/samegame.js

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame4/highscores/score\_data.xml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/samegame/samegame4/samegame4.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/samegame/samegame4 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Advanced Tutorial 3 - Implementing the Game Logic

.. raw:: html

   </p>

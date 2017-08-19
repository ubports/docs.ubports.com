QtQuick.qtquick-threading-example
=================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Threading is a collection of QML multithreading examples.

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

   <h2 id="threaded-listmodel">

Threaded ListModel

.. raw:: html

   </h2>

.. raw:: html

   <p>

Threaded ListModel contains a ListView and a ListModel. The ListModel
object is updated asynchronously in another thread, and the results
propagate back to the main thread. A timer requests updates from the
worker thread periodically:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">Timer</span> {
   <span class="name">id</span>: <span class="name">timer</span>
   <span class="name">interval</span>: <span class="number">2000</span>; <span class="name">repeat</span>: <span class="number">true</span>
   <span class="name">running</span>: <span class="number">true</span>
   <span class="name">triggeredOnStart</span>: <span class="number">true</span>
   <span class="name">onTriggered</span>: {
   var <span class="name">msg</span> = {'action': <span class="string">'appendCurrentTime'</span>, 'model': <span class="name">listModel</span>};
   <span class="name">worker</span>.<span class="name">sendMessage</span>(<span class="name">msg</span>);
   }
   }</pre>

.. raw:: html

   <p>

Inside the worker thread, the ListModel is synchronized once the data is
finished loading:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">msg</span>) {
   <span class="keyword">if</span> (<span class="name">msg</span>.<span class="name">action</span> <span class="operator">==</span> <span class="string">'appendCurrentTime'</span>) {
   var <span class="name">data</span> = {'time': new <span class="name">Date</span>().<span class="name">toTimeString</span>()};
   <span class="name">msg</span>.<span class="name">model</span>.<span class="name">append</span>(<span class="name">data</span>);
   <span class="name">msg</span>.<span class="name">model</span>.<span class="name">sync</span>();   <span class="comment">// updates the changes to the list</span>
   }
   }</pre>

.. raw:: html

   <h2 id="workerscript">

WorkerScript

.. raw:: html

   </h2>

.. raw:: html

   <p>

WorkerScript contains an example of using a WorkerScript to offload
expensive calculations into another thread. This keeps the UI from being
blocked. This example calculates numbers in Pascal's Triangle, and not
in a very optimal way, so it will often take several seconds to complete
the calculation. By doing this in a WorkerScript in another thread, the
UI is not blocked during this time.

.. raw:: html

   </p>

.. raw:: html

   <p>

When the UI needs another value, a request is sent to the WorkerScript:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type">Spinner</span> {
   <span class="name">id</span>: <span class="name">rowSpinner</span>
   <span class="name">label</span>: <span class="string">&quot;Row&quot;</span>
   <span class="name">onValueChanged</span>: {
   <span class="name">resultText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Loading...&quot;</span>;
   <span class="name">myWorker</span>.<span class="name">sendMessage</span>( { row: <span class="name">rowSpinner</span>.<span class="name">value</span>, column: <span class="name">columnSpinner</span>.<span class="name">value</span> } );
   }
   }</pre>

.. raw:: html

   <p>

The workerscript then is free to take a really long time to calculate
it:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">message</span>) {
   <span class="comment">//Calculate result (may take a while, using a naive algorithm)</span>
   var <span class="name">calculatedResult</span> = <span class="name">triangle</span>(<span class="name">message</span>.<span class="name">row</span>, <span class="name">message</span>.<span class="name">column</span>);
   <span class="comment">//Send result back to main thread</span>
   <span class="name">WorkerScript</span>.<span class="name">sendMessage</span>( { row: <span class="name">message</span>.<span class="name">row</span>,
   column: <span class="name">message</span>.<span class="name">column</span>,
   result: <span class="name">calculatedResult</span>} );
   }</pre>

.. raw:: html

   <p>

When it's done, the result returns to the main scene via the
WorkerScript type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">WorkerScript</span> {
   <span class="name">id</span>: <span class="name">myWorker</span>
   <span class="name">source</span>: <span class="string">&quot;workerscript.js&quot;</span>
   <span class="name">onMessage</span>: {
   <span class="keyword">if</span> (<span class="name">messageObject</span>.<span class="name">row</span> <span class="operator">==</span> <span class="name">rowSpinner</span>.<span class="name">value</span> <span class="operator">&amp;&amp;</span> <span class="name">messageObject</span>.<span class="name">column</span> <span class="operator">==</span> <span class="name">columnSpinner</span>.<span class="name">value</span>){ <span class="comment">//Not an old result</span>
   <span class="keyword">if</span> (<span class="name">messageObject</span>.<span class="name">result</span> <span class="operator">==</span> -<span class="number">1</span>)
   <span class="name">resultText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Column must be &lt;= Row&quot;</span>;
   <span class="keyword">else</span>
   <span class="name">resultText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">messageObject</span>.<span class="name">result</span>;
   }
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

threading/threading.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/threadedlistmodel/dataloader.js

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/threadedlistmodel/timedisplay.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/workerscript/Spinner.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/workerscript/workerscript.js

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/workerscript/workerscript.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/threading.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/threading.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/threading.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/threadedlistmodel/threadedlistmodel.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

threading/workerscript/workerscript.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@threading -->

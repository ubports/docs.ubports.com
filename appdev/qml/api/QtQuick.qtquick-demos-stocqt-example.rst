QtQuick.qtquick-demos-stocqt-example
====================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The StocQt application presents a trend chart for the first stock in the
list of NASDAQ-100 stocks maintained by it. It allows the user to choose
another stock from the list, and fetches the required data for the
selected stock by sending an XMLHttpRequest to http://finance.yahoo.com.

.. raw:: html

   </p>

.. raw:: html

   <p>

The application uses several custom types such as Button, CheckBox,
StockChart, StockInfo, StockView, and so on. These types are used to
present the stock data in a readable form and also let the user
customize the trend chart. For example, the user can choose to view the
yearly, monthly, or daily trends in the stock price.

.. raw:: html

   </p>

.. raw:: html

   <p>

The application uses the ObjectModel type to access the two visual data
models that it depends on.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   ...
   <span class="name">model</span>: <span class="name">ObjectModel</span> {
   <span class="type">StockListView</span> {
   <span class="name">id</span>: <span class="name">listView</span>
   <span class="name">width</span>: <span class="name">root</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">root</span>.<span class="name">height</span>
   }
   <span class="type">StockView</span> {
   <span class="name">id</span>: <span class="name">stockView</span>
   <span class="name">width</span>: <span class="name">root</span>.<span class="name">width</span>
   <span class="name">height</span>: <span class="name">root</span>.<span class="name">height</span>
   <span class="name">stocklist</span>: <span class="name">listView</span>
   <span class="name">stock</span>: <span class="name">stock</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The StockListView model is a static data model listing the NASDAQ-100
stocks with basic information such as stockId, name, value, change, and
so on. This data model is used by the application if the user wants to
choose another stock from the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

StockView is a complex data model that presents a trend chart for the
selected stock. It uses another custom type, StockChart, which presents
the graphical trend of the stock price using a Canvas. This data model
is used for most of the time during the lifetime of the application.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">chart</span>
   <span class="name">width</span>: <span class="number">320</span>
   <span class="name">height</span>: <span class="number">200</span>
   ...
   <span class="type"><a href="QtQuick.Canvas.md">Canvas</a></span> {
   <span class="name">id</span>: <span class="name">canvas</span>
   ...
   <span class="name">onPaint</span>: {
   <span class="keyword">if</span> (!<span class="name">stockModel</span>.<span class="name">ready</span>) {
   <span class="keyword">return</span>;
   }
   <span class="name">numPoints</span> <span class="operator">=</span> <span class="name">stockModel</span>.<span class="name">indexOf</span>(<span class="name">chart</span>.<span class="name">startDate</span>);
   <span class="keyword">if</span> (<span class="name">chart</span>.<span class="name">gridSize</span> <span class="operator">==</span> <span class="number">0</span>)
   <span class="name">chart</span>.<span class="name">gridSize</span> <span class="operator">=</span> <span class="name">numPoints</span>
   var <span class="name">ctx</span> = <span class="name">canvas</span>.<span class="name">getContext</span>(<span class="string">&quot;2d&quot;</span>);
   <span class="name">ctx</span>.<span class="name">globalCompositeOperation</span> <span class="operator">=</span> <span class="string">&quot;source-over&quot;</span>;
   <span class="name">ctx</span>.<span class="name">lineWidth</span> <span class="operator">=</span> <span class="number">1</span>;
   <span class="name">drawBackground</span>(<span class="name">ctx</span>);
   var <span class="name">highestPrice</span> = <span class="number">0</span>;
   var <span class="name">highestVolume</span> = <span class="number">0</span>;
   var <span class="name">lowestPrice</span> = -<span class="number">1</span>;
   var <span class="name">points</span> = [];
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="name">numPoints</span>, <span class="name">j</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&gt;=</span> <span class="number">0</span> ; <span class="name">i</span> <span class="operator">-=</span> <span class="name">pixelSkip</span>, <span class="name">j</span> <span class="operator">+=</span> <span class="name">pixelSkip</span>) {
   var <span class="name">price</span> = <span class="name">stockModel</span>.<span class="name">get</span>(<span class="name">i</span>);
   <span class="keyword">if</span> (<span class="name">parseFloat</span>(<span class="name">highestPrice</span>) <span class="operator">&lt;</span> <span class="name">parseFloat</span>(<span class="name">price</span>.<span class="name">high</span>))
   <span class="name">highestPrice</span> <span class="operator">=</span> <span class="name">price</span>.<span class="name">high</span>;
   <span class="keyword">if</span> (<span class="name">parseInt</span>(<span class="name">highestVolume</span>, <span class="number">10</span>) <span class="operator">&lt;</span> <span class="name">parseInt</span>(<span class="name">price</span>.<span class="name">volume</span>, <span class="number">10</span>))
   <span class="name">highestVolume</span> <span class="operator">=</span> <span class="name">price</span>.<span class="name">volume</span>;
   <span class="keyword">if</span> (<span class="name">lowestPrice</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">parseFloat</span>(<span class="name">lowestPrice</span>) <span class="operator">&gt;</span> <span class="name">parseFloat</span>(<span class="name">price</span>.<span class="name">low</span>))
   <span class="name">lowestPrice</span> <span class="operator">=</span> <span class="name">price</span>.<span class="name">low</span>;
   <span class="name">points</span>.<span class="name">push</span>({
   x: <span class="name">j</span> <span class="operator">*</span> <span class="name">xGridStep</span>,
   open: <span class="name">price</span>.<span class="name">open</span>,
   close: <span class="name">price</span>.<span class="name">close</span>,
   high: <span class="name">price</span>.<span class="name">high</span>,
   low: <span class="name">price</span>.<span class="name">low</span>,
   volume: <span class="name">price</span>.<span class="name">volume</span>
   });
   }
   <span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawHighPrice</span>)
   <span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">highColor</span>, <span class="string">&quot;high&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
   <span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawLowPrice</span>)
   <span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">lowColor</span>, <span class="string">&quot;low&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
   <span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawOpenPrice</span>)
   <span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>,<span class="name">settings</span>.<span class="name">openColor</span>, <span class="string">&quot;open&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
   <span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawClosePrice</span>)
   <span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">closeColor</span>, <span class="string">&quot;close&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
   <span class="name">drawVolume</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">volumeColor</span>, <span class="string">&quot;volume&quot;</span>, <span class="name">points</span>, <span class="name">highestVolume</span>);
   <span class="name">drawScales</span>(<span class="name">ctx</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>, <span class="name">highestVolume</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

To understand the application better, browse through its code using Qt
Creator.

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

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

demos/stocqt/stocqt.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/CheckBox.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockChart.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockInfo.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockListModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockListView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockSettingsPanel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/content/StockView.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/stocqt.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/stocqt.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/stocqt/stocqt.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QML Applications.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@demos/stocqt -->

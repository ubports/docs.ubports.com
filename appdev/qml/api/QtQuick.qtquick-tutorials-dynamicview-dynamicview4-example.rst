QtQuick.qtquick-tutorials-dynamicview-dynamicview4-example
==========================================================

.. raw:: html

   <p>

Drag and drop isn't the only way items in a view can be re-ordered,
using a DelegateModel it is also possible to sort items based on model
data. To do that we extend our DelegateModel instance like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type">DelegateModel</span> {
   <span class="name">id</span>: <span class="name">visualModel</span>
   property <span class="type">var</span> <span class="name">lessThan</span>: [
   <span class="keyword">function</span>(<span class="name">left</span>, right) { <span class="keyword">return</span> <span class="name">left</span>.<span class="name">name</span> <span class="operator">&lt;</span> <span class="name">right</span>.<span class="name">name</span> },
   <span class="keyword">function</span>(<span class="name">left</span>, right) { <span class="keyword">return</span> <span class="name">left</span>.<span class="name">type</span> <span class="operator">&lt;</span> <span class="name">right</span>.<span class="name">type</span> },
   <span class="keyword">function</span>(<span class="name">left</span>, right) { <span class="keyword">return</span> <span class="name">left</span>.<span class="name">age</span> <span class="operator">&lt;</span> <span class="name">right</span>.<span class="name">age</span> },
   <span class="keyword">function</span>(<span class="name">left</span>, right) {
   <span class="keyword">if</span> (<span class="name">left</span>.<span class="name">size</span> <span class="operator">==</span> <span class="string">&quot;Small&quot;</span>)
   <span class="keyword">return</span> <span class="number">true</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">right</span>.<span class="name">size</span> <span class="operator">==</span> <span class="string">&quot;Small&quot;</span>)
   <span class="keyword">return</span> <span class="number">false</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">left</span>.<span class="name">size</span> <span class="operator">==</span> <span class="string">&quot;Medium&quot;</span>)
   <span class="keyword">return</span> <span class="number">true</span>
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="number">false</span>
   }
   ]
   property <span class="type">int</span> <span class="name">sortOrder</span>: <span class="name">orderSelector</span>.<span class="name">selectedIndex</span>
   <span class="name">onSortOrderChanged</span>: <span class="name">items</span>.<span class="name">setGroups</span>(<span class="number">0</span>, <span class="name">items</span>.<span class="name">count</span>, <span class="string">&quot;unsorted&quot;</span>)
   <span class="keyword">function</span> <span class="name">insertPosition</span>(<span class="name">lessThan</span>, item) {
   var <span class="name">lower</span> = <span class="number">0</span>
   var <span class="name">upper</span> = <span class="name">items</span>.<span class="name">count</span>
   <span class="keyword">while</span> (<span class="name">lower</span> <span class="operator">&lt;</span> <span class="name">upper</span>) {
   var <span class="name">middle</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">lower</span> <span class="operator">+</span> (<span class="name">upper</span> <span class="operator">-</span> <span class="name">lower</span>) <span class="operator">/</span> <span class="number">2</span>)
   var <span class="name">result</span> = <span class="name">lessThan</span>(<span class="name">item</span>.<span class="name">model</span>, <span class="name">items</span>.<span class="name">get</span>(<span class="name">middle</span>).<span class="name">model</span>);
   <span class="keyword">if</span> (<span class="name">result</span>) {
   <span class="name">upper</span> <span class="operator">=</span> <span class="name">middle</span>
   } <span class="keyword">else</span> {
   <span class="name">lower</span> <span class="operator">=</span> <span class="name">middle</span> <span class="operator">+</span> <span class="number">1</span>
   }
   }
   <span class="keyword">return</span> <span class="name">lower</span>
   }
   <span class="keyword">function</span> <span class="name">sort</span>(<span class="name">lessThan</span>) {
   <span class="keyword">while</span> (<span class="name">unsortedItems</span>.<span class="name">count</span> <span class="operator">&gt;</span> <span class="number">0</span>) {
   var <span class="name">item</span> = <span class="name">unsortedItems</span>.<span class="name">get</span>(<span class="number">0</span>)
   var <span class="name">index</span> = <span class="name">insertPosition</span>(<span class="name">lessThan</span>, <span class="name">item</span>)
   <span class="name">item</span>.<span class="name">groups</span> <span class="operator">=</span> <span class="string">&quot;items&quot;</span>
   <span class="name">items</span>.<span class="name">move</span>(<span class="name">item</span>.<span class="name">itemsIndex</span>, <span class="name">index</span>)
   }
   }
   <span class="name">items</span>.includeByDefault: <span class="number">false</span>
   <span class="name">groups</span>: <span class="name">VisualDataGroup</span> {
   <span class="name">id</span>: <span class="name">unsortedItems</span>
   <span class="name">name</span>: <span class="string">&quot;unsorted&quot;</span>
   <span class="name">includeByDefault</span>: <span class="number">true</span>
   <span class="name">onChanged</span>: {
   <span class="keyword">if</span> (<span class="name">visualModel</span>.<span class="name">sortOrder</span> <span class="operator">==</span> <span class="name">visualModel</span>.<span class="name">lessThan</span>.<span class="name">length</span>)
   <span class="name">setGroups</span>(<span class="number">0</span>, <span class="name">count</span>, <span class="string">&quot;items&quot;</span>)
   <span class="keyword">else</span>
   <span class="name">visualModel</span>.<span class="name">sort</span>(<span class="name">visualModel</span>.<span class="name">lessThan</span>[<span class="name">visualModel</span>.<span class="name">sortOrder</span>])
   }
   }
   <span class="name">model</span>: <span class="name">PetsModel</span> {}
   <span class="name">delegate</span>: <span class="name">dragDelegate</span>
   }</pre>

.. raw:: html

   <h3>

Walkthrough

.. raw:: html

   </h3>

.. raw:: html

   <p>

Items in a DelegateModel are filtered into groups represented by the
DelegateModelGroup type, normally all items in the model belong to a
default items group but this default can be changed with the
includeByDefault property. To implement our sorting we want items to
first be added to an unsorted group from where we can transfer them to a
sorted position in the items group. To do that we clear includeByDefault
on the items group and set it on a new group name 'unsorted'.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">items</span>.includeByDefault: <span class="number">false</span>
   <span class="name">groups</span>: <span class="name">VisualDataGroup</span> {
   <span class="name">id</span>: <span class="name">unsortedItems</span>
   <span class="name">name</span>: <span class="string">&quot;unsorted&quot;</span>
   <span class="name">includeByDefault</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

We sort the items by first finding the position in the items group to
insert the first unsorted item and then transfer the item to the items
group before moving it to the pre-determined index and repeat until the
unsorted group is empty.

.. raw:: html

   </p>

.. raw:: html

   <p>

To find the insert position for an item we request a handle for the item
from the unsorted group with the get function. Through the model
property on this handle we can access the same model data that is
available in a delegate instance of that item and compare against other
items to determine relative position.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="keyword">function</span> <span class="name">insertPosition</span>(<span class="name">lessThan</span>, item) {
   var <span class="name">lower</span> = <span class="number">0</span>
   var <span class="name">upper</span> = <span class="name">items</span>.<span class="name">count</span>
   <span class="keyword">while</span> (<span class="name">lower</span> <span class="operator">&lt;</span> <span class="name">upper</span>) {
   var <span class="name">middle</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">lower</span> <span class="operator">+</span> (<span class="name">upper</span> <span class="operator">-</span> <span class="name">lower</span>) <span class="operator">/</span> <span class="number">2</span>)
   var <span class="name">result</span> = <span class="name">lessThan</span>(<span class="name">item</span>.<span class="name">model</span>, <span class="name">items</span>.<span class="name">get</span>(<span class="name">middle</span>).<span class="name">model</span>);
   <span class="keyword">if</span> (<span class="name">result</span>) {
   <span class="name">upper</span> <span class="operator">=</span> <span class="name">middle</span>
   } <span class="keyword">else</span> {
   <span class="name">lower</span> <span class="operator">=</span> <span class="name">middle</span> <span class="operator">+</span> <span class="number">1</span>
   }
   }
   <span class="keyword">return</span> <span class="name">lower</span>
   }
   <span class="keyword">function</span> <span class="name">sort</span>(<span class="name">lessThan</span>) {
   <span class="keyword">while</span> (<span class="name">unsortedItems</span>.<span class="name">count</span> <span class="operator">&gt;</span> <span class="number">0</span>) {
   var <span class="name">item</span> = <span class="name">unsortedItems</span>.<span class="name">get</span>(<span class="number">0</span>)
   var <span class="name">index</span> = <span class="name">insertPosition</span>(<span class="name">lessThan</span>, <span class="name">item</span>)
   <span class="name">item</span>.<span class="name">groups</span> <span class="operator">=</span> <span class="string">&quot;items&quot;</span>
   <span class="name">items</span>.<span class="name">move</span>(<span class="name">item</span>.<span class="name">itemsIndex</span>, <span class="name">index</span>)
   }
   }</pre>

.. raw:: html

   <p>

The lessThan argument to the sort function is a comparsion function
which will determine the order of the list. In this example it can be
one of the following:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        property <span class="type">var</span> <span class="name">lessThan</span>: [
   <span class="keyword">function</span>(<span class="name">left</span>, right) { <span class="keyword">return</span> <span class="name">left</span>.<span class="name">name</span> <span class="operator">&lt;</span> <span class="name">right</span>.<span class="name">name</span> },
   <span class="keyword">function</span>(<span class="name">left</span>, right) { <span class="keyword">return</span> <span class="name">left</span>.<span class="name">type</span> <span class="operator">&lt;</span> <span class="name">right</span>.<span class="name">type</span> },
   <span class="keyword">function</span>(<span class="name">left</span>, right) { <span class="keyword">return</span> <span class="name">left</span>.<span class="name">age</span> <span class="operator">&lt;</span> <span class="name">right</span>.<span class="name">age</span> },
   <span class="keyword">function</span>(<span class="name">left</span>, right) {
   <span class="keyword">if</span> (<span class="name">left</span>.<span class="name">size</span> <span class="operator">==</span> <span class="string">&quot;Small&quot;</span>)
   <span class="keyword">return</span> <span class="number">true</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">right</span>.<span class="name">size</span> <span class="operator">==</span> <span class="string">&quot;Small&quot;</span>)
   <span class="keyword">return</span> <span class="number">false</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">left</span>.<span class="name">size</span> <span class="operator">==</span> <span class="string">&quot;Medium&quot;</span>)
   <span class="keyword">return</span> <span class="number">true</span>
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="number">false</span>
   }
   ]</pre>

.. raw:: html

   <p>

A sort is triggered whenever new items are added to the unsorted
DelegateModel which we are notified of by the onChanged handler. If no
sort function is currently selected we simply transfer all items from
the unsorted group to the items group, otherwise we call sort with the
selected sort function.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">groups</span>: <span class="name">VisualDataGroup</span> {
   <span class="name">id</span>: <span class="name">unsortedItems</span>
   <span class="name">name</span>: <span class="string">&quot;unsorted&quot;</span>
   <span class="name">includeByDefault</span>: <span class="number">true</span>
   <span class="name">onChanged</span>: {
   <span class="keyword">if</span> (<span class="name">visualModel</span>.<span class="name">sortOrder</span> <span class="operator">==</span> <span class="name">visualModel</span>.<span class="name">lessThan</span>.<span class="name">length</span>)
   <span class="name">setGroups</span>(<span class="number">0</span>, <span class="name">count</span>, <span class="string">&quot;items&quot;</span>)
   <span class="keyword">else</span>
   <span class="name">visualModel</span>.<span class="name">sort</span>(<span class="name">visualModel</span>.<span class="name">lessThan</span>[<span class="name">visualModel</span>.<span class="name">sortOrder</span>])
   }
   }</pre>

.. raw:: html

   <p>

Finally when the selected sort order changes we can trigger a full
re-sort of the list by moving all items from the items group to the
unsorted group, which will trigger the onChanged handler and transfer
the items back to the items group in correct order. Note that the
onChanged handler will not be invoked recursively so there's no issue
with it being invoked during a sort.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        property <span class="type">int</span> <span class="name">sortOrder</span>: <span class="name">orderSelector</span>.<span class="name">selectedIndex</span>
   <span class="name">onSortOrderChanged</span>: <span class="name">items</span>.<span class="name">setGroups</span>(<span class="number">0</span>, <span class="name">items</span>.<span class="name">count</span>, <span class="string">&quot;unsorted&quot;</span>)</pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview4/ListSelector.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview4/PetsModel.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview4/dynamicview.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

tutorials/dynamicview/dynamicview4/dynamicview4.qmlproject

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@tutorials/dynamicview/dynamicview4 -->

.. raw:: html

   <p class="naviNextPrevious footerNavi">

QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items

.. raw:: html

   </p>

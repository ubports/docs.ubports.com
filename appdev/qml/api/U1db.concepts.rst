U1db.concepts
=============

.. raw:: html

   <p>

This concept guide will describe a wide variety of U1Db-Qt functionality
and usage. It will cover:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Overview of U1Db Documents and Databases

.. raw:: html

   </li>

.. raw:: html

   <li>

Creating Documents and Databases

.. raw:: html

   </li>

.. raw:: html

   <li>

Database keys and Document contents

.. raw:: html

   </li>

.. raw:: html

   <li>

Listing docId values in a Database

.. raw:: html

   </li>

.. raw:: html

   <li>

Retrieving Documents

.. raw:: html

   </li>

.. raw:: html

   <li>

Searching and retrieving Documents by docId

.. raw:: html

   </li>

.. raw:: html

   <li>

Modifying Existing Documents

.. raw:: html

   </li>

.. raw:: html

   <li>

Document Functions

.. raw:: html

   </li>

.. raw:: html

   <li>

Index expressions

.. raw:: html

   </li>

.. raw:: html

   <li>

Querying an index

.. raw:: html

   </li>

.. raw:: html

   <li>

Index functions

.. raw:: html

   </li>

.. raw:: html

   <li>

Blending the U1Db-Qt plugin with QML and Javascript

.. raw:: html

   </li>

.. raw:: html

   <li>

U1Db-Qt with QML Elements and Components

.. raw:: html

   </li>

.. raw:: html

   <li>

Using U1Db-Qt with elements and components that support models

.. raw:: html

   </li>

.. raw:: html

   <li>

Using U1Db-Qt with elements and components that do not utilize models

.. raw:: html

   </li>

.. raw:: html

   <li>

Using a Document without a Database

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <h2 id="brief-description-of-u1db">

Brief Description of U1DB

.. raw:: html

   </h2>

.. raw:: html

   <p>

U1DB is a database API for synchronised databases of JSON documents.
Itâs simple to use in applications, and allows apps to store documents
and synchronise them between machines and devices. U1DB is the database
designed to work everywhere, backed by the platformâs native data
storage capabilities. This means that you can use u1db on different
platforms, from different languages, and backed on to different
databases, and sync between all of them.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="what-is-the-difference-between-u1db-and-u1db-qt">

What is the difference between U1DB and U1Db-Qt

.. raw:: html

   </h2>

.. raw:: html

   <p>

U1Db-Qt is the QML implementation of U1DB. It is a QML plugin written in
C++ and allows for creating and manipulating U1DB databases via a more
declarative approach within a QML application.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Database is very simple to create. It only needs an id and a path
where the file will be created. A Database is a model, which can be used
by elements, such as the ListView further in this example.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">U1db</span>.Database {
   <span class="name">id</span>: <span class="name">aDatabase</span>
   <span class="name">path</span>: <span class="string">&quot;aU1DbDSatabase2&quot;</span>
   }</pre>

.. raw:: html

   <p>

A Document can be declared at runtime. It requires at the very least a
unique 'docId', but that alone won't do anything special. The snipet
below snippet demonstrates the basic requirements.

.. raw:: html

   </p>

.. raw:: html

   <p>

In addition to this, this example displays text from the database for a
specific docId and id key in a text area called 'documentContent. To
update the text area at startup with either the default value or a value
from the database the onCompleted function is utilized, which is also
demonstrated below.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">U1db</span>.Document {
   <span class="name">id</span>: <span class="name">aDocument</span>
   <span class="name">database</span>: <span class="name">aDatabase</span>
   <span class="name">docId</span>: <span class="string">'helloworld'</span>
   <span class="name">create</span>: <span class="number">true</span>
   <span class="name">defaults</span>: { &quot;helloworld&quot;:<span class="string">&quot;Hello World&quot;</span> }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">documentContent</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">aDocument</span>.<span class="name">contents</span>.<span class="name">helloworld</span>
   }
   }</pre>

.. raw:: html

   <p>

It should be possible to use a document without a database, as
demonstrated in this snippet. Additionally this document will use the
concept of sub-keys, as exemplified by the "bookmarks" id key +
contents. This example will attempt to use the bookmark document to
store docId values from the database, which will be displayed in a
ListView on the second tab of the application. The user will be able to
select a value from the ListView and the first tab will be modified
accordingly.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">U1db</span>.Document {
   <span class="name">id</span>: <span class="name">aBookmarkDocument</span>
   <span class="name">docId</span>: <span class="string">'bookmarks'</span>
   <span class="name">create</span>: <span class="number">true</span>
   <span class="name">defaults</span>: { &quot;bookmarks&quot;: [{}] }
   }</pre>

.. raw:: html

   <p>

The listDocs method retrieves all the docId values from the current
database. In this demonstration the values are put into an array, which
is then checked to locate the docId for the current and previous
documents within the database.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">        var documentIds <span class="operator">=</span> documentObject<span class="operator">.</span>database<span class="operator">.</span>listDocs()
   <span class="keyword">for</span>(var i <span class="operator">=</span> <span class="number">0</span>; i <span class="operator">&lt;</span> documentIds<span class="operator">.</span>length; i<span class="operator">+</span><span class="operator">+</span>){
   <span class="keyword">if</span>(documentIds<span class="operator">[</span>i<span class="operator">]</span><span class="operator">=</span><span class="operator">=</span><span class="operator">=</span>documentObject<span class="operator">.</span>docId <span class="operator">&amp;</span><span class="operator">&amp;</span> i <span class="operator">&gt;</span> <span class="number">0</span>){
   <span class="keyword">return</span> documentIds<span class="operator">[</span>i<span class="operator">-</span><span class="number">1</span><span class="operator">]</span>
   }
   <span class="keyword">else</span> <span class="keyword">if</span>(documentIds<span class="operator">[</span>i<span class="operator">]</span><span class="operator">=</span><span class="operator">=</span><span class="operator">=</span>documentObject<span class="operator">.</span>docId <span class="operator">&amp;</span><span class="operator">&amp;</span> i<span class="operator">=</span><span class="operator">=</span><span class="number">0</span>){
   <span class="keyword">return</span> documentIds<span class="operator">[</span>documentIds<span class="operator">.</span>length<span class="operator">-</span><span class="number">1</span><span class="operator">]</span>
   }
   }</pre>

.. raw:: html

   <p>

These steps demonstrate the creation of a temporary document, based on a
copy of the global document. This will then be used to determine if
there is already a document in the database with the same docId as the
address bar, and additionally with a key id with the same name.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">         var tempFieldName <span class="operator">=</span> addressBarText;
   var tempDocument <span class="operator">=</span> aDocument
   tempDocument<span class="operator">.</span>docId <span class="operator">=</span> addressBarText;
   var tempContents <span class="operator">=</span> tempDocument<span class="operator">.</span>contents</pre>

.. raw:: html

   <p>

Note: For simplicity sake this example sometimes uses the same value for
both the docId and the key id, as seen here. Real life implimentations
can and will differ, and this will be demonstrated elsewhere in the
example code.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here the contents of the temporary document are modified, which then
replaces the global document.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">             documentContent<span class="operator">.</span>text <span class="operator">=</span> <span class="char">'More Hello World...'</span>;
   var tempContents <span class="operator">=</span> {}
   tempContents<span class="operator">[</span>tempFieldName<span class="operator">]</span> <span class="operator">=</span> documentContent<span class="operator">.</span>text
   tempDocument<span class="operator">.</span>contents <span class="operator">=</span> tempContents
   aDocument <span class="operator">=</span> tempDocument</pre>

.. raw:: html

   <p>

In this instance the current document's content is updated from the text
view. The unique key and docId are not modified because the database
already contains a record with those properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">         var tempContents <span class="operator">=</span> {}
   tempFieldName <span class="operator">=</span> getCurrentDocumentKey(aDocument<span class="operator">.</span>contents)
   tempContents<span class="operator">[</span>tempFieldName<span class="operator">]</span> <span class="operator">=</span> documentContent<span class="operator">.</span>text
   aDocument<span class="operator">.</span>contents <span class="operator">=</span> tempContents</pre>

.. raw:: html

   <p>

Here a rectangle is defined that represents the lower portion of our
application. It will contain all the main parts of the application.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">             <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">45</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
   <span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
   <span class="name">color</span>: <span class="string">&quot;#00FFFFFF&quot;</span>
   <span class="comment">// The remainder of the main part of the application goes here ...</span>
   }</pre>

.. raw:: html

   <p>

The following TextArea is for displaying contents for the current state
of the global document, as defined by the key / name in the address bar.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                     <span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span>{
   <span class="name">id</span>: <span class="name">documentContent</span>
   <span class="name">selectByMouse</span> : <span class="number">false</span>
   <span class="name">x</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="name">y</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">43</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">58</span>)
   <span class="name">color</span>: <span class="string">&quot;#000000&quot;</span>
   }</pre>

.. raw:: html

   <p>

There is an object within in the 'aDocument' model defined earlier
called 'contents', which contains a key called 'hello', which represents
a search string. In this example the key will represent the name of a
document in the database, which will be displayed in the address bar.
Displaying the key is demonstrated here:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">                     <span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span>{
   <span class="name">text</span>: <span class="name">displayKey</span>(<span class="name">aDocument</span>.<span class="name">contents</span>)
   <span class="keyword">function</span> <span class="name">displayKey</span>(<span class="name">documentObject</span>){
   var <span class="name">keys</span> = <span class="name">Object</span>.<span class="name">keys</span>(<span class="name">documentObject</span>);
   <span class="keyword">return</span> <span class="name">keys</span>[<span class="number">0</span>]
   }
   }</pre>

.. raw:: html

   <!-- @@@concepts.html -->

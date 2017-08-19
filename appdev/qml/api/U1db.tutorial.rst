U1db.tutorial
=============

.. raw:: html

   <h2 id="1-0-0-overview-of-u1db-qt">

1.0.0 Overview of U1Db-Qt

.. raw:: html

   </h2>

.. raw:: html

   <p>

U1Db-Qt is a QML plugin written in Qt C++. It provides declarative, easy
to use, local data storage for QML applications, and in the future will
also include remote sync capabilities.

.. raw:: html

   </p>

.. raw:: html

   <p>

U1Db-Qt is based on a procedural implementation in Python, but has been
designed and developed from the start with declarative programming in
mind.

.. raw:: html

   </p>

.. raw:: html

   <p>

While U1Db-Qt makes use of SQLite in the back end, and relies heavily on
JSON, these are largely invisible to a QML developer who makes use of
the plugin. However, because U1Db-Qt does rely on both technologies it
is possible to easily debug applications using existing programs. For
example, a developer could make use of SQLiteBrowser to read U1Db
database files, which contain human readable JSON objects representing
content derived from a QML application.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="1-0-1-how-to-make-u1db-qt-available-to-a-qml-application">

1.0.1 How to Make U1Db-Qt Available to a QML Application

.. raw:: html

   </h2>

.. raw:: html

   <p>

Here is an example import statement:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import U1db <span class="number">1.0</span> as U1db</pre>

.. raw:: html

   <h2 id="2-0-0-database-element">

2.0.0 Database Element

.. raw:: html

   </h2>

.. raw:: html

   <p>

In U1Db-Qt, the Database element is the the central figure that works in
conjunction with Document elements, and in the future indexing
(currently under development), and querying (currently under
development) elements. It is the Database element that defines the
location of the data repository.

.. raw:: html

   </p>

.. raw:: html

   <p>

A Database element is also a valuable tool for cases where specific data
from a repository needs to be retrieved quickly, without indexing or
querying ahead of time. The 'contents' object associated with the
Database element can be used together with base items such as TextField
or TextArea and model-based items like ListView and ListItems.Standard.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="2-0-1-database-properties">

2.0.1 Database Properties

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp"><span class="type">QString</span> path
   <span class="type">QString</span> error</pre>

.. raw:: html

   <h2 id="2-1-0-creating-a-database">

2.1.0 Creating a Database

.. raw:: html

   </h2>

.. raw:: html

   <p>

A Database is very simple to create. It requires nothing more than an id
and a path where the file will be created.

.. raw:: html

   </p>

.. raw:: html

   <h3>

2.1.1 Example of Creating a Database

.. raw:: html

   </h3>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   Item{
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   }
   }</pre>

.. raw:: html

   <h2 id="3-0-0-document-element">

3.0.0 Document Element

.. raw:: html

   </h2>

.. raw:: html

   <p>

The Document element is the primary vehicle for entering data into a
repository, and can be helpful in some cases for getting data out as
well. Indexing and querying would normally provide more robust
functionality for extracting data from a repository, but in the case of
U1Db-Qt both are still under development at the time of writing (and
therefore not available for developers to use).

.. raw:: html

   </p>

.. raw:: html

   <p>

However, the Document element together with Database can still help
developers in many common situations, and will continue to be very
useful even when the indexing and querying functionality becomes
available. When a developer wants unfiltered results from a database, or
the cost of working with unfiltered results is reasonable, the
Document+Database combination is fast and easy to use. In quite a number
of use cases this may be exactly what a developer needs.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="3-0-1-document-properties">

3.0.1 Document Properties

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Database database
   <span class="type">QString</span> docId
   bool create
   <span class="type">QVariant</span> defaults
   <span class="type">QVariant</span> contents</pre>

.. raw:: html

   <h2 id="3-1-0-creating-a-basic-document">

3.1.0 Creating a Basic Document

.. raw:: html

   </h2>

.. raw:: html

   <p>

A Document declaration should contain at least a unique 'docId' and
'database', but these alone won't do anything by themselves.
Additionally, although the 'id' property is not mandatory, this property
will need to be set in order to more easily reference it from elsewhere
in the program (e.g. within a function call).

.. raw:: html

   </p>

.. raw:: html

   <h3>

3.1.0.1 Example of Creating a Basic Document

.. raw:: html

   </h3>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   import Ubuntu<span class="operator">.</span>Components <span class="number">0.1</span>
   Item{
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   }
   }</pre>

.. raw:: html

   <h2 id="3-1-1-creating-a-document-at-runtime">

3.1.1 Creating a Document At Runtime

.. raw:: html

   </h2>

.. raw:: html

   <p>

A Document can be declared at runtime, and default data entered into the
repository. This requires the same properties to be set as in the basic
example ('id', 'database' and 'docId'), plus setting 'create' (to true)
and a 'default' string.

.. raw:: html

   </p>

.. raw:: html

   <h3>

3.1.1.1 Example of Creating a Document At Runtime

.. raw:: html

   </h3>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   import Ubuntu<span class="operator">.</span>Components <span class="number">0.1</span>
   Item{
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   }
   U1db<span class="operator">.</span>Document {
   id: aDocument
   database: aDatabase
   docId: <span class="char">'helloworld'</span>
   create: <span class="keyword">true</span>
   defaults: { <span class="string">&quot;hello&quot;</span>: <span class="string">&quot;Hello World!&quot;</span> }
   }
   }</pre>

.. raw:: html

   <h2 id="3-1-2-creating-a-document-dynamically">

3.1.2 Creating a Document Dynamically

.. raw:: html

   </h2>

.. raw:: html

   <p>

Creating a Document in a dynamic fashion is the most common way of
putting data into a data repository based on UI activity (e.g. when a
user presses a button).

.. raw:: html

   </p>

.. raw:: html

   <h3>

3.1.2.1 Example 1 of Creating a Document Dynamically

.. raw:: html

   </h3>

.. raw:: html

   <p>

Another way of creating a new Document is to copy an existing Document:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   import Ubuntu<span class="operator">.</span>Components <span class="number">0.1</span>
   Item{
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   }
   U1db<span class="operator">.</span>Document {
   id: aDocument
   database: aDatabase
   docId: <span class="char">'helloworld'</span>
   }
   function someFunction() {
   var tempDocument <span class="operator">=</span> {}
   tempDocument <span class="operator">=</span> aDocument
   }
   }</pre>

.. raw:: html

   <h3>

3.1.2.2 Example 2 of Creating a Document Dynamically

.. raw:: html

   </h3>

.. raw:: html

   <p>

One way of creating a new Document dynamically is to make use of
Qt.createQmlObject:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   import Ubuntu<span class="operator">.</span>Components <span class="number">0.1</span>
   Item{
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   Component<span class="operator">.</span>onCompleted: { newDocumentObject() }
   function newDocumentObject() {
   var qmlString <span class="operator">=</span> <span class="string">&quot;import QtQuick 2.0; import U1db 1.0 as U1db; U1db.Document {id: aDcoument; database: aDatabase; docId: 'helloworld'; create: true; defaults: { 'hello': 'Hello New Document!' }}&quot;</span>
   <span class="type">Qt</span><span class="operator">.</span>createQmlObject(qmlString<span class="operator">,</span> aDatabase);
   }
   }
   }</pre>

.. raw:: html

   <h2 id="4-0-0-u1db-qt-and-qml-elements-and-models">

4.0.0 U1Db-Qt and QML Elements and Models

.. raw:: html

   </h2>

.. raw:: html

   <h2 id="4-1-0-u1db-qt-and-standard-elements">

4.1.0 U1Db-Qt and Standard Elements

.. raw:: html

   </h2>

.. raw:: html

   <h3>

4.1.1 U1Db-Qt and TextField & TextArea

.. raw:: html

   </h3>

.. raw:: html

   <h4>

4.1.2 Example of Using U1Db-Qt with Standard Elements

.. raw:: html

   </h4>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   import Ubuntu<span class="operator">.</span>Components <span class="number">0.1</span>
   Item{
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   function getContent(fieldName){
   var tempContents <span class="operator">=</span> {};
   tempContents <span class="operator">=</span> aDocument<span class="operator">.</span>contents
   <span class="keyword">return</span> tempContents<span class="operator">[</span>fieldName<span class="operator">]</span>
   }
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   }
   U1db<span class="operator">.</span>Document {
   id: aDocument
   database: aDatabase
   docId: <span class="char">'helloworld'</span>
   create: <span class="keyword">true</span>
   defaults: { <span class="string">&quot;hello&quot;</span>: <span class="string">&quot;Hello World 1!&quot;</span> }
   }
   TextField {
   id: addressBar
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   text: getContent(<span class="char">'hello'</span>)
   }
   }</pre>

.. raw:: html

   <h2 id="4-2-0-u1db-qt-and-model-based-elements">

4.2.0 U1Db-Qt and Model-Based Elements

.. raw:: html

   </h2>

.. raw:: html

   <h3>

4.2.1 U1Db-Qt and ListView

.. raw:: html

   </h3>

.. raw:: html

   <h4>

4.2.2 Example of Using U1Db-Qt with Model-Based Elements

.. raw:: html

   </h4>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
   import U1db <span class="number">1.0</span> as U1db
   import Ubuntu<span class="operator">.</span>Components <span class="number">0.1</span>
   Item{
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aU1DbDatabase&quot;</span>
   }
   U1db<span class="operator">.</span>Document {
   id: aDocument1
   database: aDatabase
   docId: <span class="char">'helloworld'</span>
   create: <span class="keyword">true</span>
   defaults: { <span class="string">&quot;hello&quot;</span>: <span class="string">&quot;Hello World 1!&quot;</span> }
   }
   U1db<span class="operator">.</span>Document {
   id: aDocument2
   database: aDatabase
   docId: <span class="char">'helloworld'</span>
   create: <span class="keyword">true</span>
   defaults: { <span class="string">&quot;hello&quot;</span>: <span class="string">&quot;Hello World 2!&quot;</span> }
   }
   ListView {
   model: aDatabase
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   delegate: Text {
   x: <span class="number">66</span>; y: <span class="number">77</span>
   text: contents<span class="operator">.</span>hello
   }
   }
   }</pre>

.. raw:: html

   <h2 id="5-0-0-resources">

5.0.0 Resources

.. raw:: html

   </h2>

.. raw:: html

   <h2 id="5-0-1-examples">

5.0.1 Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

One can find several examples in the bzr branch of U1Db-Qt (bzr branch
lp:u1db-qt) either in the subdirectory "examples" or from the following
url:

.. raw:: html

   </p>

.. raw:: html

   <p>

http://bazaar.launchpad.net/~uonedb-qt/u1db-qt/trunk/files/head:/examples/

.. raw:: html

   </p>

.. raw:: html

   <p>

These examples are currently under development (as is U1Db-Qt in
general), but should still be able to demonstrate the fundamentals
discussed within this document.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@tutorial.html -->

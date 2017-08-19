U1db.u1db-qt-tutorial-5
=======================

.. raw:: html

   <p>

This tutorial is designed to demonstrate a variety of essential U1Db-Qt
functionality and usage, including:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Utilizing the U1db-Qt Index element

.. raw:: html

   </li>

.. raw:: html

   <li>

Various approaches to define U1db-Qt Document elements when using the
Index element

.. raw:: html

   </li>

.. raw:: html

   <li>

Partnering the U1db-Qt Index element and a QML ListView element

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <h2 id="storing-data">

Storing Data

.. raw:: html

   </h2>

.. raw:: html

   <h3>

The Database Element

.. raw:: html

   </h3>

.. raw:: html

   <h4>

Creating a Database

.. raw:: html

   </h4>

.. raw:: html

   <p>

A Database is very simple to create. It only needs an id and a path
where the file will be created. A Database is a model, which can be used
by elements, such as the ListView further in this example.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Database {
   id: aDatabase
   path: <span class="string">&quot;aDatabase4&quot;</span>
   }</pre>

.. raw:: html

   <h2 id="the-document-element">

The Document Element

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Declaring Documents (at Runtime)

.. raw:: html

   </h3>

.. raw:: html

   <p>

A Document can be instantiated at runtime, or generated dynamically. The
examples below demonstrate the former.

.. raw:: html

   </p>

.. raw:: html

   <p>

A very basic Document could include its unique 'id' and 'docId'
properties. While it is not mandatory to define these properties, in
some cases they can be convenient references. More advanced applications
would likely find these very useful, and in some cases may be an
absolute necessity to achieve the objectives of the program.

.. raw:: html

   </p>

.. raw:: html

   <p>

This example of a very simple Document will not initially do anything,
until more properties are added and defined:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument1
   docId: <span class="char">'helloworld1'</span>
   }</pre>

.. raw:: html

   <p>

A basic but still practical Document definition contains several
essential properties. In addition to 'id' and 'docId' (discussed above),
the 'database', 'create', and 'defaults' properties are also very
important, and are introduced below.

.. raw:: html

   </p>

.. raw:: html

   <p>

The 'database' property ensures that the Document is attached to an
already defined (or possibly soon to be defined one) identified by its
id (in this case 'aDatabase'). For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument1
   database: aDatabase
   docId: <span class="char">'helloworld1'</span>
   }</pre>

.. raw:: html

   <p>

Should the Database not already contain a Document with the same docId
('hellowworld1' in this example) when a 'create' property is present and
set to true it will be generated. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument1
   database: aDatabase
   docId: <span class="char">'helloworld1'</span>
   create: <span class="keyword">true</span>
   }</pre>

.. raw:: html

   <p>

However, the Document still requires some data to be useful, which is
what the 'defaults' property provides. The value of 'defaults' is a map
of data that will be stored in the database (again when the create
property is et to true). It contain key:value pairs, where the value can
be a string, number, or nested object (e.g. additional fields, lists).
For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument1
   database: aDatabase
   docId: <span class="char">'helloworld1'</span>
   create: <span class="keyword">true</span>
   defaults:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">1</span> } } }
   }</pre>

.. raw:: html

   <p>

As mentioned above, lists can also be nested in Document data. Lists
provide a convenient method for producing multiple instances of the same
key (AKA 'field' or 'sub-field'). The example code below shows valid use
of the 'message' and 'id' sub-fields multiple times within the same
object.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument2
   database: aDatabase
   docId: <span class="char">'helloworld2'</span>
   create: <span class="keyword">true</span>
   defaults:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2</span> }<span class="operator">,</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2.5</span> }
   <span class="operator">]</span> } }
   }</pre>

.. raw:: html

   <p>

When the default Javascript Object Notation itself is formatted with
appropriate line breaks and indentation, it becomes easier to visualize
an embedded list, containing sub-fields 'message' and 'id' (and their
respective values):

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">{<span class="string">&quot;hello&quot;</span>:
   { <span class="string">&quot;world&quot;</span>:
   <span class="operator">[</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2</span> }<span class="operator">,</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2.5</span> }
   <span class="operator">]</span>
   }
   }</pre>

.. raw:: html

   <p>

In dot notation these sub-fields are represented by
'hello.world.message' and 'hello.world.id' respectively. Later in this
tutorial these will be utilized within the 'expression' property of
U1Db-Qt's Index element, in close collaboration with a QML ListView's
delegates.

.. raw:: html

   </p>

.. raw:: html

   <p>

Normally when a docId already exists in a database, and when the set
flag is set to true, the value in 'defaults' will be ignored (and the
existing data in the database will remain untouched). Sometimes a
developer needs to easily overwrite the data in an existing document.
The 'contents' property can be used for just that purpose. When
'contents' is defined, its value will replace existing data in the
database, for the document identified by the docId. In addition,
'contents' can be used to add new documents, in the same way as the
'create: true' + 'defaults' combination does; in other words, if the
document defined by 'docId' does not exist it will be created.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument3
   database: aDatabase
   docId: <span class="char">'helloworld3'</span>
   contents:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3</span> }<span class="operator">,</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.33</span> }<span class="operator">,</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.66</span> }
   <span class="operator">]</span> } }
   }</pre>

.. raw:: html

   <p>

If 'defaults' exists, 'create' is set to 'true' (or 'false' for that
matter) and 'contents' is also defined, it is the latter that takes
precidence. In other words, 'create' and 'defaults' will be ignored. The
following example demonstrates this scenario:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument3
   database: aDatabase
   docId: <span class="char">'helloworld3'</span>
   create: <span class="keyword">true</span>
   <span class="keyword">default</span>:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3</span> }<span class="operator">]</span> } }
   contents:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3</span> }<span class="operator">,</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.33</span> }<span class="operator">,</span>
   { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.66</span> }
   <span class="operator">]</span> } }
   }</pre>

.. raw:: html

   <p>

This snippet simply represents the absence of the 'create' property,
which is synonymous with 'create: false'. The Document can still be
recognized within the application, but until applicable properties (such
as those outlined above) are added and/or modified then nothing will be
added or modified in the database, and this instance may have very
little practical value.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Document {
   id: aDocument4
   database: aDatabase
   docId: <span class="char">'helloworld4'</span>
   defaults:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">4</span> } } }
   }</pre>

.. raw:: html

   <h4>

Samples of Stored Documents

.. raw:: html

   </h4>

.. raw:: html

   <p>

The data stored in the database after defining the above Document
elements (and then running the application, will consist of the
following:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

docId

.. raw:: html

   </th>

.. raw:: html

   <th>

content

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

'helloworld1'

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">{
   <span class="string">&quot;hello&quot;</span>: {
   <span class="string">&quot;world&quot;</span>: {
   <span class="string">&quot;id&quot;</span>: <span class="number">1</span><span class="operator">,</span>
   <span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

'helloworld2'

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">{
   <span class="string">&quot;hello&quot;</span>: {
   <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
   {
   <span class="string">&quot;id&quot;</span>: <span class="number">2</span><span class="operator">,</span>
   <span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
   }<span class="operator">,</span>
   {
   <span class="string">&quot;id&quot;</span>: <span class="number">2.5</span><span class="operator">,</span>
   <span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
   }
   <span class="operator">]</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

'helloworld3'

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp">{
   <span class="string">&quot;hello&quot;</span>: {
   <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
   {
   <span class="string">&quot;id&quot;</span>: <span class="number">3</span><span class="operator">,</span>
   <span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
   }<span class="operator">,</span>
   {
   <span class="string">&quot;id&quot;</span>: <span class="number">3.33</span><span class="operator">,</span>
   <span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
   }<span class="operator">,</span>
   {
   <span class="string">&quot;id&quot;</span>: <span class="number">3.66</span><span class="operator">,</span>
   <span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
   }
   <span class="operator">]</span>
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="retrieving-data">

Retrieving Data

.. raw:: html

   </h2>

.. raw:: html

   <p>

To retrieve the Documents that were declared earlier requires two
additional elements: Index and Query.

.. raw:: html

   </p>

.. raw:: html

   <h3>

The Index Element

.. raw:: html

   </h3>

.. raw:: html

   <h4>

Creating and Index Element

.. raw:: html

   </h4>

.. raw:: html

   <p>

The Index element requires both a unique 'id' and a pointer to a
'database' in order to begin becoming useful, as demonstrated here:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Index{
   database: aDatabase
   id: by_helloworld
   }</pre>

.. raw:: html

   <p>

In the future, the Index element will support on disk storage of
appropriate results / data. At the present time only in memory indexing
is done, but once the storing capability is implemented, defining and
identifying it is as simple as using the 'name' property (which will be
stored in the database along with the relvent data that goes with it).
The snippet below shows the use of the 'name' property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Index{
   database: aDatabase
   id: by_helloworld
   <span class="comment">//name: &quot;by-helloworld&quot;</span>
   }</pre>

.. raw:: html

   <p>

The Index element describes, using dot notation, the fields and
sub-fields where the developer expects to find information. That
information is defined in a list, and added as the value for the
'expression' property. The list can contain one or more entries, as
exemplified here (the property is commented out due to its current
status):

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Index{
   database: aDatabase
   id: by_helloworld
   <span class="comment">//name: &quot;by-helloworld&quot;</span>
   expression: <span class="operator">[</span><span class="string">&quot;hello.world.id&quot;</span><span class="operator">,</span><span class="string">&quot;hello.world.message&quot;</span><span class="operator">]</span>
   }</pre>

.. raw:: html

   <h3>

The QueryElement

.. raw:: html

   </h3>

.. raw:: html

   <h4>

Creating a Query Element

.. raw:: html

   </h4>

.. raw:: html

   <p>

The Query element has two responsibilities: a bridge from Database+Index
to other parts of the application, as well as further filtering of data
in the database (in addition to what Index provides).

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to fulfil its duties as a bridge to an Index (and Database),
the 'index' property must point to an Index element, identified by its
'id'. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Query{
   id: aQuery
   index: by_helloworld
   }</pre>

.. raw:: html

   <p>

While Index helps to filter data based on 'where' it is located (e.g.
field.sub-field), Query helps determine the additional set of criteria
for 'what' is being searched for. The intent of the 'query' property is
to provide the mechanism for defnining the search criteria, but at the
time of writing that functionality is not yet available. However, once
the implementation is in place, using it is only requires defining the
property's value (e.g. "Hello World"). Wild card searches using '*' are
supported, which is the default query (i.e. if 'query' is not set it is
assumed to be '*'). For example (the property is commented out due to
its current status):

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Query{
   id: aQuery
   index: by_helloworld
   <span class="comment">//query: &quot;*&quot;</span>
   }</pre>

.. raw:: html

   <p>

When the 'query' property becomes available, only wildcard search
definitions for "starts with" will be suppoprted. Thus the following
would be supported:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Query{
   id: aQuery
   index: by_helloworld
   <span class="comment">//query: &quot;Hello*&quot;</span>
   }</pre>

.. raw:: html

   <p>

But this would not:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">U1db<span class="operator">.</span>Query{
   id: aQuery
   index: by_helloworld
   <span class="comment">//query: &quot;*World&quot;</span>
   }</pre>

.. raw:: html

   <p>

Note: again, the 'query' property is commented out in the above two
snippets due to its current status

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-data">

Using Data

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Data and the Application UI

.. raw:: html

   </h3>

.. raw:: html

   <h4>

Using Data With Models and Views

.. raw:: html

   </h4>

.. raw:: html

   <p>

This simple snippet represents how to attach a ListModel to a ListView.
In this instance the model 'aQuery' is representative of the Query +
Index combination defined earlier:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ListView {
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   model: aQuery
   }</pre>

.. raw:: html

   <h5>

Data and Delegates

.. raw:: html

   </h5>

.. raw:: html

   <p>

How a model and ListView + delegates work together is a common QML
concept, and not specific to U1Db-Qt. However, the asynchronous nature
of this relationship is important to understand. When using QML
ListView, delegates will be created based on particular properties such
as the size of the application window, ListView, and delegate itself
(amongst other factors). Each delegate can then represent a Document
retrieved from the Database based on the record's index. This example
demonstrates some of the property definitions that contribute to
determining the number of delegates a ListView will contain:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ListView {
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   model: aQuery
   delegate: Text {
   x: <span class="number">66</span>; y: <span class="number">77</span>
   }
   }</pre>

.. raw:: html

   <p>

When the number of Documents is less than or equal to the number of
delegates then there is a one to one mapping of index to delegate (e.g.
the first delegate will represent the Document with an index = 0; the
second, index = 1; and so on).

.. raw:: html

   </p>

.. raw:: html

   <p>

When there are more Documents than delegates the ListView will request a
new index depending on the situation (e.g. a user scrolls up or down).
For example, if a ListView has 10 delegates, but 32 Documents to handle,
when a user initially scrolls the first delegate will change from
representing the Document with index = 0 to the Document that might have
index = 8; the second, from index = 1 to index = 9; ...; the 10th
delegate from index = 9 to index = 17. A second scrolling gesture the
first index may change to 15, and the final index 24. And so on.
Scrolling in the opposite direction will have a similar effect, but the
Document index numbers for each delegate will obviously start to decline
(towards their original values).

.. raw:: html

   </p>

.. raw:: html

   <p>

The following snippet, which modifies the above delegate definition,
could demonstrate this effect if there were enough Documents to do so
(i.e. some number greater than the number of delegates):

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ListView {
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   model: aQuery
   delegate: Text {
   x: <span class="number">66</span>; y: <span class="number">77</span>
   text: index
   }
   }</pre>

.. raw:: html

   <p>

The object called 'contents' contains one or more properties. This
example demonstrates the retrieval of data based on the U1db.Index
defined earlier (id: by-helloworld). In this instance the Index
contained two expressions simultaniously, "hello.world.id" and
"hello.world.message"

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">ListView {
   width: units<span class="operator">.</span>gu(<span class="number">45</span>)
   height: units<span class="operator">.</span>gu(<span class="number">80</span>)
   model: aQuery
   delegate: Text {
   x: <span class="number">66</span>; y: <span class="number">77</span>
   text: <span class="string">&quot;(&quot;</span> <span class="operator">+</span> index <span class="operator">+</span> <span class="string">&quot;) '&quot;</span> <span class="operator">+</span> contents<span class="operator">.</span>message <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> contents<span class="operator">.</span>id <span class="operator">+</span> <span class="string">&quot;'&quot;</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@u1db-qt-tutorial-5.html -->

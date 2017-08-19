QtQml.ListModel
===============

.. raw:: html

   <p>

Defines a free-form list data source More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListModel -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQml.Models 2.1

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

dynamicRoles : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

append(jsobject dict)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

clear()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object get(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

insert(int index, jsobject dict)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

move(int from, int to, int n)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

remove(int index, int count)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

set(int index, jsobject dict)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

setProperty(int index, string property, variant value)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sync()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ListModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The ListModel is a simple container of ListElement definitions, each
containing data roles. The contents can be defined dynamically, or
explicitly in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

The number of elements in the model can be obtained from its count
property. A number of familiar methods are also provided to manipulate
the contents of the model, including append(), insert(), move(),
remove() and set(). These methods accept dictionaries as their
arguments; these are translated to ListElement objects by the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Elements can be manipulated via the model using the setProperty()
method, which allows the roles of the specified element to be set and
changed.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="example-usage">

Example Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows a ListModel containing three elements, with
the roles "name" and "cost".

.. raw:: html

   </p>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="index.html">ListModel</a></span> {
   <span class="name">id</span>: <span class="name">fruitModel</span>
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
   <span class="name">cost</span>: <span class="number">2.45</span>
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
   <span class="name">cost</span>: <span class="number">3.25</span>
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
   <span class="name">cost</span>: <span class="number">1.95</span>
   }
   }</pre>

.. raw:: html

   <p>

Roles (properties) in each element must begin with a lower-case letter
and should be common to all elements in a model. The ListElement
documentation provides more guidelines for how elements should be
defined.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since the example model contains an id property, it can be referenced by
views, such as the ListView in this example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="index.html">ListModel</a></span> {
   <span class="name">id</span>: <span class="name">fruitModel</span>
   ...
   }
   <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">fruitDelegate</span>
   <span class="type">Row</span> {
   <span class="name">spacing</span>: <span class="number">10</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">name</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">'$'</span> <span class="operator">+</span> <span class="name">cost</span> }
   }
   }
   <span class="type">ListView</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="name">fruitModel</span>
   <span class="name">delegate</span>: <span class="name">fruitDelegate</span>
   }
   }</pre>

.. raw:: html

   <p>

It is possible for roles to contain list data. In the following example
we create a list of fruit attributes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">ListModel</a></span> {
   <span class="name">id</span>: <span class="name">fruitModel</span>
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
   <span class="name">cost</span>: <span class="number">2.45</span>
   <span class="name">attributes</span>: [
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Core&quot;</span> },
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Deciduous&quot;</span> }
   ]
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
   <span class="name">cost</span>: <span class="number">3.25</span>
   <span class="name">attributes</span>: [
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Citrus&quot;</span> }
   ]
   }
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
   <span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
   <span class="name">cost</span>: <span class="number">1.95</span>
   <span class="name">attributes</span>: [
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Tropical&quot;</span> },
   <span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Seedless&quot;</span> }
   ]
   }
   }</pre>

.. raw:: html

   <p>

The delegate displays all the fruit attributes:

.. raw:: html

   </p>

.. raw:: html

   <p>

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">fruitDelegate</span>
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type">Text</span> { <span class="name">id</span>: <span class="name">nameField</span>; <span class="name">text</span>: <span class="name">name</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">'$'</span> <span class="operator">+</span> <span class="name">cost</span>; <span class="name">anchors</span>.left: <span class="name">nameField</span>.<span class="name">right</span> }
   <span class="type">Row</span> {
   <span class="name">anchors</span>.top: <span class="name">nameField</span>.<span class="name">bottom</span>
   <span class="name">spacing</span>: <span class="number">5</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Attributes:&quot;</span> }
   <span class="type">Repeater</span> {
   <span class="name">model</span>: <span class="name">attributes</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">description</span> }
   }
   }
   }
   }</pre>

.. raw:: html

   <h2 id="modifying-list-models">

Modifying List Models

.. raw:: html

   </h2>

.. raw:: html

   <p>

The content of a ListModel may be created and modified using the
clear(), append(), set(), insert() and setProperty() methods. For
example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQml.Component.md">Component</a></span> {
   <span class="name">id</span>: <span class="name">fruitDelegate</span>
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">name</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">'$'</span> <span class="operator">+</span> <span class="name">cost</span>; <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span> }
   <span class="comment">// Double the price when clicked.</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">fruitModel</span>.<span class="name">setProperty</span>(<span class="name">index</span>, <span class="string">&quot;cost&quot;</span>, <span class="name">cost</span> <span class="operator">*</span> <span class="number">2</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

Note that when creating content dynamically the set of available
properties cannot be changed once set. Whatever properties are first
added to the model are the only permitted properties in the model.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="using-threaded-list-models-with-workerscript">

Using Threaded List Models with WorkerScript

.. raw:: html

   </h2>

.. raw:: html

   <p>

ListModel can be used together with WorkerScript access a list model
from multiple threads. This is useful if list modifications are
synchronous and take some time: the list operations can be moved to a
different thread to avoid blocking of the main GUI thread.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an example that uses WorkerScript to periodically append the
current time to a list model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQml.Timer.md">Timer</a></span> {
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

The included file, dataloader.js, looks like this:

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

   <p>

The timer in the main example sends messages to the worker script by
calling WorkerScript::sendMessage(). When this message is received,
WorkerScript.onMessage() is invoked in dataloader.js, which appends the
current time to the list model.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note the call to sync() from the external thread. You must call sync()
or else the changes made to the list from that thread will not be
reflected in the list model in the main thread.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Data Models, Qt Quick Examples - Threading, and Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ListModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The number of data entries in the model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="dynamicRoles-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

dynamicRoles : bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

By default, the type of a role is fixed the first time the role is used.
For example, if you create a role called "data" and assign a number to
it, you can no longer assign a string to the "data" role. However, when
the dynamicRoles property is enabled, the type of a given role is not
fixed and can be different between elements.

.. raw:: html

   </p>

.. raw:: html

   <p>

The dynamicRoles property must be set before any data is added to the
ListModel, and must be set from the main thread.

.. raw:: html

   </p>

.. raw:: html

   <p>

A ListModel that has data statically defined (via the ListElement QML
syntax) cannot have the dynamicRoles property enabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

There is a significant performance cost to using a ListModel with
dynamic roles enabled. The cost varies from platform to platform but is
typically somewhere between 4-6x slower than using static role types.

.. raw:: html

   </p>

.. raw:: html

   <p>

Due to the performance cost of using dynamic roles, they are disabled by
default.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@dynamicRoles -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$append -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="append-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

append(jsobject dict)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Adds a new item to the end of the list model, with the values in dict.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">fruitModel<span class="operator">.</span>append({<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Pizza&quot;</span>})</pre>

.. raw:: html

   <p>

See also set() and remove().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@append -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="clear-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

clear()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Deletes all content from the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also append() and remove().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@clear -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object get(int index)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Returns the item at index in the list model. This allows the item data
to be accessed or modified from JavaScript:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: {
   fruitModel<span class="operator">.</span>append({<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Jackfruit&quot;</span>});
   console<span class="operator">.</span>log(fruitModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>cost);
   fruitModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>cost <span class="operator">=</span> <span class="number">10.95</span>;
   }</pre>

.. raw:: html

   <p>

The index must be an element in the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that properties of the returned object that are themselves objects
will also be models, and this get() method is used to access elements:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    fruitModel<span class="operator">.</span><a href="#append-method">append</a>(<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span><span class="operator">,</span> <span class="string">&quot;attributes&quot;</span>:
   <span class="operator">[</span>{<span class="string">&quot;name&quot;</span>:<span class="string">&quot;spikes&quot;</span><span class="operator">,</span><span class="string">&quot;value&quot;</span>:<span class="string">&quot;7mm&quot;</span>}<span class="operator">,</span>
   {<span class="string">&quot;name&quot;</span>:<span class="string">&quot;color&quot;</span><span class="operator">,</span><span class="string">&quot;value&quot;</span>:<span class="string">&quot;green&quot;</span>}<span class="operator">]</span>);
   fruitModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>attributes<span class="operator">.</span>get(<span class="number">1</span>)<span class="operator">.</span>value; <span class="comment">// == &quot;green&quot;</span></pre>

.. raw:: html

   <p>

Warning: The returned object is not guaranteed to remain valid. It
should not be used in property bindings.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also append().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="insert-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

insert(int index, jsobject dict)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Adds a new item to the list model at position index, with the values in
dict.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">fruitModel<span class="operator">.</span>insert(<span class="number">2</span><span class="operator">,</span> {<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Pizza&quot;</span>})</pre>

.. raw:: html

   <p>

The index must be to an existing item in the list, or one past the end
of the list (equivalent to append).

.. raw:: html

   </p>

.. raw:: html

   <p>

See also set() and append().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@insert -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

move(int from, int to, int n)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Moves n items from one position to another.

.. raw:: html

   </p>

.. raw:: html

   <p>

The from and to ranges must exist; for example, to move the first 3
items to the end of the list:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">fruitModel<span class="operator">.</span>move(<span class="number">0</span><span class="operator">,</span> fruitModel<span class="operator">.</span>count <span class="operator">-</span> <span class="number">3</span><span class="operator">,</span> <span class="number">3</span>)</pre>

.. raw:: html

   <p>

See also append().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="remove-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

remove(int index, int count = 1)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Deletes the content at index from the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also clear().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@remove -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="set-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

set(int index, jsobject dict)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Changes the item at index in the list model with the values in dict.
Properties not appearing in dict are left unchanged.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">fruitModel<span class="operator">.</span>set(<span class="number">3</span><span class="operator">,</span> {<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Pizza&quot;</span>})</pre>

.. raw:: html

   <p>

If index is equal to count() then a new item is appended to the list.
Otherwise, index must be an element in the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also append().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@set -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setProperty-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

setProperty(int index, string property, variant value)

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Changes the property of the item at index in the list model to value.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">fruitModel<span class="operator">.</span>setProperty(<span class="number">3</span><span class="operator">,</span> <span class="string">&quot;cost&quot;</span><span class="operator">,</span> <span class="number">5.95</span>)</pre>

.. raw:: html

   <p>

The index must be an element in the list.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also append().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setProperty -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sync-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

sync()

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Writes any unsaved changes to the list model after it has been modified
from a worker script.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sync -->



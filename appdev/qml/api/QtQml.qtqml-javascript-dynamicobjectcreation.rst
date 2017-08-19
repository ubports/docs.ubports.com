QtQml.qtqml-javascript-dynamicobjectcreation
============================================

.. raw:: html

   <p>

QML supports the dynamic creation of objects from within JavaScript.
This is useful to delay instantiation of objects until necessary,
thereby improving application startup time. It also allows visual
objects to be dynamically created and added to the scene in reaction to
user input or other events.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the Dynamic Scene example for a demonstration of the concepts
discussed on this page.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="creating-objects-dynamically">

Creating Objects Dynamically

.. raw:: html

   </h2>

.. raw:: html

   <p>

There are two ways to create objects dynamically from JavaScript. You
can either call Qt.createComponent() to dynamically create a Component
object, or use Qt.createQmlObject() to create an object from a string of
QML. Creating a component is better if you have an existing component
defined in a QML document and you want to dynamically create instances
of that component. Otherwise, creating an object from a string of QML is
useful when the object QML itself is generated at runtime.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Creating a Component Dynamically

.. raw:: html

   </h3>

.. raw:: html

   <p>

To dynamically load a component defined in a QML file, call the
Qt.createComponent() function in the Qt object. This function takes the
URL of the QML file as its only argument and creates a Component object
from this URL.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once you have a Component, you can call its createObject() method to
create an instance of the component. This function can take one or two
arguments:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The first is the parent for the new object. The parent can be a
graphical object (i.e. of the Item type) or non-graphical object (i.e.
of the QtObject or C++ QObject type). Only graphical objects with
graphical parent objects will be rendered to the Qt Quick visual canvas.
If you wish to set the parent later you can safely pass null to this
function.

.. raw:: html

   </li>

.. raw:: html

   <li>

The second is optional and is a map of property-value pairs that define
initial any property values for the object. Property values specified by
this argument are applied to the object before its creation is
finalized, avoiding binding errors that may occur if particular
properties must be initialized to enable other property bindings.
Additionally, there are small performance benefits when compared to
defining property values and bindings after the object is created.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Here is an example. First there is Sprite.qml, which defines a simple
QML component:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> { <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }</pre>

.. raw:: html

   <p>

Our main application file, main.qml, imports a componentCreation.js
JavaScript file that will create Sprite objects:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import &quot;componentCreation.js&quot; as MyScript
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">appWindow</span>
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="name">Component</span>.onCompleted: <span class="name">MyScript</span>.<span class="name">createSpriteObjects</span>();
   }</pre>

.. raw:: html

   <p>

Here is componentCreation.js. Notice it checks whether the component
status is Component.Ready before calling createObject() in case the QML
file is loaded over a network and thus is not ready immediately.

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">var <span class="name">component</span>;
   var <span class="name">sprite</span>;
   <span class="keyword">function</span> <span class="name">createSpriteObjects</span>() {
   <span class="name">component</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Sprite.qml&quot;</span>);
   <span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>)
   <span class="name">finishCreation</span>();
   <span class="keyword">else</span>
   <span class="name">component</span>.<span class="name">statusChanged</span>.<span class="name">connect</span>(<span class="name">finishCreation</span>);
   }
   <span class="keyword">function</span> <span class="name">finishCreation</span>() {
   <span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
   <span class="name">sprite</span> <span class="operator">=</span> <span class="name">component</span>.<span class="name">createObject</span>(<span class="name">appWindow</span>, {&quot;x&quot;: <span class="number">100</span>, &quot;y&quot;: <span class="number">100</span>});
   <span class="keyword">if</span> (<span class="name">sprite</span> <span class="operator">==</span> <span class="number">null</span>) {
   <span class="comment">// Error Handling</span>
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Error creating object&quot;</span>);
   }
   } <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Error</span>) {
   <span class="comment">// Error Handling</span>
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Error loading component:&quot;</span>, <span class="name">component</span>.<span class="name">errorString</span>());
   }
   }</pre>

.. raw:: html

   <p>

If you are certain the QML file to be loaded is a local file, you could
omit the finishCreation() function and call createObject() immediately:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js"><span class="keyword">function</span> <span class="name">createSpriteObjects</span>() {
   <span class="name">component</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Sprite.qml&quot;</span>);
   <span class="name">sprite</span> <span class="operator">=</span> <span class="name">component</span>.<span class="name">createObject</span>(<span class="name">appWindow</span>, {&quot;x&quot;: <span class="number">100</span>, &quot;y&quot;: <span class="number">100</span>});
   <span class="keyword">if</span> (<span class="name">sprite</span> <span class="operator">==</span> <span class="number">null</span>) {
   <span class="comment">// Error Handling</span>
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Error creating object&quot;</span>);
   }
   }</pre>

.. raw:: html

   <p>

Notice in both instances, createObject() is called with appWindow passed
as the parent argument, since the dynamically created object is a visual
(Qt Quick) object. The created object will become a child of the
appWindow object in main.qml, and appear in the scene.

.. raw:: html

   </p>

.. raw:: html

   <p>

When using files with relative paths, the path should be relative to the
file where Qt.createComponent() is executed.

.. raw:: html

   </p>

.. raw:: html

   <p>

To connect signals to (or receive signals from) dynamically created
objects, use the signal connect() method. See Connecting Signals to
Methods and Signals for more information.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is also possible to instantiate components without blocking via the
incubateObject() function.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Creating an Object from a String of QML

.. raw:: html

   </h3>

.. raw:: html

   <p>

If the QML is not defined until runtime, you can create a QML object
from a string of QML using the Qt.createQmlObject() function, as in the
following example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">var <span class="name">newObject</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtQuick 2.0; Rectangle {color: &quot;red&quot;; width: 20; height: 20}'</span>,
   <span class="name">parentItem</span>, <span class="string">&quot;dynamicSnippet1&quot;</span>);</pre>

.. raw:: html

   <p>

The first argument is the string of QML to create. Just like in a new
file, you will need to import any types you wish to use. The second
argument is the parent object for the new object, and the parent
argument semantics which apply to components are similarly applicable
for createQmlObject(). The third argument is the file path to associate
with the new object; this is used for error reporting.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the string of QML imports files using relative paths, the path should
be relative to the file in which the parent object (the second argument
to the method) is defined.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="maintaining-dynamically-created-objects">

Maintaining Dynamically Created Objects

.. raw:: html

   </h2>

.. raw:: html

   <p>

When managing dynamically created objects, you must ensure the creation
context outlives the created object. Otherwise, if the creation context
is destroyed first, the bindings in the dynamic object will no longer
work.

.. raw:: html

   </p>

.. raw:: html

   <p>

The actual creation context depends on how an object is created:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

If Qt.createComponent() is used, the creation context is the QQmlContext
in which this method is called

.. raw:: html

   </li>

.. raw:: html

   <li>

If Qt.createQmlObject() is called, the creation context is the context
of the parent object passed to this method

.. raw:: html

   </li>

.. raw:: html

   <li>

If a Component{} object is defined and createObject() or
incubateObject() is called on that object, the creation context is the
context in which the Component is defined

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Also, note that while dynamically created objects may be used the same
as other objects, they do not have an id in QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="deleting-objects-dynamically">

Deleting Objects Dynamically

.. raw:: html

   </h2>

.. raw:: html

   <p>

In many user interfaces, it is sufficient to set a visual object's
opacity to 0 or to move the visual object off the screen instead of
deleting it. If you have lots of dynamically created objects, however,
you may receive a worthwhile performance benefit if unused objects are
deleted.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that you should never manually delete objects that were dynamically
created by convenience QML object factories (such as Loader and
Repeater). Also, you should avoid deleting objects that you did not
dynamically create yourself.

.. raw:: html

   </p>

.. raw:: html

   <p>

Items can be deleted using the destroy() method. This method has an
optional argument (which defaults to 0) that specifies the approximate
delay in milliseconds before the object is to be destroyed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is an example. The application.qml creates five instances of the
SelfDestroyingRect.qml component. Each instance runs a NumberAnimation,
and when the animation has finished, calls destroy() on its root object
to destroy itself:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.qml

.. raw:: html

   </td>

.. raw:: html

   <td>

SelfDestroyingRect.qml

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">container</span>
   <span class="name">width</span>: <span class="number">500</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">Component</span>.onCompleted: {
   var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;SelfDestroyingRect.qml&quot;</span>);
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">5</span>; i++) {
   var <span class="name">object</span> = <span class="name">component</span>.<span class="name">createObject</span>(<span class="name">container</span>);
   <span class="name">object</span>.<span class="name">x</span> <span class="operator">=</span> (<span class="name">object</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">10</span>) <span class="operator">*</span> <span class="name">i</span>;
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   NumberAnimation on <span class="name">opacity</span> {
   <span class="name">to</span>: <span class="number">0</span>
   <span class="name">duration</span>: <span class="number">1000</span>
   <span class="name">onRunningChanged</span>: {
   <span class="keyword">if</span> (!<span class="name">running</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Destroying...&quot;</span>)
   <span class="name">rect</span>.<span class="name">destroy</span>();
   }
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Alternatively, the application.qml could have destroyed the created
object by calling object.destroy().

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that it is safe to call destroy() on an object within that object.
Objects are not destroyed the instant destroy() is called, but are
cleaned up sometime between the end of that script block and the next
frame (unless you specified a non-zero delay).

.. raw:: html

   </p>

.. raw:: html

   <p>

Note also that if a SelfDestroyingRect instance was created statically
like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="type">SelfDestroyingRect</span> {
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <p>

This would result in an error, since objects can only be dynamically
destroyed if they were dynamically created.

.. raw:: html

   </p>

.. raw:: html

   <p>

Objects created with Qt.createQmlObject() can similarly be destroyed
using destroy():

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">var <span class="name">newObject</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtQuick 2.0; Rectangle {color: &quot;red&quot;; width: 20; height: 20}'</span>,
   <span class="name">parentItem</span>, <span class="string">&quot;dynamicSnippet1&quot;</span>);
   <span class="name">newObject</span>.<span class="name">destroy</span>(<span class="number">1000</span>);</pre>

.. raw:: html

   <!-- @@@qtqml-javascript-dynamicobjectcreation.html -->

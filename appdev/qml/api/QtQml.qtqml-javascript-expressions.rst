QtQml.qtqml-javascript-expressions
==================================

.. raw:: html

   <p>

The JavaScript Host Environment provided by QML can run valid standard
JavaScript constructs such as conditional operators, arrays, variable
setting, loops. In addition to the standard JavaScript properties, the
QML Global Object includes a number of helper methods that simplify
building UIs and interacting with the QML environment.

.. raw:: html

   </p>

.. raw:: html

   <p>

The JavaScript environment provided by QML is stricter than that in a
web browser. For example, in QML you cannot add to, or modify, members
of the JavaScript global object. In regular JavaScript, it is possible
to do this accidentally by using a variable without declaring it. In QML
this will throw an exception, so all local variables must be explicitly
declared. See JavaScript Environment Restrictions for a complete
description of the restrictions on JavaScript code executed from QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

Various parts of QML documents can contain JavaScript code:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

The body of property bindings. These JavaScript expressions describe
relationships between QML object properties. When any of a property's
dependencies change, the property is automatically updated too,
according to the specified relationship.

.. raw:: html

   </li>

.. raw:: html

   <li>

The body of Signal handlers. These JavaScript statements are
automatically evaluated whenever a QML object emits the associated
signal.

.. raw:: html

   </li>

.. raw:: html

   <li>

The definition of custom methods. JavaScript functions that are defined
within the body of a QML object become methods of that object.

.. raw:: html

   </li>

.. raw:: html

   <li>

Standalone JavaScript resource (.js) files. These files are actually
separate from QML documents, but they can be imported into QML
documents. Functions and variables that are defined within the imported
files can be used in property bindings, signal handlers, and custom
methods.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <h2 id="javascript-in-property-bindings">

JavaScript in Property Bindings

.. raw:: html

   </h2>

.. raw:: html

   <p>

In the following example, the Rectangle's color depends on the
MouseArea's pressed property. This relationship is described using a
conditional expression:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">colorbutton</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">80</span>;
   <span class="name">color</span>: <span class="name">mousearea</span>.<span class="name">pressed</span> ? <span class="string">&quot;steelblue&quot;</span> : <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mousearea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   }</pre>

.. raw:: html

   <p>

In fact, any JavaScript expression (no matter how complex) may be used
in a property binding definition, as long as the result of the
expression is a value whose type can be assigned to the property. This
includes side effects. However, complex bindings and side effects are
discouraged because they can reduce the performance, readability, and
maintainability of the code.

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two ways to define a property binding: the first (and most
common) is, as previously shown, in a property initialization. The
second (and much rarer) way is to assign the property a function
returned from the Qt.binding() function, from within imperative
JavaScript code, as shown below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">colorbutton</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">80</span>;
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mousearea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">mousearea</span>.<span class="name">pressed</span> ? <span class="string">&quot;steelblue&quot;</span> : <span class="string">&quot;lightsteelblue&quot;</span> });
   }
   }</pre>

.. raw:: html

   <p>

See the property bindings documentation for more information about how
to define property bindings, and see the documentation about Property
Assignment versus Property Binding for information about how bindings
differ from value assignments.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-in-signal-handlers">

JavaScript in Signal Handlers

.. raw:: html

   </h2>

.. raw:: html

   <p>

QML object types can emit signals in reaction to certain events
occurring. Those signals can be handled by signal handler functions,
which can be defined by clients to implement custom program logic.

.. raw:: html

   </p>

.. raw:: html

   <p>

Suppose that a button represented by a Rectangle type has a MouseArea
and a Text label. The MouseArea will emit its pressed signal when the
user presses the defined interactive area, which will automatically
trigger the onPressed handler, which can be defined by clients. The QML
engine will execute the JavaScript expressions defined in the onPressed
and onReleased handlers, as required. Typically, a signal handler is
bound to JavaScript expressions to initiate other events or to simply
assign property values.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mousearea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: {
   <span class="comment">// arbitrary JavaScript expression</span>
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;I am Pressed!&quot;</span>
   }
   <span class="name">onReleased</span>: {
   <span class="comment">// arbitrary JavaScript expression</span>
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Click Me!&quot;</span>
   }
   }
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">text</span>: <span class="string">&quot;Press Me!&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Please see the Signal and Handler Event System documentation for
in-depth discussion of signals and signal handlers, and see the QML
Object Attributes documentation for in-depth discussion of how to define
the implementation of signal handlers in QML with JavaScript.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-in-standalone-functions">

JavaScript in Standalone Functions

.. raw:: html

   </h2>

.. raw:: html

   <p>

Program logic can also be defined in JavaScript functions. These
functions can be defined inline in QML documents (as custom methods) or
externally in imported JavaScript files.

.. raw:: html

   </p>

.. raw:: html

   <h3>

JavaScript in Custom Object Methods

.. raw:: html

   </h3>

.. raw:: html

   <p>

Custom methods can be defined in QML documents and may be called from
signal handlers, property bindings, or functions in other QML objects.
Methods defined in this way are often referred to as inline JavaScript
functions because their implementation is included in the QML object
type definition (QML document), as opposed to an external JavaScript
file.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example of an inline custom method is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="keyword">function</span> <span class="name">factorial</span>(<span class="name">a</span>) {
   <span class="name">a</span> <span class="operator">=</span> <span class="name">parseInt</span>(<span class="name">a</span>);
   <span class="keyword">if</span> (<span class="name">a</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
   <span class="keyword">return</span> <span class="number">1</span>;
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="name">a</span> <span class="operator">*</span> <span class="name">factorial</span>(<span class="name">a</span> <span class="operator">-</span> <span class="number">1</span>);
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">factorial</span>(<span class="number">10</span>))
   }
   }</pre>

.. raw:: html

   <p>

The factorial function will run whenever the MouseArea detects a clicked
signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

Importantly, custom methods defined inline in a QML document are exposed
to other objects, and therefore inline functions on the root object in a
QML component can be invoked by callers outside the component. If this
is not desired, the method can be added to a non-root object or,
preferably, written in an external JavaScript file.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the QML Object Attributes documentation for in-depth discussion of
how to define custom methods in QML with JavaScript code
implementations.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Functions in Imported JavaScript Files

.. raw:: html

   </h3>

.. raw:: html

   <p>

Non-trivial program logic is best separated into external JavaScript
files. These files can be imported into QML files using an import
statement, in the same way that modules are imported.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the factorial() method in the above example could be moved
into an external file named factorial.js, and accessed like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;factorial.js&quot; as MathFunctions
   <span class="type">Item</span> {
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">MathFunctions</span>.<span class="name">factorial</span>(<span class="number">10</span>))
   }
   }</pre>

.. raw:: html

   <p>

For more information about loading external JavaScript files into QML,
read the section about Importing JavaScript Resources in QML.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Connecting Signals to JavaScript Functions

.. raw:: html

   </h3>

.. raw:: html

   <p>

QML object types which emit signals also provide default signal handlers
for their signals, as described in a previous section. Sometimes,
however, a client will want to cause a signal emitted from one object to
trigger a function defined in another object; and in that case, a signal
connection is often preferable.

.. raw:: html

   </p>

.. raw:: html

   <p>

A signal emitted by a QML object may be connected to a JavaScript
function by calling the signal's connect() method and passing the
JavaScript function as an argument. For example, the following code
connects the MouseArea clicked signal to the jsFunction() in script.js:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import &quot;script.js&quot; as MyScript
   <span class="type">Item</span> {
   <span class="name">id</span>: <span class="name">item</span>
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">mouseArea</span>.<span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">MyScript</span>.<span class="name">jsFunction</span>)
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="js"><span class="comment">// script.js</span>
   <span class="keyword">function</span> <span class="name">jsFunction</span>() {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Called JavaScript function!&quot;</span>)
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

The jsFunction() will now be called whenever MouseArea's clicked signal
is emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Connecting Signals to Methods and Signals for more information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-in-application-startup-code">

JavaScript in Application Startup Code

.. raw:: html

   </h2>

.. raw:: html

   <p>

It is occasionally necessary to run some imperative code at application
(or component instance) startup. While it is tempting to just include
the startup script as global code in an external script file, this can
have severe limitations as the QML environment may not have been fully
established. For example, some objects might not have been created or
some property bindings may not have been established. See JavaScript
Environment Restrictions for the exact limitations of global script
code.

.. raw:: html

   </p>

.. raw:: html

   <p>

A QML object will emit the Component.completed attached signal when its
instantiation is complete. JavaScript code in the corresponding
Component.onCompleted handler runs after the object is instantiated.
Thus, the best place to write application startup code is in the
Component.onCompleted handler of the top-level object, because this
object emits Component.completed when the QML environment is fully
established.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="keyword">function</span> <span class="name">startupFunction</span>() {
   <span class="comment">// ... startup code</span>
   }
   <span class="name">Component</span>.onCompleted: <span class="name">startupFunction</span>();
   }</pre>

.. raw:: html

   <p>

Any object in a QML file - including nested objects and nested QML
component instances - can use this attached property. If there is more
than one onCompleted() handler to execute at startup, they are run
sequentially in an undefined order.

.. raw:: html

   </p>

.. raw:: html

   <p>

Likewise, every Component will emit a destruction() signal just before
being destroyed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-javascript-expressions.html -->

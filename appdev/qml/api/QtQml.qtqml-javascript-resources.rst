QtQml.qtqml-javascript-resources
================================

.. raw:: html

   <p>

The program logic for a QML application may be defined in JavaScript.
The JavaScript code may either be defined in-line in QML documents, or
separated into JavaScript files (known as JavaScript Resources in QML).

.. raw:: html

   </p>

.. raw:: html

   <p>

There are two different kinds of JavaScript resources which are
supported in QML: code-behind implementation files, and shared (library)
files. Both kinds of JavaScript resource may be imported by other
JavaScript resources, or included in QML modules.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="code-behind-implementation-resource">

Code-Behind Implementation Resource

.. raw:: html

   </h2>

.. raw:: html

   <p>

Most JavaScript files imported into a QML document are stateful
implementations for the QML document importing them. In these cases,
each instance of the QML object type defined in the document requires a
separate copy of the JavaScript objects and state in order to behave
correctly.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default behavior when importing JavaScript files is to provide a
unique, isolated copy for each QML component instance. If that
JavaScript file does not import any resources or modules with a .import
statement, its code will run in the same scope as the QML component
instance and consequently can access and manipulate the objects and
properties declared in that QML component. Otherwise, it will have its
own unique scope, and objects and properties of the QML component should
be passed to the functions of the JavaScript file as parameters if they
are required.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example of a code-behind implementation resource follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// MyButton.qml</span>
   import QtQuick 2.0
   import &quot;my_button_impl.js&quot; as Logic <span class="comment">// a new instance of this JavaScript resource is loaded for each instance of Button.qml</span>
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">200</span>
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mousearea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">Logic</span>.<span class="name">onClicked</span>(<span class="name">rect</span>)
   }
   }</pre>

.. raw:: html

   <pre class="qml">// my_button_impl.js
   var clickCount = 0;   // this state is separate for each instance of MyButton
   function onClicked(btn) {
   clickCount += 1;
   if ((clickCount % 5) == 0) {
   obj.color = Qt.rgba(1,0,0,1);
   } else {
   obj.color = Qt.rgba(0,1,0,1);
   }
   }</pre>

.. raw:: html

   <p>

In general, simple logic should be defined in-line in the QML file, but
more complex logic should be separated into code-behind implementation
resources for maintainability and readability.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="shared-javascript-resources-libraries">

Shared JavaScript Resources (Libraries)

.. raw:: html

   </h2>

.. raw:: html

   <p>

Some JavaScript files act more like libraries - they provide a set of
helper functions that take input and compute output, but never
manipulate QML component instances directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

As it would be wasteful for each QML component instance to have a unique
copy of these libraries, the JavaScript programmer can indicate a
particular file is a shared library through the use of a pragma, as
shown in the following example.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// factorial.js</span>
   <span class="operator">.</span>pragma library
   var factorialCount <span class="operator">=</span> <span class="number">0</span>;
   function factorial(a) {
   a <span class="operator">=</span> parseInt(a);
   <span class="comment">// factorial recursion</span>
   <span class="keyword">if</span> (a <span class="operator">&gt;</span> <span class="number">0</span>)
   <span class="keyword">return</span> a <span class="operator">*</span> factorial(a <span class="operator">-</span> <span class="number">1</span>);
   <span class="comment">// shared state</span>
   factorialCount <span class="operator">+</span><span class="operator">=</span> <span class="number">1</span>;
   <span class="comment">// recursion base-case.</span>
   <span class="keyword">return</span> <span class="number">1</span>;
   }
   function factorialCallCount() {
   <span class="keyword">return</span> factorialCount;
   }</pre>

.. raw:: html

   <p>

The pragma declaration must appear before any JavaScript code excluding
comments.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that multiple QML documents can import "factorial.js" and call the
factorial and factorialCallCount functions that it provides. The state
of the JavaScript import is shared across the QML documents which import
it, and thus the return value of the factorialCallCount function may be
non-zero when called within a QML document which never calls the
factorial function.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// Calculator.qml</span>
   import QtQuick 2.0
   import &quot;factorial.js&quot; as FactorialCalculator <span class="comment">// this JavaScript resource is only ever loaded once by the engine, even if multiple instances of Calculator.qml are created</span>
   <span class="type">Text</span> {
   <span class="name">width</span>: <span class="number">500</span>
   <span class="name">height</span>: <span class="number">100</span>
   property <span class="type">int</span> <span class="name">input</span>: <span class="number">17</span>
   <span class="name">text</span>: <span class="string">&quot;The factorial of &quot;</span> <span class="operator">+</span> <span class="name">input</span> <span class="operator">+</span> <span class="string">&quot; is: &quot;</span> <span class="operator">+</span> <span class="name">FactorialCalculator</span>.<span class="name">factorial</span>(<span class="name">input</span>)
   }</pre>

.. raw:: html

   <p>

As they are shared, .pragma library files cannot access QML component
instance objects or properties directly, although QML values can be
passed as function parameters.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-javascript-resources.html -->

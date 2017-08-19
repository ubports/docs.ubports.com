QtQml.qtqml-javascript-hostenvironment
======================================

.. raw:: html

   <p>

QML provides a JavaScript host environment tailored to writing QML
applications. This environment is different from the host environment
provided by a browser or a server-side JavaScript environment such as
Node.js. For example, QML does not provide a window object or DOM API as
commonly found in a browser environment.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="common-base">

Common Base

.. raw:: html

   </h2>

.. raw:: html

   <p>

Like a browser or server-side JavaScript environment, the QML runtime
implements the ECMAScript Language Specification standard. This provides
access to all of the built-in types and functions defined by the
standard, such as Object, Array, and Math. The QML runtime implements
the 5th edition of the standard, which is the same edition commonly
implemented by browsers.

.. raw:: html

   </p>

.. raw:: html

   <p>

The standard ECMAScript built-ins are not explicitly documented in the
QML documentation. For more information on their use, please refer to
the ECMA-262 5th edition standard or one of the many online JavaScript
reference and tutorial sites, such as the W3Schools JavaScript Reference
(JavaScript Objects Reference section). Many sites focus on JavaScript
in the browser, so in some cases you may need to double check the
specification to determine whether a given function or object is part of
standard ECMAScript or specific to the browser environment. In the case
of the W3Schools link above, the JavaScript Objects Reference section
generally covers the standard, while the Browser Objects Reference and
HTML DOM Objects Reference sections are browser specific (and thus not
applicable to QML).

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qml-global-object">

QML Global Object

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML JavaScript host environment implements a number of host objects
and functions, as detailed in the QML Global Object documentation.

.. raw:: html

   </p>

.. raw:: html

   <p>

These host objects and functions are always available, regardless of
whether any modules have been imported.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="javascript-objects-and-functions">

JavaScript Objects and Functions

.. raw:: html

   </h2>

.. raw:: html

   <p>

A list of the JavaScript objects, functions and properties supported by
the QML engine can be found in the List of JavaScript Objects and
Functions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that QML makes the following modifications to native objects:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

An arg() function is added to the String prototype.

.. raw:: html

   </li>

.. raw:: html

   <li>

Locale-aware coversion functions are added to the Date and Number
prototypes.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="javascript-environment-restrictions">

JavaScript Environment Restrictions

.. raw:: html

   </h2>

.. raw:: html

   <p>

QML implements the following restrictions for JavaScript code:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

JavaScript code cannot modify the global object.

.. raw:: html

   <p>

In QML, the global object is constant - existing properties cannot be
modified or deleted, and no new properties may be created.

.. raw:: html

   </p>

.. raw:: html

   <p>

Most JavaScript programs do not intentionally modify the global object.
However, JavaScript's automatic creation of undeclared variables is an
implicit modification of the global object, and is prohibited in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

Assuming that the a variable does not exist in the scope chain, the
following code is illegal in QML:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// Illegal modification of undeclared variable</span>
   a <span class="operator">=</span> <span class="number">1</span>;
   <span class="keyword">for</span> (var ii <span class="operator">=</span> <span class="number">1</span>; ii <span class="operator">&lt;</span> <span class="number">10</span>; <span class="operator">+</span><span class="operator">+</span>ii)
   a <span class="operator">=</span> a <span class="operator">*</span> ii;
   console<span class="operator">.</span>log(<span class="string">&quot;Result: &quot;</span> <span class="operator">+</span> a);</pre>

.. raw:: html

   <p>

It can be trivially modified to this legal code.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var a <span class="operator">=</span> <span class="number">1</span>;
   <span class="keyword">for</span> (var ii <span class="operator">=</span> <span class="number">1</span>; ii <span class="operator">&lt;</span> <span class="number">10</span>; <span class="operator">+</span><span class="operator">+</span>ii)
   a <span class="operator">=</span> a <span class="operator">*</span> ii;
   console<span class="operator">.</span>log(<span class="string">&quot;Result: &quot;</span> <span class="operator">+</span> a);</pre>

.. raw:: html

   <p>

Any attempt to modify the global object - either implicitly or
explicitly - will cause an exception. If uncaught, this will result in
an warning being printed, that includes the file and line number of the
offending code.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

Global code is run in a reduced scope.

.. raw:: html

   <p>

During startup, if a QML file includes an external JavaScript file with
"global" code, it is executed in a scope that contains only the external
file itself and the global object. That is, it will not have access to
the QML objects and properties it normally would.

.. raw:: html

   </p>

.. raw:: html

   <p>

Global code that only accesses script local variable is permitted. This
is an example of valid global code.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">var colors <span class="operator">=</span> <span class="operator">[</span> <span class="string">&quot;red&quot;</span><span class="operator">,</span> <span class="string">&quot;blue&quot;</span><span class="operator">,</span> <span class="string">&quot;green&quot;</span><span class="operator">,</span> <span class="string">&quot;orange&quot;</span><span class="operator">,</span> <span class="string">&quot;purple&quot;</span> <span class="operator">]</span>;</pre>

.. raw:: html

   <p>

Global code that accesses QML objects will not run correctly.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// Invalid global code - the &quot;rootObject&quot; variable is undefined</span>
   var initialPosition <span class="operator">=</span> { rootObject<span class="operator">.</span>x<span class="operator">,</span> rootObject<span class="operator">.</span>y }</pre>

.. raw:: html

   <p>

This restriction exists as the QML environment is not yet fully
established. To run code after the environment setup has completed, see
JavaScript in Application Startup Code.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

The value of this is currently undefined in QML in the majority of
contexts.

.. raw:: html

   <p>

The this keyword is supported when binding properties from JavaScript.
In all other situations, the value of this is undefined in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

To refer to a specific object, provide an id. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="keyword">function</span> <span class="name">mouseAreaClicked</span>(<span class="name">area</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked in area at: &quot;</span> <span class="operator">+</span> <span class="name">area</span>.<span class="name">x</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">area</span>.<span class="name">y</span>);
   }
   <span class="comment">// This will not work because this is undefined</span>
   <span class="type">MouseArea</span> {
   <span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">200</span>
   <span class="name">onClicked</span>: <span class="name">mouseAreaClicked</span>(this)
   }
   <span class="comment">// This will pass area2 to the function</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">area2</span>
   <span class="name">y</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">200</span>
   <span class="name">onClicked</span>: <span class="name">mouseAreaClicked</span>(<span class="name">area2</span>)
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@qtqml-javascript-hostenvironment.html -->

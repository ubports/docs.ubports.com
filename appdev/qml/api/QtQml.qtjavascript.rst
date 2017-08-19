QtQml.qtjavascript
==================

.. raw:: html

   <p>

Qt provides support for application scripting with JavaScript. The
following guides and references cover aspects of programming with
JavaScript and Qt.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="scripting-classes">

Scripting Classes

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following classes add scripting capabilities to Qt applications.

.. raw:: html

   </p>

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QJSEngine

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Environment for evaluating JavaScript code

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="even topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QJSValue

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Acts as a container for Qt/JavaScript data types

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

QJSValueIterator

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Java-style iterator for QJSValue

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h2 id="basic-usage">

Basic Usage

.. raw:: html

   </h2>

.. raw:: html

   <p>

To evaluate script code, you create a QJSEngine and call its evaluate()
function, passing the script code (text) to evaluate as argument.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QJSEngine</span> engine;
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;the magic number is:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> engine<span class="operator">.</span>evaluate(<span class="string">&quot;1 + 2&quot;</span>)<span class="operator">.</span>toNumber();</pre>

.. raw:: html

   <p>

The return value will be the result of the evaluation (represented as a
QJSValue object); this can be converted to standard C++ and Qt types.

.. raw:: html

   </p>

.. raw:: html

   <p>

Custom properties can be made available to scripts by registering them
with the script engine. This is most easily done by setting properties
of the script engine's Global Object:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">engine<span class="operator">.</span>globalObject()<span class="operator">.</span>setProperty(<span class="string">&quot;foo&quot;</span><span class="operator">,</span> <span class="number">123</span>);
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;foo times two is:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> engine<span class="operator">.</span>evaluate(<span class="string">&quot;foo * 2&quot;</span>)<span class="operator">.</span>toNumber();</pre>

.. raw:: html

   <p>

This places the properties in the script environment, thus making them
available to script code.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="making-a-qobject-available-to-the-script-engine">

Making a QObject Available to the Script Engine

.. raw:: html

   </h2>

.. raw:: html

   <p>

Any QObject-based instance can be made available for use with scripts.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a QObject is passed to the QJSEngine::newQObject() function, a Qt
Script wrapper object is created that can be used to make the QObject's
signals, slots, properties, and child objects available to scripts.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here's an example of making an instance of a QObject subclass available
to script code under the name "myObject":

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QJSEngine</span> engine;
   <span class="type">QObject</span> <span class="operator">*</span>someObject <span class="operator">=</span> <span class="keyword">new</span> MyObject;
   <span class="type">QJSValue</span> objectValue <span class="operator">=</span> engine<span class="operator">.</span>newQObject(someObject);
   engine<span class="operator">.</span>globalObject()<span class="operator">.</span>setProperty(<span class="string">&quot;myObject&quot;</span><span class="operator">,</span> objectValue);</pre>

.. raw:: html

   <p>

This will create a global variable called myObject in the script
environment. The variable serves as a proxy to the underlying C++
object. Note that the name of the script variable can be anything; i.e.,
it is not dependent upon QObject::objectName().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtjavascript.html -->

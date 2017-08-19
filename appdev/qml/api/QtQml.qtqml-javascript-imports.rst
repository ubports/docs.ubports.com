QtQml.qtqml-javascript-imports
==============================

.. raw:: html

   <p>

JavaScript resources may be imported by QML documents and other
JavaScript resources. JavaScript resources may be imported via either
relative or absolute URLs. In the case of a relative URL, the location
is resolved relative to the location of the QML document or JavaScript
Resource that contains the import. If the script file is not accessible,
an error will occur. If the JavaScript needs to be fetched from a
network resource, the component's status is set to "Loading" until the
script has been downloaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

JavaScript resources may also import QML modules and other JavaScript
resources. The syntax of an import statement within a JavaScript
resource differs slightly from an import statement within a QML
document, which is documented thoroughly below.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="importing-a-javascript-resource-from-a-qml-document">

Importing a JavaScript Resource from a QML Document

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QML document may import a JavaScript resource with the following
syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="string">&quot;ResourceURL&quot;</span> as Qualifier</pre>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="string">&quot;jsfile.js&quot;</span> as Logic</pre>

.. raw:: html

   <p>

Imported JavaScript resources are always qualified using the "as"
keyword. The qualifier for JavaScript resources must be unique, so there
is always a one-to-one mapping between qualifiers and JavaScript files.
(This also means qualifiers cannot be named the same as built-in
JavaScript objects such as Date and Math).

.. raw:: html

   </p>

.. raw:: html

   <p>

The functions defined in an imported JavaScript file are available to
objects defined in the importing QML document, via the
"Qualifier.functionName(params)" syntax. Functions in JavaScript
resources may take parameters whose type can be any of the supported QML
basic types or object types, as well as normal JavaScript types. The
normal data type conversion rules will apply to parameters and return
values when calling such functions from QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="imports-within-javascript-resources">

Imports Within JavaScript Resources

.. raw:: html

   </h2>

.. raw:: html

   <p>

In QtQuick 2.0, support has been added to allow JavaScript resources to
import other JavaScript resources and also QML type namespaces using a
variation of the standard QML import syntax (where all of the previously
described rules and qualifications apply).

.. raw:: html

   </p>

.. raw:: html

   <p>

Due to the ability of a JavaScript resource to import another script or
QML module in this fashion in QtQuick 2.0, some extra semantics are
defined:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a script with imports will not inherit imports from the QML document
which imported it (so accessing Component.errorString will fail, for
example)

.. raw:: html

   </li>

.. raw:: html

   <li>

a script without imports will inherit imports from the QML document
which imported it (so accessing Component.errorString will succeed, for
example)

.. raw:: html

   </li>

.. raw:: html

   <li>

a shared script (i.e., defined as .pragma library) does not inherit
imports from any QML document even if it imports no other scripts or
modules

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The first semantic is conceptually correct, given that a particular
script might be imported by any number of QML files. The second semantic
is retained for the purposes of backwards-compatibility. The third
semantic remains unchanged from the current semantics for shared
scripts, but is clarified here in respect to the newly possible case
(where the script imports other scripts or modules).

.. raw:: html

   </p>

.. raw:: html

   <h3>

Importing a JavaScript Resource from Another JavaScript Resource

.. raw:: html

   </h3>

.. raw:: html

   <p>

A JavaScript resource may import another in the following fashion:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">.</span>import <span class="string">&quot;filename.js&quot;</span> as Qualifier</pre>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">.</span>import <span class="string">&quot;factorial.js&quot;</span> as MathFunctions</pre>

.. raw:: html

   <h3>

Importing a QML Module from a JavaScript Resource

.. raw:: html

   </h3>

.. raw:: html

   <p>

A JavaScript resource may import a QML module in the following fashion:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">.</span>import TypeNamespace MajorVersion<span class="operator">.</span>MinorVersion as Qualifier</pre>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">.</span>import <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>test <span class="number">1.0</span> as JsQtTest</pre>

.. raw:: html

   <p>

In particular, this may be useful in order to access functionality
provided via a singleton type; see qmlRegisterSingletonType() for more
information.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The .import syntax doesn't work for scripts used in the
WorkerScript

.. raw:: html

   </p>

.. raw:: html

   <h2 id="including-a-javascript-resource-from-another-javascript-resource">

Including a JavaScript Resource from Another JavaScript Resource

.. raw:: html

   </h2>

.. raw:: html

   <p>

When a JavaScript file is imported, it must be imported with a
qualifier. The functions in that file are then accessible from the
importing script via the qualifier (that is, as
Qualifier.functionName(params)). Sometimes it is desirable to have the
functions made available in the importing context without needing to
qualify them, and in this circumstance the Qt.include() function may be
used to include one JavaScript file from another. This copies all
functions from the other file into the current file's namespace, but
ignores all pragmas and imports defined in that file.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the QML code below left calls showCalculations() in
script.js, which in turn can call factorial() in factorial.js, as it has
included factorial.js using Qt.include().

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td rowspan="2">

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import &quot;script.js&quot; as MyScript
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">MyScript</span>.<span class="name">showCalculations</span>(<span class="number">10</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Call factorial() from QML:&quot;</span>,
   <span class="name">MyScript</span>.<span class="name">factorial</span>(<span class="number">10</span>))
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="js"><span class="comment">// script.js</span>
   <span class="name">Qt</span>.<span class="name">include</span>(<span class="string">&quot;factorial.js&quot;</span>)
   <span class="keyword">function</span> <span class="name">showCalculations</span>(<span class="name">value</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Call factorial() from script.js:&quot;</span>,
   <span class="name">factorial</span>(<span class="name">value</span>));
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="js"><span class="comment">// factorial.js</span>
   <span class="keyword">function</span> <span class="name">factorial</span>(<span class="name">a</span>) {
   <span class="name">a</span> <span class="operator">=</span> <span class="name">parseInt</span>(<span class="name">a</span>);
   <span class="keyword">if</span> (<span class="name">a</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
   <span class="keyword">return</span> <span class="number">1</span>;
   <span class="keyword">else</span>
   <span class="keyword">return</span> <span class="name">a</span> <span class="operator">*</span> <span class="name">factorial</span>(<span class="name">a</span> <span class="operator">-</span> <span class="number">1</span>);
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Notice that calling Qt.include() copies all functions from factorial.js
into the MyScript namespace, which means the QML component can also
access factorial() directly as MyScript.factorial().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-javascript-imports.html -->

QtQml.qtqml-syntax-directoryimports
===================================

.. raw:: html

   <p>

A local directory of QML files can be imported without any additional
setup or configuration. A remote directory of QML files can also be
imported, but requires a directory listing qmldir file to exist. A local
directory may optionally contain a directory listing qmldir file in
order to define the type names which should be provided to clients which
import the directory, and to specify JavaScript resources which should
be made available to importers.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="local-directory-imports">

Local Directory Imports

.. raw:: html

   </h2>

.. raw:: html

   <p>

Any QML file on the local file system can import a local directory as
using an import statement that refers to the directory's absolute or
relative file system path, enabling the file to use the object types
defined within that directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the local directory contains a directory listing qmldir file, the
types will be made available with the type names specified in the qmldir
file; otherwise, they will be made available with type names derived
from the filenames of the QML documents. Only filenames beginning with
an uppercase letter and ending with ".qml" will be exposed as types if
no qmldir file is specified in the directory.

.. raw:: html

   </p>

.. raw:: html

   <h3>

An Example

.. raw:: html

   </h3>

.. raw:: html

   <p>

Consider the following QML project directory structure. Under the top
level directory myapp, there are a set of common UI components in a
sub-directory named mycomponents, and the main application code in a
sub-directory named main, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">myapp
   <span class="operator">|</span><span class="operator">-</span> mycomponents
   <span class="operator">|</span><span class="operator">-</span> CheckBox<span class="operator">.</span>qml
   <span class="operator">|</span><span class="operator">-</span> DialogBox<span class="operator">.</span>qml
   <span class="operator">|</span><span class="operator">-</span> Slider<span class="operator">.</span>qml
   <span class="operator">|</span><span class="operator">-</span> main
   <span class="operator">|</span><span class="operator">-</span> application<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

The main/application.qml file can import the mycomponents directory
using the relative path to that directory, allowing it to use the QML
object types defined within that directory:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;../mycomponents&quot;
   <span class="type">DialogBox</span> {
   <span class="type">CheckBox</span> {
   <span class="comment">// ...</span>
   }
   <span class="type">Slider</span> {
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <p>

The directory may be imported into a qualified local namespace, in which
case uses of any types provided in the directory must be qualified:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;../mycomponents&quot; as MyComponents
   <span class="type">MyComponents</span>.DialogBox {
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <p>

The ability to import a local directory is convenient for cases such as
in-application component sets and application prototyping, although any
code that imports such modules must update their relevant import
statements if the module directory moves to another location. This can
be avoided if QML modules are used instead, as an installed module is
imported with a unique identifier string rather than a file system path.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="remotely-located-directories">

Remotely Located Directories

.. raw:: html

   </h2>

.. raw:: html

   <p>

A directory of QML files can also be imported from a remote location if
the directory contains a directory listing qmldir file.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if the myapp directory in the previous example was hosted
at "http://www.my-example-server.com", and the mycomponents directory
contained a qmldir file defined as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">CheckBox CheckBox<span class="operator">.</span>qml
   DialogBox DialogBox<span class="operator">.</span>qml
   Slider Slider<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

Then, the directory could be imported using the URL to the remote
mycomponents directory:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import &quot;http://www.my-example-server.com/myapp/mycomponents&quot;
   <span class="type">DialogBox</span> {
   <span class="type">CheckBox</span> {
   <span class="comment">// ...</span>
   }
   <span class="type">Slider</span> {
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <p>

Note that when a file imports a directory over a network, it can only
access QML and JavaScript files specified in the qmldir file located in
the directory.

.. raw:: html

   </p>

.. raw:: html

   <p>

Warning: When importing directories from a remote server, developers
should always be careful to only load directories from trusted sources
to avoid loading malicious code.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="directory-listing-qmldir-files">

Directory Listing qmldir Files

.. raw:: html

   </h2>

.. raw:: html

   <p>

A directory listing qmldir file distinctly different from a module
definition qmldir file. A directory listing qmldir file allows a group
of QML documents to be quickly and easily shared, but it does not define
a type namespace into which the QML object types defined by the
documents are registered, nor does it support versioning of those QML
object types.

.. raw:: html

   </p>

.. raw:: html

   <p>

The syntax of a directory listing qmldir file is as follows:

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

Command

.. raw:: html

   </th>

.. raw:: html

   <th>

Syntax

.. raw:: html

   </th>

.. raw:: html

   <th>

Description

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

Object Type Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

<TypeName> <FileName>

.. raw:: html

   </td>

.. raw:: html

   <td>

An object type declaration allows a QML document to be exposed with the
given <TypeName>.

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">RoundedButton RoundedBtn<span class="operator">.</span>qml</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Internal Object Type Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

internal <TypeName> <FileName>

.. raw:: html

   </td>

.. raw:: html

   <td>

An internal object type declaration allows a QML document to be
registered as a type which becomes available only to the other QML
documents contained in the directory import. The internal type will not
be made available to clients who import the directory.

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">internal HighlightedButton HighlightedBtn<span class="operator">.</span>qml</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

JavaScript Resource Declaration

.. raw:: html

   </td>

.. raw:: html

   <td>

<Identifier> <FileName>

.. raw:: html

   </td>

.. raw:: html

   <td>

A JavaScript resource declaration allows a JavaScript file to be exposed
via the given identifier.

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">MathFunctions mathfuncs<span class="operator">.</span>js</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

A local file system directory may optionally include a qmldir file. This
allows the engine to only expose certain QML types to clients who import
the directory. Additionally, JavaScript resources in the directory are
not exposed to clients unless they are declared in a qmldir file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-syntax-directoryimports.html -->

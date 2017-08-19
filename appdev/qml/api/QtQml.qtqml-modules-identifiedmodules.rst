QtQml.qtqml-modules-identifiedmodules
=====================================

.. raw:: html

   <p>

Identified modules are modules that are installed and identifiable to
the QML engine by a URI in the form of a dotted identifier string, which
should be specified by the module in its qmldir file. This enables such
modules to be imported with a unique identifier that remains the same no
matter where the module is located on the local file system.

.. raw:: html

   </p>

.. raw:: html

   <p>

When importing an identified module, an unquoted identifier is used,
with a mandatory version number:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import com.nokia.qml.mymodule 1.0</pre>

.. raw:: html

   <p>

Identified modules must be installed into the import path in order to be
found by the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="locally-installed-identified-modules">

Locally Installed Identified Modules

.. raw:: html

   </h2>

.. raw:: html

   <p>

A directory of QML and/or C++ files can be shared as an identified
module if it contains a qmldir file with the module metadata and is
installed into the QML import path. Any QML file on the local file
system can import this directory as a module by using an import
statement that refers to the module's URI, enabling the file to use the
QML object types and JavaScript resources defined by the module.

.. raw:: html

   </p>

.. raw:: html

   <p>

The module's qmldir file must reside in a directory structure within the
import path that reflects the URI dotted identifier string, where each
dot (".") in the identifier reflects a sub-level in the directory tree.
For example, the qmldir file of the module com.mycompany.mymodule must
be located in the sub-path com/mycompany/mymodule/qmldir somewhere in
the import path.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is possible to store different versions of a module in subdirectories
of its own. For example, a version 2.1 of a module could be located
under com/mycompany/mymodule.2/qmldir or
com/mycompany/mymodule.2.1/qmldir. The engine will automatically load
the module which matches best.

.. raw:: html

   </p>

.. raw:: html

   <p>

Alternatively, versioning for different types can be defined within a
qmldir file itself, however this can make updating such a module more
difficult (as a qmldir file merge must take place as part of the update
procedure).

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

To make the mycomponents directory available as an identified module,
the directory must include a qmldir file that defines the module
identifier, and describes the object types made available by the module.
For example, to make the CheckBox, DialogBox and Slider types available
for version 1.0 of the module, the qmldir file would contain the
following:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module myapp<span class="operator">.</span>mycomponents
   CheckBox <span class="number">1.0</span> CheckBox<span class="operator">.</span>qml
   DialogBox <span class="number">1.0</span> DialogBox<span class="operator">.</span>qml
   Slider <span class="number">1.0</span> Slider<span class="operator">.</span>qml</pre>

.. raw:: html

   <p>

Additionally, the location of the qmldir file in the import path must
match the module's dotted identifier string. So, say the top level myapp
directory is located in C::raw-latex:`\qml`:raw-latex:`\projects`, and
say the module should be identified as "myapp.mycomponents". In this
case:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

The path C::raw-latex:`\qml`:raw-latex:`\projects` should be added to
the import path

.. raw:: html

   </li>

.. raw:: html

   <li>

The qmldir file should be located under
C::raw-latex:`\qml`:raw-latex:`\projects`:raw-latex:`\myapp`:raw-latex:`\mycomponents`:raw-latex:`\qmldir`

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Once this is done, a QML file located anywhere on the local filesystem
can import the module by referring to its URI and the appropriate
version:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import myapp.mycomponents 1.0
   <span class="type">DialogBox</span> {
   <span class="type">CheckBox</span> {
   <span class="comment">// ...</span>
   }
   <span class="type">Slider</span> {
   <span class="comment">// ...</span>
   }
   }</pre>

.. raw:: html

   <h2 id="remotely-installed-identified-modules">

Remotely Installed Identified Modules

.. raw:: html

   </h2>

.. raw:: html

   <p>

Identified modules are also accessible as a network resource. In the
previous example, if the C::raw-latex:`\qml`:raw-latex:`\projects`
directory was hosted as http://www.some-server.com/qml/projects and this
URL was added to the QML import path, the module could be imported in
exactly the same way.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that when a file imports a module over a network, it can only
access QML and JavaScript resources provided by the module; it cannot
access any types defined by C++ plugins in the module.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="semantics-of-identified-modules">

Semantics of Identified Modules

.. raw:: html

   </h2>

.. raw:: html

   <p>

An identified module is provided with the following guarantees by the
QML engine:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

other modules are unable to modify or override types in the module's
namespace

.. raw:: html

   </li>

.. raw:: html

   <li>

other modules are unable to register new types into the module's
namespace

.. raw:: html

   </li>

.. raw:: html

   <li>

usage of type names by clients will resolve deterministically to a given
type definition depending on the versioning specified and the import
order

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

This ensures that clients which use the module can be certain that the
object types defined in the module will behave as the module author
documented.

.. raw:: html

   </p>

.. raw:: html

   <p>

An identified module has several restrictions upon it:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

an identified module must be installed into the QML import path

.. raw:: html

   </li>

.. raw:: html

   <li>

the module identifier specified in the module identifier directive must
match the install path of the module (relative to the QML import path,
where directory separators are replaced with period characters)

.. raw:: html

   </li>

.. raw:: html

   <li>

the module must register its types into the module identifier type
namespace

.. raw:: html

   </li>

.. raw:: html

   <li>

the module may not register types into any other module's namespace

.. raw:: html

   </li>

.. raw:: html

   <li>

clients must specify a version when importing the module

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, if an identified module is installed into
\ :math:`QML2_IMPORT_PATH/ExampleModule</code>, the module identifier directive must be:</p> <pre class="cpp">module ExampleModule</pre> <p>If the strict module is installed into <code>`\ QML2\_IMPORT\_PATH/com/example/CustomUi,
the module identifier directive must be:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">module com<span class="operator">.</span>example<span class="operator">.</span>CustomUi</pre>

.. raw:: html

   <p>

Clients will then be able to import the above module with the following
import statement (assuming that the module registers types into version
1.0 of its namespace):

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import com.example.CustomUi 1.0</pre>

.. raw:: html

   <!-- @@@qtqml-modules-identifiedmodules.html -->

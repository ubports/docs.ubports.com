QtQml.qtqml-documents-definetypes
=================================

.. raw:: html

   <p>

One of the core features of QML is that it enables QML object types to
be easily defined in a lightweight manner through QML documents to suit
the needs of individual QML applications. The standard Qt Quick module
provides various types like Rectangle, Text and Image for building a QML
application; beyond these, you can easily define your own QML types to
be reused within your application. This ability to create your own types
forms the building blocks of any QML application.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="defining-an-object-type-with-a-qml-file">

Defining an Object Type with a QML File

.. raw:: html

   </h2>

.. raw:: html

   <p>

To create an object type, a QML document should be placed into a text
file named as <TypeName>.qml where <TypeName> is the desired name of the
type, which must be comprised of alphanumeric characters or underscores
and beginning with an uppercase letter. This document is then
automatically recognized by the engine as a definition of a QML type.
Additionally, a type defined in this manner is automatically made
available to other QML files within the same directory as the engine
searches within the immediate directory when resolving QML type names.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a document that declares a Rectangle with a child
MouseArea. The document has been saved to file named SquareButton.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// SquareButton.qml</span>
   import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Button clicked!&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

Since the file is named SquareButton.qml, this can now be used as a type
named SquareButton by any other QML file within the same directory. For
example, if there was a myapplication.qml file in the same directory, it
could refer to the SquareButton type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// myapplication.qml</span>
   import QtQuick 2.0
   <span class="type">SquareButton</span> {}</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

This creates a 100 x 100 red Rectangle with an inner MouseArea, as
defined in SquareButton.qml. When this myapplication.qml document is
loaded by the engine, it loads the SquareButton.qml document as a
component and instantiates it to create a SquareButton object.

.. raw:: html

   </p>

.. raw:: html

   <p>

The SquareButton type encapsulates the tree of QML objects declared in
SquareButton.qml. When the QML engine instantiates a SquareButton object
from this type, it is instantiating an object from the Rectangle tree
declared in SquareButton.qml.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: the letter case of the file name is significant on some (notably
UNIX) filesystems. It is recommended the file name case matches the case
of the desired QML type name exactly - for example, Box.qml and not
BoX.qml - regardless of the platform to which the QML type will be
deployed.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Importing Types Defined Outside the Current Directory

.. raw:: html

   </h3>

.. raw:: html

   <p>

If SquareButton.qml was not in the same directory as myapplication.qml,
the SquareButton type would need to be specifically made available
through an import statement in myapplication.qml. It could be imported
from a relative path on the file system, or as an installed module; see
module for more details.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="accessible-attributes-of-custom-types">

Accessible Attributes of Custom Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

The root object definition in a .qml file defines the attributes that
are available for a QML type. All properties, signals and methods that
belong to this root object - whether they are custom declared, or come
from the QML type of the root object - are externally accessible and can
be read and modified for objects of this type.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the root object type in the SquareButton.qml file above is
Rectangle. This means any properties defined by the Rectangle type can
be modified for a SquareButton object. The code below defines three
SquareButton objects with customized values for some of the properties
of the root Rectangle object of the SquareButton type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// application.qml</span>
   import QtQuick 2.0
   <span class="type">Column</span> {
   <span class="type">SquareButton</span> { <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
   <span class="type">SquareButton</span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
   <span class="type">SquareButton</span> { <span class="name">radius</span>: <span class="number">10</span> }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The attributes that are accessible to objects of the custom QML type
include any custom properties, methods and signals that have
additionally been defined for an object. For example, suppose the
Rectangle in SquareButton.qml had been defined as follows, with
additional properties, methods and signals:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// SquareButton.qml</span>
   import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">root</span>
   property <span class="type">bool</span> <span class="name">pressed</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
   signal <span class="type">buttonClicked</span>(real xPos, real yPos)
   <span class="keyword">function</span> <span class="name">randomizeColor</span>() {
   <span class="name">root</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>)
   }
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">buttonClicked</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   }</pre>

.. raw:: html

   <p>

Any SquareButton object could make use of the pressed property,
buttonClicked signal and randomizeColor() method that have been added to
the root Rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// application.qml</span>
   import QtQuick 2.0
   <span class="type">SquareButton</span> {
   <span class="name">id</span>: <span class="name">squareButton</span>
   <span class="name">onButtonClicked</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked&quot;</span>, <span class="name">xPos</span>, <span class="name">yPos</span>)
   <span class="name">randomizeColor</span>()
   }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">squareButton</span>.<span class="name">pressed</span> ? <span class="string">&quot;Down&quot;</span> : <span class="string">&quot;Up&quot;</span> }
   }</pre>

.. raw:: html

   <p>

Note that any of the id values defined in SquareButton.qml are not
accessible to SquareButton objects, as id values are only accessible
from within the component scope in which a component is declared. The
SquareButton object definition above cannot refer to mouseArea in order
to refer to the MouseArea child, and if it had an id of root rather than
squareButton, this would not conflict with the id of the same value for
the root object defined in SquareButton.qml as the two would be declared
within separate scopes.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-documents-definetypes.html -->

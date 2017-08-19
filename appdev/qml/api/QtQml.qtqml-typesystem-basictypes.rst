QtQml.qtqml-typesystem-basictypes
=================================

.. raw:: html

   <p>

QML supports a number of basic types.

.. raw:: html

   </p>

.. raw:: html

   <p>

A basic type is one that refers to a simple value, such as an int or a
string. This contrasts with a QML Object Types, which refers to an
object with properties, signals, methods and so on. Unlike an object
type, a basic type cannot be used to declare QML objects: it is not
possible, for example, to declare an int{} object or a size{} object.

.. raw:: html

   </p>

.. raw:: html

   <p>

Basic types can be used to refer to:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A single value (e.g. int refers to a single number, var can refer to a
single list of items)

.. raw:: html

   </li>

.. raw:: html

   <li>

A value that contains a simple set of property-value pairs (e.g. size
refers to a value with width and height attributes)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="supported-basic-types">

Supported Basic Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

Some basic types are supported by the engine by default and do not
require an import statement to be used, while others do require the
client to import the module which provides them. All of the basic types
listed below may be used as a property type in a QML document, with the
following exceptions:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

list must be used in conjunction with a QML object type

.. raw:: html

   </li>

.. raw:: html

   <li>

enumeration cannot be used directly as the enumeration must be defined
by a registered QML object type

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h3>

Basic Types Provided By The QML Language

.. raw:: html

   </h3>

.. raw:: html

   <p>

The basic types supported natively in the QML language are listed below:

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

bool

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Binary true/false value

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

double

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Number with a decimal point, stored in double precision

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

enumeration

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Named enumeration value

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

int

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Whole number, e.g. 0, 10, or -20

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

list

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

List of QML objects

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

real

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Number with a decimal point

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

string

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Free form text string

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

url

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Resource locator

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

var

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Generic property type

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   </p>

.. raw:: html

   <h3>

Basic Types Provided By QML Modules

.. raw:: html

   </h3>

.. raw:: html

   <p>

QML modules may extend the QML language with more basic types. For
example, the basic types provided by the QtQuick module are listed
below:

.. raw:: html

   <table class="annotated">

.. raw:: html

   <tr class="odd topAlign">

.. raw:: html

   <td class="tblName">

.. raw:: html

   <p>

date

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Date value

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

point

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Value with x and y attributes

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

rect

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Value with x, y, width and height attributes

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

size

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   <td class="tblDescr">

.. raw:: html

   <p>

Value with width and height attributes

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt global object provides useful functions for manipulating values
of basic types.

.. raw:: html

   </p>

.. raw:: html

   <p>

Currently only QML modules which are provided by Qt may provide their
own basic types, however this may change in future releases of Qt QML.
In order to use types provided by a particular QML module, clients must
import that module in their QML documents.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="property-change-behavior-for-basic-types">

Property Change Behavior for Basic Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

Some basic types have properties: for example, the font type has
pixelSize, family and b properties. Unlike properties of object types,
properties of basic types do not provide their own property change
signals. It is only possible to create a property change signal handler
for the basic type property itself:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Text {
   <span class="comment">// invalid!</span>
   onFont<span class="operator">.</span>pixelSizeChanged: doSomething()
   <span class="comment">// also invalid!</span>
   font {
   onPixelSizeChanged: doSomething()
   }
   <span class="comment">// but this is ok</span>
   onFontChanged: doSomething()
   }</pre>

.. raw:: html

   <p>

Be aware, however, that a property change signal for a basic type is
emitted whenever any of its attributes have changed, as well as when the
property itself changes. Take the following code, for example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> {
   <span class="name">onFontChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;font changed&quot;</span>)
   <span class="type">Text</span> { <span class="name">id</span>: <span class="name">otherText</span> }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="comment">// changing any of the font attributes, or reassigning the property</span>
   <span class="comment">// to a different font value, will invoke the onFontChanged handler</span>
   <span class="name">Keys</span>.onDigit1Pressed: <span class="name">font</span>.<span class="name">pixelSize</span> <span class="operator">+=</span> <span class="number">1</span>
   <span class="name">Keys</span>.onDigit2Pressed: <span class="name">font</span>.<span class="name">b</span> <span class="operator">=</span> !<span class="name">font</span>.<span class="name">b</span>
   <span class="name">Keys</span>.onDigit3Pressed: <span class="name">font</span> <span class="operator">=</span> <span class="name">otherText</span>.<span class="name">font</span>
   }</pre>

.. raw:: html

   <p>

In contrast, properties of an object type emit their own property change
signals, and a property change signal handler for an object-type
property is only invoked when the property is reassigned to a different
object value.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also The QML Type System.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-typesystem-basictypes.html -->

QtQml.qtqml-cppintegration-data
===============================

.. raw:: html

   <p>

When data values are exchanged between QML and C++, they are converted
by the QML engine to have the correct data types as appropriate for use
in QML or C++. This requires the exchanged data to be of a type that is
recognizable by the engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML engine provides built-in support for a large number of Qt C++
data types. Additionally, custom C++ types may be registered with the
QML type system to make them available to the engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

This page discusses the data types supported by the QML engine and how
they are converted between QML and C++.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="data-ownership">

Data Ownership

.. raw:: html

   </h2>

.. raw:: html

   <p>

When data is transferred from C++ to QML, the ownership of the data
always remains with C++. The exception to this rule is when a QObject is
returned from an explicit C++ method call: in this case, the QML engine
assumes ownership of the object, unless the ownership of the object has
explicitly been set to remain with C++ by invoking
QQmlEngine::setObjectOwnership() with QQmlEngine::CppOwnership
specified.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, the QML engine respects the normal QObject parent
ownership semantics of Qt C++ objects, and will not ever take ownership
of a QObject instance which already has a parent.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="basic-qt-data-types">

Basic Qt Data Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

By default, QML recognizes the following Qt data types, which are
automatically converted to a corresponding QML basic type when passed
from C++ to QML and vice-versa:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Qt Type

.. raw:: html

   </td>

.. raw:: html

   <td>

QML Basic Type

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

bool

.. raw:: html

   </td>

.. raw:: html

   <td>

bool

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

unsigned int, int

.. raw:: html

   </td>

.. raw:: html

   <td>

int

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

double

.. raw:: html

   </td>

.. raw:: html

   <td>

double

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

float, qreal

.. raw:: html

   </td>

.. raw:: html

   <td>

real

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QString

.. raw:: html

   </td>

.. raw:: html

   <td>

string

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QUrl

.. raw:: html

   </td>

.. raw:: html

   <td>

url

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QColor

.. raw:: html

   </td>

.. raw:: html

   <td>

color

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QFont

.. raw:: html

   </td>

.. raw:: html

   <td>

font

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QDate

.. raw:: html

   </td>

.. raw:: html

   <td>

date

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QPoint, QPointF

.. raw:: html

   </td>

.. raw:: html

   <td>

point

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QSize, QSizeF

.. raw:: html

   </td>

.. raw:: html

   <td>

size

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QRect, QRectF

.. raw:: html

   </td>

.. raw:: html

   <td>

rect

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QMatrix4x4

.. raw:: html

   </td>

.. raw:: html

   <td>

matrix4x4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QQuaternion

.. raw:: html

   </td>

.. raw:: html

   <td>

quaternion

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QVector2D, QVector3D, QVector4D

.. raw:: html

   </td>

.. raw:: html

   <td>

vector2d, vector3d, vector4d

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Enums declared with Q\_ENUMS()

.. raw:: html

   </td>

.. raw:: html

   <td>

enumeration

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Note: Classes provided by the Qt GUI module, such as QColor, QFont,
QQuaternion and QMatrix4x4, are only available from QML when the Qt
Quick module is included.

.. raw:: html

   </p>

.. raw:: html

   <p>

As a convenience, many of these types can be specified in QML by string
values, or by a related method provided by the QtQml::Qt object. For
example, the Image::sourceSize property is of type size (which
automatically translates to the QSize type) and can be specified by a
string value formatted as "widthxheight", or by the Qt.size() function:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   <span class="type">Image</span> { <span class="name">sourceSize</span>: <span class="string">&quot;100x200&quot;</span> }
   <span class="type">Image</span> { <span class="name">sourceSize</span>: <span class="name">Qt</span>.<span class="name">size</span>(<span class="number">100</span>, <span class="number">200</span>) }
   }</pre>

.. raw:: html

   <p>

See documentation for each individual type under QML Basic Types for
more information.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="qobject-derived-types">

QObject-derived Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

Any QObject-derived class may be used as a type for the exchange of data
between QML and C++, providing the class has been registered with the
QML type system.

.. raw:: html

   </p>

.. raw:: html

   <p>

The engine allows the registration of both instantiable and
non-instantiable types. Once a class is registered as a QML type, it can
be used as a data type for exchanging data between QML and C++. See
Registering C++ types with the QML type system for further details on
type registration.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="conversion-between-qt-and-javascript-types">

Conversion Between Qt and JavaScript Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

The QML engine has built-in support for converting a number of Qt types
to related JavaScript types, and vice-versa, when transferring data
between QML and C++. This makes it possible to use these types and
receive them in C++ or JavaScript without needing to implement custom
types that provide access to the data values and their attributes.

.. raw:: html

   </p>

.. raw:: html

   <p>

(Note that the JavaScript environment in QML modifies native JavaScript
object prototypes, including those of String, Date and Number, to
provide additional features. See the JavaScript Host Environment for
further details.)

.. raw:: html

   </p>

.. raw:: html

   <h3>

QVariantList and QVariantMap to JavaScript Array and Object

.. raw:: html

   </h3>

.. raw:: html

   <p>

The QML engine provides automatic type conversion between QVariantList
and JavaScript arrays, and between QVariantMap and JavaScript objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the function defined in QML below left expects two
arguments, an array and an object, and prints their contents using the
standard JavaScript syntax for array and object item access. The C++
code below right calls this function, passing a QVariantList and a
QVariantMap, which are automatically converted to JavaScript array and
object values, repectively:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// MyItem.qml</span>
   <span class="type">Item</span> {
   <span class="keyword">function</span> <span class="name">readValues</span>(<span class="name">anArray</span>, anObject) {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">anArray</span>.<span class="name">length</span>; i++)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Array item:&quot;</span>, <span class="name">anArray</span>[<span class="name">i</span>])
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">prop</span> in <span class="name">anObject</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Object item:&quot;</span>, <span class="name">prop</span>, <span class="string">&quot;=&quot;</span>, <span class="name">anObject</span>[<span class="name">prop</span>])
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="comment">// C++</span>
   <span class="type">QQuickView</span> view(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
   <span class="type">QVariantList</span> list;
   list <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="number">10</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>green) <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;bottles&quot;</span>;
   <span class="type">QVariantMap</span> map;
   map<span class="operator">.</span>insert(<span class="string">&quot;language&quot;</span><span class="operator">,</span> <span class="string">&quot;QML&quot;</span>);
   map<span class="operator">.</span>insert(<span class="string">&quot;released&quot;</span><span class="operator">,</span> <span class="type">QDate</span>(<span class="number">2010</span><span class="operator">,</span> <span class="number">9</span><span class="operator">,</span> <span class="number">21</span>));
   <span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(view<span class="operator">.</span>rootObject()<span class="operator">,</span> <span class="string">&quot;readValues&quot;</span><span class="operator">,</span>
   Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(list))<span class="operator">,</span>
   Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(map)));</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

This produces output like:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Array item: <span class="number">10</span>
   Array item: <span class="preprocessor">#00ff00</span>
   Array item: bottles
   Object item: language <span class="operator">=</span> QML
   Object item: released <span class="operator">=</span> Tue Sep <span class="number">21</span> <span class="number">2010</span> <span class="number">00</span>:<span class="number">00</span>:<span class="number">00</span> GMT<span class="operator">+</span><span class="number">1000</span> (EST)</pre>

.. raw:: html

   <p>

Similarly, if a C++ type uses a QVariantList or QVariantMap type for a
property type or method parameter, the value can be created as a
JavaScript array or object in QML, and is automatically converted to a
QVariantList or QVariantMap when it is passed to C++.

.. raw:: html

   </p>

.. raw:: html

   <h3>

QDateTime to JavaScript Date

.. raw:: html

   </h3>

.. raw:: html

   <p>

The QML engine provides automatic type conversion between QDateTime
values and JavaScript Date objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the function defined in QML below left expects a JavaScript
Date object, and also returns a new Date object with the current date
and time. The C++ code below right calls this function, passing a
QDateTime value that is automatically converted by the engine into a
Date object when it is passed to the readDate() function. In turn, the
readDate() function returns a Date object that is automatically
converted into a QDateTime value when it is received in C++:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// MyItem.qml</span>
   <span class="type">Item</span> {
   <span class="keyword">function</span> <span class="name">readDate</span>(<span class="name">dt</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The given date is:&quot;</span>, <span class="name">dt</span>.<span class="name">toUTCString</span>());
   <span class="keyword">return</span> new <span class="name">Date</span>();
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="comment">// C++</span>
   <span class="type">QQuickView</span> view(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
   <span class="type">QDateTime</span> dateTime <span class="operator">=</span> <span class="type">QDateTime</span><span class="operator">::</span>currentDateTime();
   <span class="type">QDateTime</span> retValue;
   <span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(view<span class="operator">.</span>rootObject()<span class="operator">,</span> <span class="string">&quot;readDate&quot;</span><span class="operator">,</span>
   Q_RETURN_ARG(<span class="type">QVariant</span><span class="operator">,</span> retValue)<span class="operator">,</span>
   Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(dateTime)));
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Value returned from readDate():&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> retValue;</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Similarly, if a C++ type uses a QDateTime for a property type or method
parameter, the value can be created as a JavaScript Date object in QML,
and is automatically converted to a QDateTime value when it is passed to
C++.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Sequence Type to JavaScript Array

.. raw:: html

   </h3>

.. raw:: html

   <p>

Certain C++ sequence types are supported transparently in QML as
JavaScript Array types.

.. raw:: html

   </p>

.. raw:: html

   <p>

In particular, QML currently supports:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

QList<int>

.. raw:: html

   </li>

.. raw:: html

   <li>

QList<qreal>

.. raw:: html

   </li>

.. raw:: html

   <li>

QList<bool>

.. raw:: html

   </li>

.. raw:: html

   <li>

QList<QString> and QStringList

.. raw:: html

   </li>

.. raw:: html

   <li>

QList<QUrl>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These sequence types are implemented directly in terms of the underlying
C++ sequence. There are two ways in which such sequences can be exposed
to QML: as a Q\_PROPERTY of the given sequence type; or as the return
type of a Q\_INVOKABLE method. There are some differences in the way
these are implemented, which are important to note.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the sequence is exposed as a Q\_PROPERTY, accessing any value in the
sequence by index will cause the sequence data to be read from the
QObject's property, then a read to occur. Similarly, modifying any value
in the sequence will cause the sequence data to be read, and then the
modification will be performed and the modified sequence will be written
back to the QObject's property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the sequence is returned from a Q\_INVOKABLE function, access and
mutation is much cheaper, as no QObject property read or write occurs;
instead, the C++ sequence data is accessed and modified directly.

.. raw:: html

   </p>

.. raw:: html

   <p>

Other sequence types are not supported transparently, and instead an
instance of any other sequence type will be passed between QML and C++
as an opaque QVariantList.

.. raw:: html

   </p>

.. raw:: html

   <p>

Important Note: There are some minor differences between the semantics
of such sequence Array types and default JavaScript Array types which
result from the use of a C++ storage type in the implementation. In
particular, deleting an element from an Array will result in a
default-constructed value replacing that element, rather than an
Undefined value. Similarly, setting the length property of the Array to
a value larger than its current value will result in the Array being
padded out to the specified length with default-constructed elements
rather than Undefined elements. Finally, the Qt container classes
support signed (rather than unsigned) integer indexes; thus, attempting
to access any index greater than INT\_MAX will fail.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default-constructed values for each sequence type are as follows:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QList<int>

.. raw:: html

   </td>

.. raw:: html

   <td>

integer value 0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QList<qreal>

.. raw:: html

   </td>

.. raw:: html

   <td>

real value 0.0

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QList<bool>

.. raw:: html

   </td>

.. raw:: html

   <td>

boolean value false

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QList<QString> and QStringList

.. raw:: html

   </td>

.. raw:: html

   <td>

empty QString

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

QList<QUrl>

.. raw:: html

   </td>

.. raw:: html

   <td>

empty QUrl

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If you wish to remove elements from a sequence rather than simply
replace them with default constructed values, do not use the indexed
delete operator ("delete sequence[i]") but instead use the splice
function ("sequence.splice(startIndex, deleteCount)").

.. raw:: html

   </p>

.. raw:: html

   <h2 id="enumeration-types">

Enumeration Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

To use a custom enumeration as a data type, its class must be registered
and the enumeration must also be declared with Q\_ENUMS() to register it
with Qt's meta object system. For example, the Message class below has a
Status enum:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"> <span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_ENUMS(Status)
   Q_PROPERTY(Status status READ status NOTIFY statusChanged)
   <span class="keyword">public</span>:
   <span class="keyword">enum</span> Status {
   Ready<span class="operator">,</span>
   Loading<span class="operator">,</span>
   Error
   };
   Status status() <span class="keyword">const</span>;
   <span class="keyword">signals</span>:
   <span class="type">void</span> statusChanged();
   };</pre>

.. raw:: html

   <p>

Providing the Message class has been registered with the QML type
system, its Status enum can be used from QML:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Message</span> {
   <span class="name">onStatusChanged</span>: {
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">Message</span>.<span class="name">Ready</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Message is loaded!&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

Note: The names of enum values must begin with a capital letter in order
to be accessible from QML.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Enumeration Types as Signal and Method Parameters

.. raw:: html

   </h3>

.. raw:: html

   <p>

C++ signals and methods with enumeration-type parameters can be used
from QML provided that the enumeration and the signal or method are both
declared within the same class, or that the enumeration value is one of
those declared in the Qt Namespace.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, if a C++ signal with an enum parameter should be
connectable to a QML function using the connect() function, the enum
type must be registered using qRegisterMetaType().

.. raw:: html

   </p>

.. raw:: html

   <p>

For QML signals, enum values may be passed as signal parameters using
the int type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"> <span class="type">Message</span> {
   signal <span class="type">someOtherSignal</span>(int statusValue)
   <span class="name">Component</span>.onCompleted: {
   <span class="name">someOtherSignal</span>(<span class="name">Message</span>.<span class="name">Loading</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@qtqml-cppintegration-data.html -->

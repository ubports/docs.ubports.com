QtQml.qtqml-cppintegration-exposecppattributes
==============================================

.. raw:: html

   <p>

QML can easily be extended with functionality defined in C++ code. Due
to the tight integration of the QML engine with the Qt meta-object
system, any functionality that is appropriately exposed by a
QObject-derived class is accessible from QML code. This enables C++ data
and functions to be accessible directly from QML, often with little or
no modification.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML engine has the ability to introspect QObject instances through
the meta-object system. This means any QML code can access the following
members of an instance of a QObject-derived class:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Properties

.. raw:: html

   </li>

.. raw:: html

   <li>

Methods (providing they are public slots or flagged with Q\_INVOKABLE)

.. raw:: html

   </li>

.. raw:: html

   <li>

Signals

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

(Additionally, enums are available if they have been declared with
Q\_ENUMS. See Data Type Conversion Between QML and C++ for more
details.)

.. raw:: html

   </p>

.. raw:: html

   <p>

In general, these are accessible from QML regardless of whether a
QObject-derived class has been registered with the QML type system.
However, if a class is to be used in a way that requires the engine to
access additional type information — for example, if the class itself is
to be used as a method parameter or property, or if one of its enum
types is to be used in this way — then the class may need to be
registered.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also note that a number of the important concepts covered in this
document are demonstrated in the Writing QML Extensions with C++
tutorial.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="data-type-handling-and-ownership">

Data Type Handling and Ownership

.. raw:: html

   </h2>

.. raw:: html

   <p>

Any data that is transferred from C++ to QML, whether as a property
value, a method parameter or return value, or a signal parameter value,
must be of a type that is supported by the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

By default, the engine supports a number of Qt C++ types and can
automatically convert them as appropriately when used from QML.
Additionally, C++ classes that are registered with the QML type system
can be can be used as data types, as can their enums if appropriately
registered. See Data Type Conversion Between QML and C++ for details for
further information.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, data ownership rules are taken into consideration when
data is transferred from C++ to QML. See Data Ownership for more
details.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="exposing-properties">

Exposing Properties

.. raw:: html

   </h2>

.. raw:: html

   <p>

A property can be specified for any QObject-derived class using the
Q\_PROPERTY() macro. A property is a class data member with an
associated read function and optional write function.

.. raw:: html

   </p>

.. raw:: html

   <p>

All properties of a QObject-derived class are accessible from QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a Message class with an author property. As
specified by the Q\_PROPERTY macro call, this property is readable
through the author() method, and writable through the setAuthor()
method:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> author READ author WRITE setAuthor NOTIFY authorChanged)
   <span class="keyword">public</span>:
   <span class="type">void</span> setAuthor(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>a) {
   <span class="keyword">if</span> (a <span class="operator">!</span><span class="operator">=</span> m_author) {
   m_author <span class="operator">=</span> a;
   <span class="keyword">emit</span> authorChanged();
   }
   }
   <span class="type">QString</span> author() <span class="keyword">const</span> {
   <span class="keyword">return</span> m_author;
   }
   <span class="keyword">signals</span>:
   <span class="type">void</span> authorChanged();
   <span class="keyword">private</span>:
   <span class="type">QString</span> m_author;
   };</pre>

.. raw:: html

   <p>

If an instance of this class was set as a context property when loading
a file named MyItem.qml from C++:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"> <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
   <span class="type">QCoreApplication</span> app(argc<span class="operator">,</span> argv);
   <span class="type">QQmlEngine</span> engine;
   Message msg;
   engine<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;msg&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>msg);
   <span class="type">QQmlComponent</span> component(<span class="operator">&amp;</span>engine<span class="operator">,</span> <span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
   component<span class="operator">.</span>create();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   <p>

Then, the author property could be read from MyItem.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// MyItem.qml</span>
   import QtQuick 2.0
   <span class="type">Text</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">text</span>: <span class="name">msg</span>.<span class="name">author</span>    <span class="comment">// invokes Message::author() to get this value</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="name">msg</span>.<span class="name">author</span> <span class="operator">=</span> <span class="string">&quot;Jonah&quot;</span>  <span class="comment">// invokes Message::setAuthor()</span>
   }
   }</pre>

.. raw:: html

   <p>

For maximum interoperability with QML, any property that is writable
should have an associated NOTIFY signal that is emitted whenever the
property value has changed. This allows the property to be used with
property binding, which is an essential feature of QML that enforces
relationships between properties by automatically updating a property
whenever any of its dependencies change in value.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the above example, the associated NOTIFY signal for the author
property is authorChanged, as specified in the Q\_PROPERTY() macro call.
This means that whenever the signal is emitted — as it is when the
author changes in Message::setAuthor() — this notifies the QML engine
that any bindings involving the author property must be updated, and in
turn, the engine will update the text property by calling
Message::author() again.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the author property was writable but did not have an associated
NOTIFY signal, the text value would be initialized with the initial
value returned by Message::author() but would not be updated with any
later changes to this property. In addition, any attempts to bind to the
property from QML will produce a runtime warning from the engine.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: It is recommended that the NOTIFY signal be named
<property>Changed where <property> is the name of the property. The
associated property change signal handler generated by the QML engine
will always take the form on<Property>Changed, regardless of the name of
the related C++ signal, so it is recommended that the signal name
follows this convention to avoid any confusion.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Notes on Use of Notify Signals

.. raw:: html

   </h4>

.. raw:: html

   <p>

To prevent loops or excessive evaluation, developers should ensure that
the property change signal is only emitted when the property value has
actually changed. Also, if a property or group of properties is
infrequently used, it is permitted to use the same NOTIFY signal for
several properties. This should be done with care to ensure that
performance doesn't suffer.

.. raw:: html

   </p>

.. raw:: html

   <p>

The presence of a NOTIFY signal does incur a small overhead. There are
cases where a property's value is set at object construction time, and
does not subsequently change. The most common case of this is when a
type uses Grouped Properties, and the grouped property object is
allocated once, and only freed when the object is deleted. In these
cases, the CONSTANT attribute may be added to the property declaration
instead of a NOTIFY signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

The CONSTANT attribute should only be used for properties whose value is
set, and finalized, only in the class constructor. All other properties
that want to be used in bindings should have a NOTIFY signal instead.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Properties with Object Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

Object-type properties are accessible from QML providing that the object
type has been appropriately registered with the QML type system.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Message type might have a body property of type
MessageBody\*:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(MessageBody<span class="operator">*</span> body READ body WRITE setBody NOTIFY bodyChanged)
   <span class="keyword">public</span>:
   MessageBody<span class="operator">*</span> body() <span class="keyword">const</span>;
   <span class="type">void</span> setBody(MessageBody<span class="operator">*</span> body);
   };
   <span class="keyword">class</span> MessageBody : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> text READ text WRITE text NOTIFY textChanged)
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <p>

Suppose the Message type was registered with the QML type system,
allowing it to be used as an object type from QML code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Message</span> {
   <span class="comment">// ...</span>
   }</pre>

.. raw:: html

   <p>

If the MessageBody type was also registered with the type system, it
would be possible to assign MessageBody to the body property of a
Message, all from within QML code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Message</span> {
   <span class="name">body</span>: <span class="name">MessageBody</span> {
   <span class="name">text</span>: <span class="string">&quot;Hello, world!&quot;</span>
   }
   }</pre>

.. raw:: html

   <h3>

Properties with Object-List Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

Properties containing lists of QObject-derived types can also be exposed
to QML. For this purpose, however, one should use QQmlListProperty
rather than QList<T> as the property type. This is because QList is not
a QObject-derived type, and so cannot provide the necessary QML property
characteristics through the Qt meta object system, such as signal
notifications when a list is modified.

.. raw:: html

   </p>

.. raw:: html

   <p>

QQmlListProperty is a template class that can be conveniently
constructed from a QList value.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the MessageBoard class below has a messages property of
type QQmlListProperty that stores a list of Message instances:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> messages READ messages)
   <span class="keyword">public</span>:
   <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> messages() <span class="keyword">const</span>;
   <span class="keyword">private</span>:
   <span class="keyword">static</span> <span class="type">void</span> append_message(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> Message <span class="operator">*</span>msg);
   <span class="type">QList</span><span class="operator">&lt;</span>Message <span class="operator">*</span><span class="operator">&gt;</span> m_messages;
   };</pre>

.. raw:: html

   <p>

The MessageBoard::messages() function simply creates and returns a
QQmlListProperty from its QList<T> m\_messages member, passing the
appropriate list modification functions as required by the
QQmlListProperty constructor:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> MessageBoard<span class="operator">::</span>messages()
   {
   <span class="keyword">return</span> <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span>(<span class="keyword">this</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="operator">&amp;</span>MessageBoard<span class="operator">::</span>append_message);
   }
   <span class="type">void</span> MessageBoard<span class="operator">::</span>append_message(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> Message <span class="operator">*</span>msg)
   {
   MessageBoard <span class="operator">*</span>msgBoard <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span>MessageBoard <span class="operator">*</span><span class="operator">&gt;</span>(list<span class="operator">-</span><span class="operator">&gt;</span>object);
   <span class="keyword">if</span> (msg)
   msgBoard<span class="operator">-</span><span class="operator">&gt;</span>m_messages<span class="operator">.</span>append(msg);
   }</pre>

.. raw:: html

   <p>

Note that the template class type for the QQmlListProperty — in this
case, Message — must be registered with the QML type system.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Grouped Properties

.. raw:: html

   </h3>

.. raw:: html

   <p>

Any read-only object-type property is accessible from QML code as a
grouped property. This can be used to expose a group of related
properties that describe a set of attributes for a type.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, suppose the Message::author property was of type
MessageAuthor rather than a simple string, with sub-properties of name
and email:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MessageAuthor : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName)
   Q_PROPERTY(<span class="type">QString</span> email READ email WRITE setEmail)
   <span class="keyword">public</span>:
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   };
   <span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(MessageAuthor<span class="operator">*</span> author READ author)
   <span class="keyword">public</span>:
   Message(<span class="type">QObject</span> <span class="operator">*</span>parent)
   : <span class="type">QObject</span>(parent)<span class="operator">,</span> m_author(<span class="keyword">new</span> MessageAuthor(<span class="keyword">this</span>))
   {
   }
   Message <span class="operator">*</span>author() <span class="keyword">const</span> {
   <span class="keyword">return</span> m_author;
   }
   <span class="keyword">private</span>:
   Message <span class="operator">*</span>m_author;
   };</pre>

.. raw:: html

   <p>

The author property could be written to using the grouped property
syntax in QML, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Message</span> {
   <span class="name">author</span>.name: <span class="string">&quot;Alexandra&quot;</span>
   <span class="name">author</span>.email: <span class="string">&quot;alexandra@mail.com&quot;</span>
   }</pre>

.. raw:: html

   <p>

A type that is exposed as a grouped property differs from an object-type
property in that the grouped property is read-only, and is initialized
to a valid value by the parent object at construction. The grouped
property's sub-properties may be modified from QML but the grouped
property object itself will never change, whereas an object-type
property may be assigned a new object value from QML at any time. Thus,
the lifetime of a grouped property object is controlled strictly by the
C++ parent implementation, whereas an object-type property can be freely
created and destroyed through QML code.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="exposing-methods-including-qt-slots">

Exposing Methods (Including Qt Slots)

.. raw:: html

   </h2>

.. raw:: html

   <p>

Any method of a QObject-derived type is accessible from QML code if it
is:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

A public method flagged with the Q\_INVOKABLE() macro

.. raw:: html

   </li>

.. raw:: html

   <li>

A method that is a public Qt slot

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

For example, the MessageBoard class below has a postMessage() method
that has been flagged with the Q\_INVOKABLE macro, as well as a
refresh() method that is a public slot:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"> <span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   Q_INVOKABLE bool postMessage(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>msg) {
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Called the C++ method with&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> msg;
   <span class="keyword">return</span> <span class="keyword">true</span>;
   }
   <span class="keyword">public</span> <span class="keyword">slots</span>:
   <span class="type">void</span> refresh() {
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Called the C++ slot&quot;</span>;
   }
   };</pre>

.. raw:: html

   <p>

If an instance of MessageBoard was set as the context data for a file
MyItem.qml, as shown below left, then MyItem.qml could invoke the two
methods, as shown below right:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"> <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   MessageBoard msgBoard;
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>engine()<span class="operator">-</span><span class="operator">&gt;</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;msgBoard&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>msgBoard);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// MyItem.qml</span>
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   var <span class="name">result</span> = <span class="name">msgBoard</span>.<span class="name">postMessage</span>(<span class="string">&quot;Hello from QML&quot;</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Result of postMessage():&quot;</span>, <span class="name">result</span>)
   <span class="name">msgBoard</span>.<span class="name">refresh</span>();
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

If a C++ method has a parameter with a QObject\* type, the parameter
value can be passed from QML using an object id or a JavaScript var
value that references the object.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML supports the calling of overloaded C++ functions. If there are
multiple C++ functions with the same name but different arguments, the
correct function will be called according to the number and the types of
arguments that are provided.

.. raw:: html

   </p>

.. raw:: html

   <p>

Values returned from C++ methods are converted to JavaScript values when
accessed from JavaScript expressions in QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="exposing-signals">

Exposing Signals

.. raw:: html

   </h2>

.. raw:: html

   <p>

Any public signal of a QObject-derived type is accessible from QML code.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML engine automatically creates a signal handler for any signal of
a QObject-derived type that is used from QML. Signal handlers are always
named on<Signal> where <Signal> is the name of the signal, with the
first letter capitalized. All parameters passed by the signal are
available in the signal handler through the parameter names.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, suppose the MessageBoard class has a newMessagePosted()
signal with a single parameter, subject:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"> <span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   <span class="comment">// ...</span>
   <span class="keyword">signals</span>:
   <span class="type">void</span> newMessagePosted(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>subject);
   };</pre>

.. raw:: html

   <p>

If the MessageBoard type was registered with the QML type system, then a
MessageBoard object declared in QML could receive the newMessagePosted()
signal using a signal handler named onNewMessagePosted, and examine the
subject parameter value:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MessageBoard</span> {
   <span class="name">onNewMessagePosted</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;New message received:&quot;</span>, <span class="name">subject</span>)
   }</pre>

.. raw:: html

   <p>

As with property values and method parameters, a signal parameter must
have a type that is supported by the QML engine; see Data Type
Conversion Between QML and C++. (Using an unregistered type will not
generate an error, but the parameter value will not be accessible from
the handler.)

.. raw:: html

   </p>

.. raw:: html

   <p>

Classes may have multiple signals with the same name, but only the final
signal is accessible as a QML signal. Note that signals with the same
name but different parameters cannot be distinguished from one another.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-cppintegration-exposecppattributes.html -->

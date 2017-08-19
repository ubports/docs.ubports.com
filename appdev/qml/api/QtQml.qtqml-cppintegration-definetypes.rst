QtQml.qtqml-cppintegration-definetypes
======================================

.. raw:: html

   <p>

When extending QML with C++ code, a C++ class can be registered with the
QML type system to enable the class to be used as a data type within QML
code. While the properties, methods and signals of any QObject-derived
class are accessible from QML, as discussed in Exposing Attributes of
C++ Types to QML, such a class cannot be used as a data type from QML
until it is registered with the type system. Additionally registration
can provide other features, such as allowing a class to be used as an
instantiable QML object type from QML, or enabling a singleton instance
of the class to be imported and used from QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, the Qt QML module provides mechanisms for implementing
QML-specific features such as attached properties and default properties
in C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

(Note that a number of the important concepts covered in this document
are demonstrated in the Writing QML Extensions with C++ tutorial.)

.. raw:: html

   </p>

.. raw:: html

   <h2 id="registering-c-types-with-the-qml-type-system">

Registering C++ Types with the QML Type System

.. raw:: html

   </h2>

.. raw:: html

   <p>

A QObject-derived class can be registered with the QML type system to
enable the type to be used as a data type from within QML code.

.. raw:: html

   </p>

.. raw:: html

   <p>

The engine allows the registration of both instantiable and
non-instantiable types. Registering an instantiable type enables a C++
class to be used as the definition of a QML object type, allowing it to
be used in object declarations from QML code to create objects of this
type. Registration also provides the engine with additional type
metadata, enabling the type (and any enums declared by the class) to be
used as a data type for property values, method parameters and return
values, and signal parameters that are exchanged between QML and C++.

.. raw:: html

   </p>

.. raw:: html

   <p>

Registering a non-instantiable type also registers the class as a data
type in this manner, but the type cannot be used instantiated as a QML
object type from QML. This is useful, for example, if a type has enums
that should be exposed to QML but the type itself should not be
instantiable.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Registering an Instantiable Object Type

.. raw:: html

   </h3>

.. raw:: html

   <p>

Any QObject-derived C++ class can be registered as the definition of a
QML object type. Once a class is registered with the QML type system,
the class can be declared and instantiated like any other object type
from QML code. Once created, a class instance can be manipulated from
QML; as Exposing Attributes of C++ Types to QML explains, the
properties, methods and signals of any QObject-derived class are
accessible from QML code.

.. raw:: html

   </p>

.. raw:: html

   <p>

To register a QObject-derived class as an instantiable QML object type,
call qmlRegisterType() to register the class as QML type into a
particular type namespace. Clients can then import that namespace in
order to use the type.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, suppose there is a Message class with author and
creationDate properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> author READ author WRITE setAuthor NOTIFY authorChanged)
   Q_PROPERTY(<span class="type">QDateTime</span> creationDate READ creationDate WRITE setCreationDate NOTIFY creationDateChanged)
   <span class="keyword">public</span>:
   <span class="comment">// ...</span>
   };</pre>

.. raw:: html

   <p>

This type can be registered by calling qmlRegisterType() with an
appropriate type namespace and version number. For example, to make the
type available in the com.mycompany.messaging namespace with version
1.0:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlRegisterType<span class="operator">&lt;</span>Message<span class="operator">&gt;</span>(<span class="string">&quot;com.mycompany.messaging&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;Message&quot;</span>);</pre>

.. raw:: html

   <p>

The type can be used in an object declaration from QML, and its
properties can be read and written to, as per the example below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import com.mycompany.messaging 1.0
   <span class="type">Message</span> {
   <span class="name">author</span>: <span class="string">&quot;Amelie&quot;</span>
   <span class="name">creationDate</span>: new <span class="name">Date</span>()
   }</pre>

.. raw:: html

   <h3>

Registering Non-Instantiable Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

Sometimes a QObject-derived class may need to be registered with the QML
type system but not as an instantiable type. For example, this is the
case if a C++ class:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

is an interface type that should not be instantiable

.. raw:: html

   </li>

.. raw:: html

   <li>

is a base class type that does not need to be exposed to QML

.. raw:: html

   </li>

.. raw:: html

   <li>

declares some enum that should be accessible from QML, but otherwise
should not be instantiable

.. raw:: html

   </li>

.. raw:: html

   <li>

is a type that should be provided to QML through a singleton instance,
and should not be instantiable from QML

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The Qt QML module provides several methods for registering
non-instantiable types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

qmlRegisterType() (with no parameters) registers a C++ type that is not
instantiable and cannot be referred to from QML. This enables the engine
to coerce any inherited types that are instantiable from QML.

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlRegisterInterface() registers a Qt interface type with a specific QML
type name. The type is not instantiable from QML but can be referred to
by its type name.

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlRegisterUncreatableType() registers a named C++ type that is not
instantiable but should be identifiable as a type to the QML type
system. This is useful if a type's enums or attached properties should
be accessible from QML but the type itself should not be instantiable.

.. raw:: html

   </li>

.. raw:: html

   <li>

qmlRegisterSingletonType() registers a singleton type that can be
imported from QML, as discussed below.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note that all C++ types registered with the QML type system must be
QObject-derived, even if they are non-instantiable.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Registering Singleton Objects with a Singleton Type

.. raw:: html

   </h4>

.. raw:: html

   <p>

A singleton type enables properties, signals and methods to be exposed
in a namespace without requiring the client to manually instantiate an
object instance. QObject singleton types in particular are an efficient
and convenient way to provide functionality or global property values.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that singleton types do not have an associated QQmlContext as they
are shared across all contexts in an engine. QObject singleton type
instances are constructed and owned by the QQmlEngine, and will be
destroyed when the engine is destroyed.

.. raw:: html

   </p>

.. raw:: html

   <p>

A QObject singleton type can be interacted with in a manner similar to
any other QObject or instantiated type, except that only one (engine
constructed and owned) instance will exist, and it must be referenced by
type name rather than id. Q\_PROPERTYs of QObject singleton types may be
bound to, and Q\_INVOKABLE functions of QObject module APIs may be used
in signal handler expressions. This makes singleton types an ideal way
to implement styling or theming, and they can also be used instead of
".pragma library" script imports to store global state or to provide
global functionality.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once registered, a QObject singleton type may be imported and used like
any other QObject instance exposed to QML. The following example assumes
that a QObject singleton type was registered into the "MyThemeModule"
namespace with version 1.0, where that QObject has a QColor "color"
Q\_PROPERTY:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import MyThemeModule 1.0 as Theme
   <span class="type">Rectangle</span> {
   <span class="name">color</span>: <span class="name">Theme</span>.<span class="name">color</span> <span class="comment">// binding.</span>
   }</pre>

.. raw:: html

   <p>

A QJSValue may also be exposed as a singleton type, however clients
should be aware that properties of such a singleton type cannot be bound
to.

.. raw:: html

   </p>

.. raw:: html

   <p>

See qmlRegisterSingletonType() for more information on how implement and
register a new singleton type, and how to use an existing singleton
type.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Type Revisions and Versions

.. raw:: html

   </h3>

.. raw:: html

   <p>

Many of the type registration functions require versions to be specified
for the registered type. Type revisions and versions allow new
properties or methods to exist in the new version while remaining
compatible with previous versions.

.. raw:: html

   </p>

.. raw:: html

   <p>

Consider these two QML files:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="comment">// main.qml</span>
   import <span class="type">QtQuick</span> <span class="number">1.0</span>
   Item {
   id: root
   MyType {}
   }</pre>

.. raw:: html

   <pre class="cpp"><span class="comment">// MyType.qml</span>
   import MyTypes <span class="number">1.0</span>
   CppType {
   value: root<span class="operator">.</span>x
   }</pre>

.. raw:: html

   <p>

where CppType maps to the C++ class CppType.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the author of CppType adds a root property to CppType in a new
version of their type definition, root.x now resolves to a different
value because root is also the id of the top level component. The author
could specify that the new root property is available from a specific
minor version. This permits new properties and features to be added to
existing types without breaking existing programs.

.. raw:: html

   </p>

.. raw:: html

   <p>

The REVISION tag is used to mark the root property as added in revision
1 of the type. Methods such as Q\_INVOKABLE's, signals and slots can
also be tagged for a revision using the Q\_REVISION(x) macro:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> CppType : <span class="keyword">public</span> BaseType
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">int</span> root READ root WRITE setRoot NOTIFY rootChanged REVISION <span class="number">1</span>)
   <span class="keyword">signals</span>:
   Q_REVISION(<span class="number">1</span>) <span class="type">void</span> rootChanged();
   };</pre>

.. raw:: html

   <p>

To register the new class revision to a particular version the following
function is used:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">template</span><span class="operator">&lt;</span><span class="keyword">typename</span> T<span class="operator">,</span> <span class="type">int</span> metaObjectRevision<span class="operator">&gt;</span>
   <span class="type">int</span> qmlRegisterType(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri<span class="operator">,</span> <span class="type">int</span> versionMajor<span class="operator">,</span> <span class="type">int</span> versionMinor<span class="operator">,</span> <span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>qmlName)</pre>

.. raw:: html

   <p>

To register CppType version 1 for MyTypes 1.1:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlRegisterType<span class="operator">&lt;</span>CppType<span class="operator">,</span><span class="number">1</span><span class="operator">&gt;</span>(<span class="string">&quot;MyTypes&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="string">&quot;CppType&quot;</span>)</pre>

.. raw:: html

   <p>

root is only available when MyTypes version 1.1 is imported.

.. raw:: html

   </p>

.. raw:: html

   <p>

For the same reason, new types introduced in later versions should use
the minor version argument of qmlRegisterType.

.. raw:: html

   </p>

.. raw:: html

   <p>

This feature of the language allows for behavioural changes to be made
without breaking existing applications. Consequently QML module authors
should always remember to document what changed between minor versions,
and QML module users should check that their application still runs
correctly before deploying an updated import statement.

.. raw:: html

   </p>

.. raw:: html

   <p>

You may also register the revision of a base class that your type
depends upon using the qmlRegisterRevision() function:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">template</span><span class="operator">&lt;</span><span class="keyword">typename</span> T<span class="operator">,</span> <span class="type">int</span> metaObjectRevision<span class="operator">&gt;</span>
   <span class="type">int</span> qmlRegisterRevision(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri<span class="operator">,</span> <span class="type">int</span> versionMajor<span class="operator">,</span> <span class="type">int</span> versionMinor)
   <span class="keyword">template</span><span class="operator">&lt;</span><span class="keyword">typename</span> T<span class="operator">,</span> <span class="type">int</span> metaObjectRevision<span class="operator">&gt;</span>
   <span class="type">int</span> qmlRegisterUncreatableType(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri<span class="operator">,</span> <span class="type">int</span> versionMajor<span class="operator">,</span> <span class="type">int</span> versionMinor<span class="operator">,</span> <span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>qmlName<span class="operator">,</span> <span class="keyword">const</span> <span class="type">QString</span><span class="operator">&amp;</span> reason)</pre>

.. raw:: html

   <p>

For example, if BaseType is changed and now has a revision 1, you can
specify that your type uses the new revision:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlRegisterRevision<span class="operator">&lt;</span>BaseType<span class="operator">,</span><span class="number">1</span><span class="operator">&gt;</span>(<span class="string">&quot;MyTypes&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">1</span>);</pre>

.. raw:: html

   <p>

This is useful when deriving from base classes provided by other
authors, e.g. when extending classes from the Qt Quick module.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Registering Extension Objects

.. raw:: html

   </h3>

.. raw:: html

   <p>

When integrating existing classes and technology into QML, APIs will
often need tweaking to fit better into the declarative environment.
Although the best results are usually obtained by modifying the original
classes directly, if this is either not possible or is complicated by
some other concerns, extension objects allow limited extension
possibilities without direct modifications.

.. raw:: html

   </p>

.. raw:: html

   <p>

Extension objects add additional properties to an existing type.
Extension objects can only add properties, not signals or methods. An
extended type definition allows the programmer to supply an additional
type, known as the extension type, when registering the class. The
properties are transparently merged with the original target class when
used from within QML. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">QLineEdit</span> {
   <span class="name">leftMargin</span>: <span class="number">20</span>
   }</pre>

.. raw:: html

   <p>

The leftMargin property is a new property added to an existing C++ type,
QLineEdit, without modifying its source code.

.. raw:: html

   </p>

.. raw:: html

   <p>

The qmlRegisterExtendedType() function is for registering extended
types. Note that it has two forms.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">template</span><span class="operator">&lt;</span><span class="keyword">typename</span> T<span class="operator">,</span> <span class="keyword">typename</span> ExtendedT<span class="operator">&gt;</span>
   <span class="type">int</span> qmlRegisterExtendedType(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri<span class="operator">,</span> <span class="type">int</span> versionMajor<span class="operator">,</span> <span class="type">int</span> versionMinor<span class="operator">,</span> <span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>qmlName)
   <span class="keyword">template</span><span class="operator">&lt;</span><span class="keyword">typename</span> T<span class="operator">,</span> <span class="keyword">typename</span> ExtendedT<span class="operator">&gt;</span>
   <span class="type">int</span> qmlRegisterExtendedType()</pre>

.. raw:: html

   <p>

This functions should be used instead of the regular qmlRegisterType()
variations. The arguments are identical to the corresponding
non-extension registration functions, except for the ExtendedT parameter
which is the type of the extension object.

.. raw:: html

   </p>

.. raw:: html

   <p>

An extension class is a regular QObject, with a constructor that takes a
QObject pointer. However, the extension class creation is delayed until
the first extended property is accessed. The extension class is created
and the target object is passed in as the parent. When the property on
the original is accessed, the corresponding property on the extension
object is used instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Extension Objects Example demonstrates a usage of extension objects.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="defining-qml-specific-types-and-attributes">

Defining QML-Specific Types and Attributes

.. raw:: html

   </h2>

.. raw:: html

   <h3>

Providing Attached Objects for Data Annotations

.. raw:: html

   </h3>

.. raw:: html

   <p>

In the QML language syntax, there is a notion of attached properties and
attached signal handlers, which are additional attributes that are
attached to an object. Essentially, such attributes are implemented and
provided by an attaching type, and these attributes may be attached to
an object of another type. This contrasts with ordinary object
properties which are provided by the object type itself (or the object's
inherited type).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Item below uses attached properties and attached
handlers:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.enabled: <span class="number">false</span>
   <span class="name">Keys</span>.onReturnPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Return key was pressed&quot;</span>)
   }</pre>

.. raw:: html

   <p>

Here, the Item object is able to access and set the values of
Keys.enabled and Keys.onReturnPressed. This allows the Item object to
access these extra attributes as an extension to its own existing
attributes.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Steps for Implementing Attached Objects

.. raw:: html

   </h4>

.. raw:: html

   <p>

When considering the above example, there are several parties involved:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

There is an instance of an anonymous attached object type, with an
enabled and a returnPressed signal, that has been attached to the Item
object to enable it to access and set these attributes.

.. raw:: html

   </li>

.. raw:: html

   <li>

The Item object is the attachee, to which the instance of the attached
object type has been attached.

.. raw:: html

   </li>

.. raw:: html

   <li>

Keys is the attaching type, which provides the attachee with a named
qualifier, "Keys", through which it may access the attributes of the
attached object type.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When the QML engine processes this code, it creates a single instance of
the attached object type and attaches this instance to the Item object,
thereby providing it with access to the enabled and returnPressed
attributes of the instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

The mechanisms for providing attached objects can be implemented from
C++ by providing classes for the attached object type and attaching
type. For the attached object type, provide a QObject-derived class that
defines the attributes to be made accessible to attachee objects. For
the attaching type, provide a QObject-derived class that:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

implements a static qmlAttachedProperties() with the following
signature:

.. raw:: html

   <pre class="cpp">    <span class="keyword">static</span> <span class="operator">&lt;</span>AttachedPropertiesType<span class="operator">&gt;</span> <span class="operator">*</span>qmlAttachedProperties(<span class="type">QObject</span> <span class="operator">*</span>object);</pre>

.. raw:: html

   <p>

This method should return an instance of the attached object type.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QML engine invokes this method in order to attach an instance of the
attached object type to the attachee specified by the object parameter.
It is customary, though not strictly required, for this method
implementation to parent the returned instance to object in order to
prevent memory leaks.

.. raw:: html

   </p>

.. raw:: html

   <p>

This method is called at most once by the engine for each attachee
object instance, as the engine caches the returned instance pointer for
subsequent attached property accesses. Consequently the attachment
object may not be deleted until the attachee object is destroyed.

.. raw:: html

   </p>

.. raw:: html

   </li>

.. raw:: html

   <li>

is declared as an attaching type, by calling the
QML\_DECLARE\_TYPEINFO() macro with the QML\_HAS\_ATTACHED\_PROPERTIES
flag

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h4>

Implementing Attached Objects: An Example

.. raw:: html

   </h4>

.. raw:: html

   <p>

For example, take the Message type described in an earlier example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> author READ author WRITE setAuthor NOTIFY authorChanged)
   Q_PROPERTY(<span class="type">QDateTime</span> creationDate READ creationDate WRITE setCreationDate NOTIFY creationDateChanged)
   <span class="keyword">public</span>:
   <span class="comment">// ...</span>
   };</pre>

.. raw:: html

   <p>

Suppose it is necessary to trigger a signal on a Message when it is
published to a message board, and also track when the message has
expired on the message board. Since it doesn't make sense to add these
attributes directly to a Message, as the attributes are more relevant to
the message board context, they could be implemented as attached
attributes on a Message object that are provided through a
"MessageBoard" qualifier. In terms of the concepts described earlier,
the parties involved here are:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

An instance of an anonymous attached object type, which provides a
published signal and an expired property. This type is implemented by
MessageBoardAttachedType below

.. raw:: html

   </li>

.. raw:: html

   <li>

A Message object, which will be the attachee

.. raw:: html

   </li>

.. raw:: html

   <li>

The MessageBoard type, which will be the attaching type that is used by
Message objects to access the attached attributes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Following is an example implementation. First, there needs to be an
attached object type with the necessary properties and signals that will
be accessible to the attachee:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MessageBoardAttachedType : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(bool expired READ expired WRITE expired NOTIFY expiredChanged)
   <span class="keyword">public</span>:
   MessageBoardAttachedType(<span class="type">QObject</span> <span class="operator">*</span>parent);
   bool expired() <span class="keyword">const</span>;
   <span class="type">void</span> setExpired(bool expired);
   <span class="keyword">signals</span>:
   <span class="type">void</span> published();
   <span class="type">void</span> expiredChanged();
   };</pre>

.. raw:: html

   <p>

Then the attaching type, MessageBoard, must declare a
qmlAttachedProperties() method that returns an instance of the attached
object type as implemented by MessageBoardAttachedType. Additionally,
Message board must be declared as an attached type through the
QML\_DECLARE\_TYPEINFO() macro:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   <span class="keyword">static</span> MessageBoard <span class="operator">*</span>qmlAttachedProperties(<span class="type">QObject</span> <span class="operator">*</span>object)
   {
   <span class="keyword">return</span> <span class="keyword">new</span> MessageBoardAttachedType(object);
   }
   };
   QML_DECLARE_TYPEINFO(MessageBoard<span class="operator">,</span> QML_HAS_ATTACHED_PROPERTIES)</pre>

.. raw:: html

   <p>

Now, a Message type can access the properties and signals of the
attached object type:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Message</span> {
   <span class="name">author</span>: <span class="string">&quot;Amelie&quot;</span>
   <span class="name">creationDate</span>: new <span class="name">Date</span>()
   <span class="name">MessageBoard</span>.expired: <span class="name">creationDate</span> <span class="operator">&lt;</span> new <span class="name">Date</span>(<span class="string">&quot;January 01, 2015 10:45:00&quot;</span>)
   <span class="name">MessageBoard</span>.onPublished: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Message by&quot;</span>, <span class="name">author</span>, <span class="string">&quot;has been
   published!&quot;</span>)
   }</pre>

.. raw:: html

   <p>

Additionally, the C++ implementation may access the attached object
instance that has been attached to any object by calling the
qmlAttachedPropertiesObject() function.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Message <span class="operator">*</span>msg <span class="operator">=</span> someMessageInstance();
   MessageBoardAttachedType <span class="operator">*</span>attached <span class="operator">=</span>
   qobject_cast<span class="operator">&lt;</span>MessageBoardAttachedType<span class="operator">*</span><span class="operator">&gt;</span>(qmlAttachedPropertiesObject<span class="operator">&lt;</span>MessageBoard<span class="operator">&gt;</span>(msg));
   qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Value of MessageBoard.expired:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> attached<span class="operator">-</span><span class="operator">&gt;</span>expired();</pre>

.. raw:: html

   <h3>

Property Modifier Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

A property modifier type is a special kind of QML object type. A
property modifier type instance affects a property (of a QML object
instance) which it is applied to. There are two different kinds of
property modifier types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

property value write interceptors

.. raw:: html

   </li>

.. raw:: html

   <li>

property value sources

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

A property value write interceptor can be used to filter or modify
values as they are written to properties. Currently, the only supported
property value write interceptor is the Behavior type provided by the
QtQuick import.

.. raw:: html

   </p>

.. raw:: html

   <p>

A property value source can be used to automatically update the value of
a property over time. Clients can define their own property value source
types. The various property animation types provided by the QtQuick
import are examples of property value sources.

.. raw:: html

   </p>

.. raw:: html

   <p>

Property modifier type instances can be created and applied to a
property of a QML object through the "<ModifierType> on <propertyName>"
syntax, as the following example shows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   NumberAnimation on <span class="name">x</span> {
   <span class="name">from</span>: <span class="number">0</span>
   <span class="name">to</span>: <span class="number">350</span>
   <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
   <span class="name">duration</span>: <span class="number">2000</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Clients can register their own property value source types, but
currently not property value write interceptors.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Property Value Sources

.. raw:: html

   </h4>

.. raw:: html

   <p>

Property value sources are QML types that can automatically update the
value of a property over time, using the <PropertyValueSource> on
<property> syntax. For example, the various property animation types
provided by the QtQuick module are examples of property value sources.

.. raw:: html

   </p>

.. raw:: html

   <p>

A property value source can be implemented in C++ by subclassing
QQmlPropertyValueSource and providing an implementation that writes
different values to a property over time. When the property value source
is applied to a property using the <PropertyValueSource> on <property>
syntax in QML, it is given a reference to this property by the engine so
that the property value can be updated.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, suppose there is a RandomNumberGenerator class to be made
available as a property value source, so that when applied to a QML
property, it will update the property value to a different random number
every 500 milliseconds. Additionally, a maxValue can be provided to this
random number generator. This class can be implemented as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> RandomNumberGenerator : <span class="keyword">public</span> <span class="type">QObject</span><span class="operator">,</span> <span class="keyword">public</span> <span class="type">QQmlPropertyValueSource</span>
   {
   Q_OBJECT
   Q_INTERFACES(<span class="type">QQmlPropertyValueSource</span>)
   Q_PROPERTY(<span class="type">int</span> maxValue READ maxValue WRITE setMaxValue NOTIFY maxValueChanged);
   <span class="keyword">public</span>:
   RandomNumberGenerator(<span class="type">QObject</span> <span class="operator">*</span>parent)
   : <span class="type">QObject</span>(parent)<span class="operator">,</span> m_maxValue(<span class="number">100</span>)
   {
   qsrand(<span class="type">QDateTime</span><span class="operator">::</span>currentDateTime()<span class="operator">.</span>toTime_t());
   <span class="type">QObject</span><span class="operator">::</span>connect(<span class="operator">&amp;</span>m_timer<span class="operator">,</span> SIGNAL(timeout())<span class="operator">,</span> SLOT(updateProperty()));
   m_timer<span class="operator">.</span>start(<span class="number">500</span>);
   }
   <span class="type">int</span> maxValue() <span class="keyword">const</span>;
   <span class="type">void</span> setMaxValue(<span class="type">int</span> maxValue);
   <span class="keyword">virtual</span> <span class="type">void</span> setTarget(<span class="keyword">const</span> <span class="type">QQmlProperty</span> <span class="operator">&amp;</span>prop) { m_targetProperty <span class="operator">=</span> prop; }
   <span class="keyword">signals</span>:
   <span class="type">void</span> maxValueChanged();
   <span class="keyword">private</span> <span class="keyword">slots</span>:
   <span class="type">void</span> updateProperty() {
   m_targetProperty<span class="operator">.</span>write(qrand() <span class="operator">%</span> m_maxValue);
   }
   <span class="keyword">private</span>:
   <span class="type">QQmlProperty</span> m_targetProperty;
   <span class="type">QTimer</span> m_timer;
   <span class="type">int</span> m_maxValue;
   };</pre>

.. raw:: html

   <p>

When the QML engine encounters a use of RandomNumberGenerator as a
property value source, it invokes RandomNumberGenerator::setTarget() to
provide the type with the property to which the value source has been
applied. When the internal timer in RandomNumberGenerator triggers every
500 milliseconds, it will write a new number value to that specified
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once the RandomNumberGenerator class has been registered with the QML
type system, it can be used from QML as a property value source. Below,
it is used to change the width of a Rectangle every 500 milliseconds:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="type">Rectangle</span> {
   RandomNumberGenerator on <span class="name">width</span> { <span class="name">maxValue</span>: <span class="number">300</span> }
   <span class="name">height</span>: <span class="number">100</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

In all other respects, property value sources are regular QML types that
can have properties, signals methods and so on, but with the added
capability that they can be used to change property values using the
<PropertyValueSource> on <property> syntax.

.. raw:: html

   </p>

.. raw:: html

   <p>

When a property value source object is assigned to a property, QML first
tries to assign it normally, as though it were a regular QML type. Only
if this assignment fails does the engine call the setTarget() method.
This allows the type to also be used in contexts other than just as a
value source.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Specifying Default Properties for QML Object Types

.. raw:: html

   </h3>

.. raw:: html

   <p>

Any QObject-derived type that is registered as an instantiable QML
object type can optionally specify a default property for the type. A
default property is the property to which an object's children are
automatically assigned if they are not assigned to any specific
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default property can be set by calling the Q\_CLASSINFO() macro for
a class with a specific "DefaultProperty" value. For example, the
MessageBoard class below specifies its messages property as the default
property for the class:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> messages READ messages)
   Q_CLASSINFO(<span class="string">&quot;DefaultProperty&quot;</span><span class="operator">,</span> <span class="string">&quot;messages&quot;</span>)
   <span class="keyword">public</span>:
   <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> messages() <span class="keyword">const</span>;
   <span class="keyword">private</span>:
   <span class="type">QList</span><span class="operator">&lt;</span>Message <span class="operator">*</span><span class="operator">&gt;</span> messages;
   };</pre>

.. raw:: html

   <p>

This enables children of a MessageBoard object to be automatically
assigned to its messages property if they are not assigned to a specific
property. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MessageBoard</span> {
   <span class="type">Message</span> { <span class="name">author</span>: <span class="string">&quot;Naomi&quot;</span> }
   <span class="type">Message</span> { <span class="name">author</span>: <span class="string">&quot;Clancy&quot;</span> }
   }</pre>

.. raw:: html

   <p>

If messages was not set as the default property, then any Message
objects would have to be explicitly assigned to the messages property
instead, as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MessageBoard</span> {
   <span class="name">messages</span>: [
   <span class="type">Message</span> { <span class="name">author</span>: <span class="string">&quot;Naomi&quot;</span> },
   <span class="type">Message</span> { <span class="name">author</span>: <span class="string">&quot;Clancy&quot;</span> }
   ]
   }</pre>

.. raw:: html

   <p>

(Incidentally, the Item::data property is its default property. Any Item
objects added to this data property are also added to the list of
Item::children, so the use of the default property enables visual
children to be declared for an item without explicitly assigning them to
the children property.)

.. raw:: html

   </p>

.. raw:: html

   <h3>

Defining Visual Items with the Qt Quick Module

.. raw:: html

   </h3>

.. raw:: html

   <p>

When building user interfaces with the Qt Quick module, all QML objects
that are to be visually rendered must derive from the Item type, as it
is the base type for all visual objects in Qt Quick. This Item type is
implemented by the QQuickItem C++ class, which is provided by the Qt
Quick module. Therefore, this class should be subclassed when it is
necessary to implement a visual type in C++ that can be integrated into
a QML-based user interface.

.. raw:: html

   </p>

.. raw:: html

   <p>

See the QQuickItem documentation for more information. Additionally, the
Writing QML Extensions with C++ tutorial demonstrates how a
QQuickItem-based visual item can be implemented in C++ and integrated
into a Qt Quick-based user interface.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="receiving-notifications-for-object-initialization">

Receiving Notifications for Object Initialization

.. raw:: html

   </h2>

.. raw:: html

   <p>

For some custom QML object types, it may be beneficial to delay the
initialization of particular data until the object has been created and
all of its properties have been set. For example, this may be the case
if the initialization is costly, or if the initialization should not be
performed until all property values have been initialized.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Qt QML module provides the QQmlParserStatus to be subclassed for
these purposes. It defines a number of virtual methods that are invoked
at various stages during component instantiation. To receive these
notifications, a C++ class should inherit QQmlParserStatus and also
notify the Qt meta system using the Q\_INTERFACES() macro.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> MyQmlType : <span class="keyword">public</span> <span class="type">QObject</span><span class="operator">,</span> <span class="keyword">public</span> <span class="type">QQmlParserStatus</span>
   {
   Q_OBJECT
   Q_INTERFACES(<span class="type">QQmlParserStatus</span>)
   <span class="keyword">public</span>:
   <span class="keyword">virtual</span> <span class="type">void</span> componentComplete()
   {
   <span class="comment">// Perform some initialization here now that the object is fully created</span>
   }
   };</pre>

.. raw:: html

   <!-- @@@qtqml-cppintegration-definetypes.html -->

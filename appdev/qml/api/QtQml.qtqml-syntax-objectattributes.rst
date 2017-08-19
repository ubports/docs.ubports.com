QtQml.qtqml-syntax-objectattributes
===================================

.. raw:: html

   <p>

Every QML object type has a defined set of attributes. Each instance of
an object type is created with the set of attributes that have been
defined for that object type. There are several different kinds of
attributes which can be specified, which are described below.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="attributes-in-object-declarations">

Attributes in Object Declarations

.. raw:: html

   </h2>

.. raw:: html

   <p>

An object declaration in a QML document defines a new type. It also
declares an object hierarchy that will be instantiated should an
instance of that newly defined type be created.

.. raw:: html

   </p>

.. raw:: html

   <p>

The set of QML object-type attribute types is as follows:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

the id attribute

.. raw:: html

   </li>

.. raw:: html

   <li>

property attributes

.. raw:: html

   </li>

.. raw:: html

   <li>

signal attributes

.. raw:: html

   </li>

.. raw:: html

   <li>

signal handler attributes

.. raw:: html

   </li>

.. raw:: html

   <li>

method attributes

.. raw:: html

   </li>

.. raw:: html

   <li>

attached properties and attached signal handler attributes

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

These attributes are discussed in detail below.

.. raw:: html

   </p>

.. raw:: html

   <h3>

The id Attribute

.. raw:: html

   </h3>

.. raw:: html

   <p>

Every QML object type has exactly one id attribute. This attribute is
provided by the language itself, and cannot be redefined or overridden
by any QML object type.

.. raw:: html

   </p>

.. raw:: html

   <p>

A value may be assigned to the id attribute of an object instance to
allow that object to be identified and referred to by other objects.
This id must begin with a lower-case letter or an underscore, and cannot
contain characters other than letters, numbers and underscores.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a TextInput object and a Text object. The TextInput object's id
value is set to "myTextInput". The Text object sets its text property to
have the same value as the text property of the TextInput, by referring
to myTextInput.text. Now, both items will display the same text:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Column</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">TextInput</span> { <span class="name">id</span>: <span class="name">myTextInput</span>; <span class="name">text</span>: <span class="string">&quot;Hello World&quot;</span> }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">myTextInput</span>.<span class="name">text</span> }
   }</pre>

.. raw:: html

   <p>

An object can be referred to by its id from anywhere within the
component scope in which it is declared. Therefore, an id value must
always be unique within its component scope. See Scope and Naming
Resolution for more information.

.. raw:: html

   </p>

.. raw:: html

   <p>

Once an object instance is created, the value of its id attribute cannot
be changed. While it may look like an ordinary property, the id
attribute is not an ordinary property attribute, and special semantics
apply to it; for example, it is not possible to access myTextInput.id in
the above example.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Property Attributes

.. raw:: html

   </h3>

.. raw:: html

   <p>

A property is an attribute of an object that can be assigned a static
value or bound to a dynamic expression. A property's value can be read
by other objects. Generally it can also be modified by another object,
unless a particular QML type has explicitly disallowed this for a
specific property.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Defining Property Attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

A property may be defined for a type in C++ by registering a Q\_PROPERTY
of a class which is then registered with the QML type system.
Alternatively, a custom property of an object type may be defined in an
object declaration in a QML document with the following syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">[</span><span class="keyword">default</span><span class="operator">]</span> property <span class="operator">&lt;</span>propertyType<span class="operator">&gt;</span> <span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

In this way an object declaration may expose a particular value to
outside objects or maintain some internal state more easily.

.. raw:: html

   </p>

.. raw:: html

   <p>

Property names must begin with a lower case letter and can only contain
letters, numbers and underscores. JavaScript reserved words are not
valid property names. The default keyword is optional, and modifies the
semantics of the property being declared. See the upcoming section on
default properties for more information about the default property
modifier.

.. raw:: html

   </p>

.. raw:: html

   <p>

Declaring a custom property implicitly creates a value-change signal for
that property, as well as an associated signal handler called
on<PropertyName>Changed, where <PropertyName> is the name of the
property, with the first letter capitalized.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following object declaration defines a new type which
derives from the Rectangle base type. It has two new properties, with a
signal handler implemented for one of those new properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   property <span class="type">color</span> <span class="name">previousColor</span>
   property <span class="type">color</span> <span class="name">nextColor</span>
   <span class="name">onNextColorChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The next color will be: &quot;</span> <span class="operator">+</span> <span class="name">nextColor</span>.<span class="name">toString</span>())
   }</pre>

.. raw:: html

   <h5>

Valid Types in Custom Property Definitions

.. raw:: html

   </h5>

.. raw:: html

   <p>

Any of the QML Basic Types aside from the enumeration type can be used
as custom property types. For example, these are all valid property
declarations:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   property <span class="type">int</span> <span class="name">someNumber</span>
   property <span class="type">string</span> <span class="name">someString</span>
   property <span class="type">url</span> <span class="name">someUrl</span>
   }</pre>

.. raw:: html

   <p>

(Enumeration values are simply whole number values and can be referred
to with the int type instead.)

.. raw:: html

   </p>

.. raw:: html

   <p>

Some basic types are provided by the QtQuick module and thus cannot be
used as property types unless the module is imported. See the QML Basic
Types documentation for more details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note the var basic type is a generic placeholder type that can hold any
type of value, including lists and objects:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">property var someNumber: <span class="number">1.5</span>
   property var someString: <span class="string">&quot;abc&quot;</span>
   property var someBool: <span class="keyword">true</span>
   property var someList: <span class="operator">[</span><span class="number">1</span><span class="operator">,</span> <span class="number">2</span><span class="operator">,</span> <span class="string">&quot;three&quot;</span><span class="operator">,</span> <span class="string">&quot;four&quot;</span><span class="operator">]</span>
   property var someObject: Rectangle { width: <span class="number">100</span>; height: <span class="number">100</span>; color: <span class="string">&quot;red&quot;</span> }</pre>

.. raw:: html

   <p>

Additionally, any QML object type can be used as a property type. For
example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">property Item someItem
   property Rectangle someRectangle</pre>

.. raw:: html

   <p>

This applies to custom QML types as well. If a QML type was defined in a
file named ColorfulButton.qml (in a directory which was then imported by
the client), then a property of type ColorfulButton would also be valid.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Assigning Values to Property Attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

The value of a property of an object instance may specified in two
separate ways:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

a value assignment on initialization

.. raw:: html

   </li>

.. raw:: html

   <li>

an imperative value assignment

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In either case, the value may be either a static value or a binding
expression value.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Value Assignment on Initialization

.. raw:: html

   </h5>

.. raw:: html

   <p>

The syntax for assigning a value to a property on initialization is:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span> : <span class="operator">&lt;</span>value<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

An initialization value assignment may be combined with a property
definition in an object declaration, if desired. In that case, the
syntax of the property definition becomes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">[</span><span class="keyword">default</span><span class="operator">]</span> property <span class="operator">&lt;</span>propertyType<span class="operator">&gt;</span> <span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span> : <span class="operator">&lt;</span>value<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

An example of property value initialization follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   property <span class="type">color</span> <span class="name">nextColor</span>: <span class="string">&quot;blue&quot;</span> <span class="comment">// combined property declaration and initialization</span>
   }</pre>

.. raw:: html

   <h5>

Imperative Value Assignment

.. raw:: html

   </h5>

.. raw:: html

   <p>

An imperative value assignment is where a property value (either static
value or binding expression) is assigned to a property from imperative
JavaScript code. The syntax of an imperative value assignment is just
the JavaScript assignment operator, as shown below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">[</span><span class="operator">&lt;</span>objectId<span class="operator">&gt;</span><span class="operator">.</span><span class="operator">]</span><span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span> <span class="operator">=</span> value</pre>

.. raw:: html

   <p>

An example of imperative value assignment follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;red&quot;</span>
   }
   }</pre>

.. raw:: html

   <h4>

Static Values and Binding Expression Values

.. raw:: html

   </h4>

.. raw:: html

   <p>

As previously noted, there are two kinds of values which may be assigned
to a property: static values, and binding expression values. The latter
are also known as property bindings.

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

Kind

.. raw:: html

   </th>

.. raw:: html

   <th>

Semantics

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

Static Value

.. raw:: html

   </td>

.. raw:: html

   <td>

A constant value which does not depend on other properties.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

Binding Expression

.. raw:: html

   </td>

.. raw:: html

   <td>

A JavaScript expression which describes a property's relationship with
other properties. The variables in this expression are called the
property's dependencies.

.. raw:: html

   <p>

The QML engine enforces the relationship between a property and its
dependencies. When any of the dependencies change in value, the QML
engine automatically re-evaluates the binding expression and assigns the
new result to the property.

.. raw:: html

   </p>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Here is an example that shows both kinds of values being assigned to
properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="comment">// both of these are static value assignments on initialization</span>
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Rectangle</span> {
   <span class="comment">// both of these are binding expression value assignments on initialization</span>
   <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
   <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
   }
   }</pre>

.. raw:: html

   <p>

Note: To assign a binding expression imperatively, the binding
expression must be contained in a function that is passed into
Qt.binding(), and then the value returned by Qt.binding() must be
assigned to the property. In contrast, Qt.binding() must not be used
when assigning a binding expression upon initialization. See Property
Binding for more information.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Type Safety

.. raw:: html

   </h4>

.. raw:: html

   <p>

Properties are type safe. A property can only be assigned a value that
matches the property type.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if a property is a real, and if you try to assign a string
to it, you will get an error:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">property <span class="type">int</span> volume: <span class="string">&quot;four&quot;</span>  <span class="comment">// generates an error; the property's object will not be loaded</span></pre>

.. raw:: html

   <p>

Likewise if a property is assigned a value of the wrong type during run
time, the new value will not be assigned, and an error will be
generated.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some property types do not have a natural value representation, and for
those property types the QML engine automatically performs
string-to-typed-value conversion. So, for example, even though
properties of the color type store colors and not strings, you are able
to assign the string "red" to a color property, without an error being
reported.

.. raw:: html

   </p>

.. raw:: html

   <p>

See QML Basic Types for a list of the types of properties that are
supported by default. Additionally, any available QML object type may
also be used as a property type.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Special Property Types

.. raw:: html

   </h4>

.. raw:: html

   <h5>

Object List Property Attributes

.. raw:: html

   </h5>

.. raw:: html

   <p>

A list type property can be assigned a list of QML object-type values.
The syntax for defining an object list value is a comma-separated list
surrounded by square brackets:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">[</span> <span class="operator">&lt;</span>item <span class="number">1</span><span class="operator">&gt;</span><span class="operator">,</span> <span class="operator">&lt;</span>item <span class="number">2</span><span class="operator">&gt;</span><span class="operator">,</span> <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> <span class="operator">]</span></pre>

.. raw:: html

   <p>

For example, the Item type has a states property that is used to hold a
list of State type objects. The code below initializes the value of this
property to a list of three State objects:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">states</span>: [
   <span class="type"><a href="QtQml.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;loading&quot;</span> },
   <span class="type"><a href="QtQml.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;running&quot;</span> },
   <span class="type"><a href="QtQml.State.md">State</a></span> { <span class="name">name</span>: <span class="string">&quot;stopped&quot;</span> }
   ]
   }</pre>

.. raw:: html

   <p>

If the list contains a single item, the square brackets may be omitted:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">states</span>: <span class="name">State</span> { <span class="name">name</span>: <span class="string">&quot;running&quot;</span> }
   }</pre>

.. raw:: html

   <p>

A list type property may be specified in an object declaration with the
following syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">[</span><span class="keyword">default</span><span class="operator">]</span> property list<span class="operator">&lt;</span><span class="operator">&lt;</span>objectType<span class="operator">&gt;</span><span class="operator">&gt;</span> propertyName</pre>

.. raw:: html

   <p>

and, like other property declarations, a property initialization may be
combined with the property declaration with the following syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    <span class="operator">[</span><span class="keyword">default</span><span class="operator">]</span> property list<span class="operator">&lt;</span><span class="operator">&lt;</span>objectType<span class="operator">&gt;</span><span class="operator">&gt;</span> propertyName: <span class="operator">&lt;</span>value<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

An example of list property declaration follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="comment">// declaration without initialization</span>
   property list&lt;<span class="type">Rectangle</span>&gt; <span class="name">siblingRects</span>
   <span class="comment">// declaration with initialization</span>
   property list&lt;<span class="type">Rectangle</span>&gt; <span class="name">childRects</span>: [
   <span class="type">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span> },
   <span class="type">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>}
   ]
   }</pre>

.. raw:: html

   <p>

If you wish to declare a property to store a list of values which are
not necessarily QML object-type values, you should declare a var
property instead.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Grouped Properties

.. raw:: html

   </h5>

.. raw:: html

   <p>

In some cases properties contain a logical group of sub-property
attributes. These sub-property attributes can be assigned to using
either the dot notation or group notation.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the Text type has a font group property. Below, the first
Text object initializes its font values using dot notation, while the
second uses group notation:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Text {
   <span class="comment">//dot notation</span>
   font<span class="operator">.</span>pixelSize: <span class="number">12</span>
   font<span class="operator">.</span>b: <span class="keyword">true</span>
   }
   Text {
   <span class="comment">//group notation</span>
   font { pixelSize: <span class="number">12</span>; b: <span class="keyword">true</span> }
   }</pre>

.. raw:: html

   <p>

Grouped property types are basic types which have subproperties. Some of
these basic types are provided by the QML language, while others may
only be used if the Qt Quick module is imported. See the documentation
about QML Basic Types for more information.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Property Aliases

.. raw:: html

   </h4>

.. raw:: html

   <p>

Property aliases are properties which hold a reference to another
property. Unlike an ordinary property definition, which allocates a new,
unique storage space for the property, a property alias connects the
newly declared property (called the aliasing property) as a direct
reference to an existing property (the aliased property).

.. raw:: html

   </p>

.. raw:: html

   <p>

A property alias declaration looks like an ordinary property definition,
except that it requires the alias keyword instead of a property type,
and the right-hand-side of the property declaration must be a valid
alias reference:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">[</span><span class="keyword">default</span><span class="operator">]</span> property alias <span class="operator">&lt;</span>name<span class="operator">&gt;</span>: <span class="operator">&lt;</span>alias reference<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

Unlike an ordinary property, an alias can only refer to a object, or the
property of a object, that is within the scope of the type within which
the alias is declared. It cannot contain arbitrary JavaScript
expressions and it cannot refer to objects declared outside of the scope
of its type. Also note the alias reference is not optional, unlike the
optional default value for an ordinary property; the alias reference
must be provided when the alias is first declared.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a Button type with a buttonText aliased property
which is connected to the text object of the Text child:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// Button.qml</span>
   import QtQuick 2.0
   <span class="type">Rectangle</span> {
   property <span class="type">alias</span> <span class="name">buttonText</span>: <span class="name">textItem</span>.<span class="name">text</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
   <span class="type">Text</span> { <span class="name">id</span>: <span class="name">textItem</span> }
   }</pre>

.. raw:: html

   <p>

The following code would create a Button with a defined text string for
the child Text object:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Button</span> { <span class="name">buttonText</span>: <span class="string">&quot;Click Me&quot;</span> }</pre>

.. raw:: html

   <p>

Here, modifying buttonText directly modifies the textItem.text value; it
does not change some other value that then updates textItem.text. If
buttonText was not an alias, changing its value would not actually
change the displayed text at all, as property bindings are not
bi-directional: the buttonText value would have changed if textItem.text
was changed, but not the other way around.

.. raw:: html

   </p>

.. raw:: html

   <h5>

Considerations for Property Aliases

.. raw:: html

   </h5>

.. raw:: html

   <p>

Aliases are only activated once a component has been fully initialized.
An error is generated when an uninitialized alias is referenced.
Likewise, aliasing an aliasing property will also result in an error.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">property <span class="type">alias</span> <span class="name">widgetLabel</span>: <span class="name">label</span>
   <span class="comment">//will generate an error</span>
   <span class="comment">//widgetLabel.text: &quot;Initial text&quot;</span>
   <span class="comment">//will generate an error</span>
   <span class="comment">//property alias widgetLabelText: widgetLabel.text</span>
   <span class="name">Component</span>.onCompleted: <span class="name">widgetLabel</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Alias completed Initialization&quot;</span></pre>

.. raw:: html

   <p>

When importing a QML object type with a property alias in the root
object, however, the property appear as a regular Qt property and
consequently can be used in alias references.

.. raw:: html

   </p>

.. raw:: html

   <p>

It is possible for an aliasing property to have the same name as an
existing property, effectively overwriting the existing property. For
example, the following QML type has a color alias property, named the
same as the built-in Rectangle::color property:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">coloredrectangle</span>
   property <span class="type">alias</span> <span class="name">color</span>: <span class="name">bluerectangle</span>.<span class="name">color</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">bluerectangle</span>
   <span class="name">color</span>: <span class="string">&quot;#1234ff&quot;</span>
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">console</span>.<span class="name">log</span> (<span class="name">coloredrectangle</span>.<span class="name">color</span>)    <span class="comment">//prints &quot;#1234ff&quot;</span>
   <span class="name">setInternalColor</span>()
   <span class="name">console</span>.<span class="name">log</span> (<span class="name">coloredrectangle</span>.<span class="name">color</span>)    <span class="comment">//prints &quot;#111111&quot;</span>
   <span class="name">coloredrectangle</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;#884646&quot;</span>
   <span class="name">console</span>.<span class="name">log</span> (<span class="name">coloredrectangle</span>.<span class="name">color</span>)    <span class="comment">//prints #884646</span>
   }
   <span class="comment">//internal function that has access to internal properties</span>
   <span class="keyword">function</span> <span class="name">setInternalColor</span>() {
   <span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;#111111&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

Any object that use this type and refer to its color property will be
referring to the alias rather than the ordinary Rectangle::color
property. Internally, however, the red can correctly set its color
property and refer to the actual defined property rather than the alias.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Default Properties

.. raw:: html

   </h4>

.. raw:: html

   <p>

An object definition can have a single default property. A default
property is the property to which a value is assigned if an object is
declared within another object's definition without declaring it as a
value for a particular property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Declaring a property with the optional default keyword marks it as the
default property. For example, say there is a file MyLabel.qml with a
default property someText:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// MyLabel.qml</span>
   import QtQuick 2.0
   <span class="type">Text</span> {
   default property <span class="type">var</span> <span class="name">someText</span>
   <span class="name">text</span>: <span class="string">&quot;Hello, &quot;</span> <span class="operator">+</span> <span class="name">someText</span>.<span class="name">text</span>
   }</pre>

.. raw:: html

   <p>

The someText value could be assigned to in a MyLabel object definition,
like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MyLabel</span> {
   <span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;world!&quot;</span> }
   }</pre>

.. raw:: html

   <p>

This has exactly the same effect as the following:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MyLabel</span> {
   <span class="name">someText</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="string">&quot;world!&quot;</span> }
   }</pre>

.. raw:: html

   <p>

However, since the someText property has been marked as the default
property, it is not necessary to explicitly assign the Text object to
this property.

.. raw:: html

   </p>

.. raw:: html

   <p>

You will notice that child objects can be added to any Item-based type
without explicitly adding them to the children property. This is because
the default property of Item is its data property, and any items added
to this list for an Item are automatically added to its list of
children.

.. raw:: html

   </p>

.. raw:: html

   <p>

Default properties can be useful for reassigning the children of an
item. See the TabWidget Example, which uses a default property to
automatically reassign children of the TabWidget as children of an inner
ListView.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Read-Only Properties

.. raw:: html

   </h4>

.. raw:: html

   <p>

An object declaration may define a read-only property using the readonly
keyword, with the following syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    readonly property <span class="operator">&lt;</span>propertyType<span class="operator">&gt;</span> <span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span> : <span class="operator">&lt;</span>initialValue<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

Read-only properties must be assigned a value on initialization. After a
read-only property is initialized, it no longer possible to give it a
value, whether from imperative code or otherwise.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the code in the Component.onCompleted block below is
invalid:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   readonly property <span class="type">int</span> <span class="name">someNumber</span>: <span class="number">10</span>
   <span class="name">Component</span>.onCompleted: <span class="name">someNumber</span> <span class="operator">=</span> <span class="number">20</span>  <span class="comment">// doesn't work, causes an error</span>
   }</pre>

.. raw:: html

   <p>

Note: A read-only property cannot also be a default or alias property.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Property Modifier Objects

.. raw:: html

   </h4>

.. raw:: html

   <p>

Properties can have property value modifier objects associated with
them. The syntax for declaring an instance of a property modifier type
associated with a particular property is as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span>PropertyModifierTypeName<span class="operator">&gt;</span> on <span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span> {
   <span class="comment">// attributes of the object instance</span>
   }</pre>

.. raw:: html

   <p>

It is important to note that the above syntax is in fact an object
declaration which will instantiate an object which acts on a
pre-existing property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Certain property modifier types may only be applicable to specific
property types, however this is not enforced by the language. For
example, the NumberAnimation type provided by QtQuick will only animate
numeric-type (such as int or real) properties. Attempting to use a
NumberAnimation with non-numeric property will not result in an error,
however the non-numeric property will not be animated. The behavior of a
property modifier type when associated with a particular property type
is defined by its implementation.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Signal Attributes

.. raw:: html

   </h3>

.. raw:: html

   <p>

A signal is a notification from an object that some event has occurred:
for example, a property has changed, an animation has started or
stopped, or when an image has been downloaded. The MouseArea type, for
example, has a clicked signal that is emitted when the user clicks
within the mouse area.

.. raw:: html

   </p>

.. raw:: html

   <p>

An object can be notified through a signal handler whenever it a
particular signal is emitted. A signal handler is declared with the
syntax on<Signal> where <Signal> is the name of the signal, with the
first letter capitalized. The signal handler must be declared within the
definition of the object that emits the signal, and the handler should
contain the block of JavaScript code to be executed when the signal
handler is invoked.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the onClicked signal handler below is declared within the
MouseArea object definition, and is invoked when the MouseArea is
clicked, causing a console message to be printed:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Click!&quot;</span>)
   }
   }
   }</pre>

.. raw:: html

   <h4>

Defining Signal Attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

A signal may be defined for a type in C++ by registering a Q\_SIGNAL of
a class which is then registered with the QML type system.
Alternatively, a custom signal for an object type may be defined in an
object declaration in a QML document with the following syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    signal <span class="operator">&lt;</span>signalName<span class="operator">&gt;</span><span class="operator">[</span>(<span class="operator">[</span><span class="operator">&lt;</span>type<span class="operator">&gt;</span> <span class="operator">&lt;</span>parameter name<span class="operator">&gt;</span><span class="operator">[</span><span class="operator">,</span> <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span><span class="operator">]</span><span class="operator">]</span>)<span class="operator">]</span></pre>

.. raw:: html

   <p>

Attempting to declare two signals or methods with the same name in the
same type block is an error. However, a new signal may reuse the name of
an existing signal on the type. (This should be done with caution, as
the existing signal may be hidden and become inaccessible.)

.. raw:: html

   </p>

.. raw:: html

   <p>

Here are three examples of signal declarations:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   signal <span class="type">clicked</span>
   signal <span class="type">hovered</span>()
   signal <span class="type">actionPerformed</span>(string action, var actionResult)
   }</pre>

.. raw:: html

   <p>

If the signal has no parameters, the "()" brackets are optional. If
parameters are used, the parameter types must be declared, as for the
string and var arguments for the actionPerformed signal above. The
allowed parameter types are the same as those listed under Defining
Property Attributes on this page.

.. raw:: html

   </p>

.. raw:: html

   <p>

To emit a signal, invoke it as a method. Any relevant signal handlers
will be invoked when the signal is emitted, and handlers can use the
defined signal argument names to access the respective arguments.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Property Change Signals

.. raw:: html

   </h4>

.. raw:: html

   <p>

QML types also provide built-in property change signals that are emitted
whenever a property value changes, as previously described in the
section on property attributes. See the upcoming section on property
change signal handlers for more information about why these signals are
useful, and how to use them.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Signal Handler Attributes

.. raw:: html

   </h3>

.. raw:: html

   <p>

Signal handlers are a special sort of method attribute, where the method
implementation is invoked by the QML engine whenever the associated
signal is emitted. Adding a signal to an object definition in QML will
automatically add an associated signal handler to the object definition,
which has, by default, an empty implementation. Clients can provide an
implementation, to implement program logic.

.. raw:: html

   </p>

.. raw:: html

   <p>

Consider the following SquareButton type, whose definition is provided
in the SquareButton.qml file as shown below, with signals activated and
deactivated:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// SquareButton.qml</span>
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">root</span>
   signal <span class="type">activated</span>(real xPosition, real yPosition)
   signal <span class="type">deactivated</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: <span class="name">root</span>.<span class="name">activated</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   <span class="name">onRelased</span>: <span class="name">root</span>.<span class="name">deactivated</span>()
   }
   }</pre>

.. raw:: html

   <p>

These signals could be received by any SquareButton objects in another
QML file in the same directory, where implementations for the signal
handlers are provided by the client:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// myapplication.qml</span>
   <span class="type">SquareButton</span> {
   <span class="name">onActivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Activated at &quot;</span> <span class="operator">+</span> <span class="name">xPosition</span> <span class="operator">+</span> <span class="string">&quot;,&quot;</span> <span class="operator">+</span> <span class="name">yPosition</span>)
   <span class="name">onDeactivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Deactivated!&quot;</span>)
   }</pre>

.. raw:: html

   <p>

See the Signal and Handler Event System for more details on use of
signals.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Property Change Signal Handlers

.. raw:: html

   </h4>

.. raw:: html

   <p>

Signal handlers for property change signal take the syntax form
on<Property>Changed where <Property> is the name of the property, with
the first letter capitalized. For example, although the TextInput type
documentation does not document a textChanged signal, this signal is
implicitly available through the fact that TextInput has a text property
and so it is possible to write an onTextChanged signal handler to be
called whenever this property changes:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">TextInput</span> {
   <span class="name">text</span>: <span class="string">&quot;Change this!&quot;</span>
   <span class="name">onTextChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Text has changed to:&quot;</span>, <span class="name">text</span>)
   }</pre>

.. raw:: html

   <h3>

Method Attributes

.. raw:: html

   </h3>

.. raw:: html

   <p>

A method of an object type is a function which may be called to perform
some processing or trigger further events. A method can be connected to
a signal so that it is automatically invoked whenever the signal is
emitted. See Signal and Handler Event System for more details.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Defining Method Attributes

.. raw:: html

   </h4>

.. raw:: html

   <p>

A method may be defined for a type in C++ by tagging a function of a
class which is then registered with the QML type system with
Q\_INVOKABLE or by registering it as a Q\_SLOT of the class.
Alternatively, a custom method can be added to an object declaration in
a QML document with the following syntax:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    function <span class="operator">&lt;</span>functionName<span class="operator">&gt;</span>(<span class="operator">[</span><span class="operator">&lt;</span>parameterName<span class="operator">&gt;</span><span class="operator">[</span><span class="operator">,</span> <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span><span class="operator">]</span><span class="operator">]</span>) { <span class="operator">&lt;</span>body<span class="operator">&gt;</span> }</pre>

.. raw:: html

   <p>

Methods can be added to a QML type in order to define standalone,
reusable blocks of JavaScript code. These methods can be invoked either
internally or by external objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

Unlike signals, method parameter types do not have to be declared as
they default to the var type.

.. raw:: html

   </p>

.. raw:: html

   <p>

Attempting to declare two methods or signals with the same name in the
same type block is an error. However, a new method may reuse the name of
an existing method on the type. (This should be done with caution, as
the existing method may be hidden and become inaccessible.)

.. raw:: html

   </p>

.. raw:: html

   <p>

Below is a Rectangle with a calculateHeight() method that is called when
assigning the height value:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="keyword">function</span> <span class="name">calculateHeight</span>() {
   <span class="keyword">return</span> <span class="name">rect</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>;
   }
   <span class="name">width</span>: <span class="number">100</span>
   <span class="name">height</span>: <span class="name">calculateHeight</span>()
   }</pre>

.. raw:: html

   <p>

If the method has parameters, they are accessible by name within the
method. Below, when the MouseArea is clicked it invokes the moveTo()
method which can then refer to the received newX and newY parameters to
reposition the text:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">label</span>.<span class="name">moveTo</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">label</span>
   <span class="keyword">function</span> <span class="name">moveTo</span>(<span class="name">newX</span>, newY) {
   <span class="name">label</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">newX</span>;
   <span class="name">label</span>.<span class="name">y</span> <span class="operator">=</span> <span class="name">newY</span>;
   }
   <span class="name">text</span>: <span class="string">&quot;Move me!&quot;</span>
   }
   }</pre>

.. raw:: html

   <h3>

Attached Properties and Attached Signal Handlers

.. raw:: html

   </h3>

.. raw:: html

   <p>

Attached properties and attached signal handlers are mechanisms that
enable objects to be annotated with extra properties or signal handlers
that are otherwise unavailable to the object. In particular, they allow
objects to access properties or signals that are specifically relevant
to the individual object.

.. raw:: html

   </p>

.. raw:: html

   <p>

A QML type implementation may choose to create an attaching type with
particular properties and signals. Instances of this type can then be
created and attached to specific objects at run time, allowing those
objects to access the properties and signals of the attaching type.
These are accessed by prefixing the properties and respective signal
handlers with the name of the attaching type.

.. raw:: html

   </p>

.. raw:: html

   <p>

References to attached properties and handlers take the following syntax
form:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span>AttachingType<span class="operator">&gt;</span><span class="operator">.</span><span class="operator">&lt;</span>propertyName<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>AttachingType<span class="operator">&gt;</span><span class="operator">.</span>on<span class="operator">&lt;</span>SignalName<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

For example, the ListView type has an attached property
ListView.isCurrentItem that is available to each delegate object in a
ListView. This can be used by each individual delegate object to
determine whether it is the currently selected item in the view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListView</span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
   <span class="name">model</span>: <span class="number">3</span>
   <span class="name">delegate</span>: <span class="name">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;yellow&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

In this case, the name of the attaching type is ListView and the
property in question is isCurrentItem, hence the attached property is
referred to as ListView.isCurrentItem.

.. raw:: html

   </p>

.. raw:: html

   <p>

An attached signal handler is referred to in the same way. For example,
the Component.isCompleted attached signal handler is commonly used to
execute some JavaScript code when a component's creation process has
been completed. In the example below, once the ListModel has been fully
created, its Component.onCompleted signal handler will automatically be
invoked to populate the model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListView</span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="name">id</span>: <span class="name">listModel</span>
   <span class="name">Component</span>.onCompleted: {
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">10</span>; i++)
   <span class="name">listModel</span>.<span class="name">append</span>({&quot;Name&quot;: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">i</span>})
   }
   }
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">index</span> }
   }</pre>

.. raw:: html

   <p>

Since the name of the attaching type is Component and that type has a
completed signal, the attached signal handler is referred to as
Component.isCompleted.

.. raw:: html

   </p>

.. raw:: html

   <h4>

A Note About Accessing Attached Properties and Signal Handlers

.. raw:: html

   </h4>

.. raw:: html

   <p>

A common error is to assume that attached properties and signal handlers
are directly accessible from the children of the object to which these
attributes have been attached. This is not the case. The instance of the
attaching type is only attached to specific objects, not to the object
and all of its children.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, below is a modified version of the earlier example
involving attached properties. This time, the delegate is an Item and
the colored Rectangle is a child of that item:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">ListView</span> {
   <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
   <span class="name">model</span>: <span class="number">3</span>
   <span class="name">delegate</span>: <span class="name">Item</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;yellow&quot;</span>    <span class="comment">// WRONG! This won't work.</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

This does not work as expected because ListView.isCurrentItem is
attached only to the root delegate object, and not its children. Since
the Rectangle is a child of the delegate, rather than being the delegate
itself, it cannot access the isCurrentItem attached property as
ListView.isCurrentItem. So instead, the rectangle should access
isCurrentItem through the root delegate:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="comment">//....</span>
   <span class="name">delegate</span>: <span class="name">Item</span> {
   <span class="name">id</span>: <span class="name">delegateItem</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
   <span class="name">color</span>: <span class="name">delegateItem</span>.<span class="name">ListView</span>.<span class="name">isCurrentItem</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;yellow&quot;</span>   <span class="comment">// correct</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

Now delegateItem.ListView.isCurrentItem correctly refers to the
isCurrentItem attached property of the delegate.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-syntax-objectattributes.html -->

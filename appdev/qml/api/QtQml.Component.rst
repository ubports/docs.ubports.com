QtQml.Component
===============

.. raw:: html

   <p>

Encapsulates a QML component definition More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Component -->

.. raw:: html

   <table class="alignedsummary">

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Import Statement:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

import QtQml 2.2

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Instantiates:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

QQmlComponent

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <ul>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

progress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url : url

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="attached-signals">

Attached Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

completed()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

destruction()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

object createObject(Item parent, object properties)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string errorString()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object incubateObject(Item parent, object properties, enumeration mode)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Component-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Components are reusable, encapsulated QML types with well-defined
interfaces.

.. raw:: html

   </p>

.. raw:: html

   <p>

Components are often defined by component files - that is, .qml files.
The Component type essentially allows QML components to be defined
inline, within a QML document, rather than as a separate QML file. This
may be useful for reusing a small component within a QML file, or for
defining a component that logically belongs with other QML components
within a file.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, here is a component that is used by multiple Loader
objects. It contains a single item, a Rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">Component</a></span> {
   <span class="name">id</span>: <span class="name">redSquare</span>
   <span class="type">Rectangle</span> {
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="number">10</span>
   <span class="name">height</span>: <span class="number">10</span>
   }
   }
   <span class="type">Loader</span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span> }
   <span class="type">Loader</span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span>; <span class="name">x</span>: <span class="number">20</span> }
   }</pre>

.. raw:: html

   <p>

Notice that while a Rectangle by itself would be automatically rendered
and displayed, this is not the case for the above rectangle because it
is defined inside a Component. The component encapsulates the QML types
within, as if they were defined in a separate QML file, and is not
loaded until requested (in this case, by the two Loader objects).
Because Component is not derived from Item, you cannot anchor anything
to it.

.. raw:: html

   </p>

.. raw:: html

   <p>

Defining a Component is similar to defining a QML document. A QML
document has a single top-level item that defines the behavior and
properties of that component, and cannot define properties or behavior
outside of that top-level item. In the same way, a Component definition
contains a single top level item (which in the above example is a
Rectangle) and cannot define any data outside of this item, with the
exception of an id (which in the above example is redSquare).

.. raw:: html

   </p>

.. raw:: html

   <p>

The Component type is commonly used to provide graphical components for
views. For example, the ListView::delegate property requires a Component
to specify how each list item is to be displayed.

.. raw:: html

   </p>

.. raw:: html

   <p>

Component objects can also be created dynamically using
Qt.createComponent().

.. raw:: html

   </p>

.. raw:: html

   <h3>

Creation Context

.. raw:: html

   </h3>

.. raw:: html

   <p>

The creation context of a Component corresponds to the context where the
Component was declared. This context is used as the parent context
(creating a context hierarchy) when the component is instantiated by an
object such as a ListView or a Loader.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, comp1 is created within the root context of
MyItem.qml, and any objects instantiated from this component will have
access to the ids and properties within that context, such as
internalSettings.color. When comp1 is used as a ListView delegate in
another context (as in main.qml below), it will continue to have access
to the properties of its creation context (which would otherwise be
private to external users).

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

MyItem.qml

.. raw:: html

   </td>

.. raw:: html

   <td>

main.qml

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type">Item</span> {
   property <span class="type"><a href="index.html">Component</a></span> <span class="name">mycomponent</span>: <span class="name">comp1</span>
   <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
   <span class="name">id</span>: <span class="name">internalSettings</span>
   property <span class="type">color</span> <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
   }
   <span class="type"><a href="index.html">Component</a></span> {
   <span class="name">id</span>: <span class="name">comp1</span>
   <span class="type">Rectangle</span> { <span class="name">color</span>: <span class="name">internalSettings</span>.<span class="name">color</span>; <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">50</span> }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
   <span class="name">model</span>: <span class="number">5</span>
   <span class="name">delegate</span>: <span class="name">myItem</span>.<span class="name">mycomponent</span>    <span class="comment">//will create green Rectangles</span>
   <span class="type">MyItem</span> { <span class="name">id</span>: <span class="name">myItem</span> }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <!-- @@@Component -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$progress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="progress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

progress : real

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

The progress of loading the component, from 0.0 (nothing loaded) to 1.0
(finished).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property holds the status of component loading. The status can be
one of the following:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Component.Null - no data is available for the component

.. raw:: html

   </li>

.. raw:: html

   <li>

Component.Ready - the component has been loaded, and can be used to
create instances.

.. raw:: html

   </li>

.. raw:: html

   <li>

Component.Loading - the component is currently being loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

Component.Error - an error occurred while loading the component. Calling
errorString() will provide a human-readable description of any errors.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="url-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

url : url

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

The component URL. This is the URL that was used to construct the
component.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@url -->

.. raw:: html

   <h2>

Attached Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$completed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="completed-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

completed()

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

Emitted after the object has been instantiated. This can be used to
execute script code at startup, once the full QML environment has been
established.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onCompleted. It can be declared on any
object. The order of running the onCompleted handlers is undefined.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Completed Running!&quot;</span>)
   <span class="type">Rectangle</span> {
   <span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Nested Completed Running!&quot;</span>)
   }
   }</pre>

.. raw:: html

   <!-- @@@completed -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="destruction-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

destruction()

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

Emitted as the object begins destruction. This can be used to undo work
done in response to the completed() signal, or other imperative code in
your application.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onDestruction. It can be declared on any
object. The order of running the onDestruction handlers is undefined.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">Component</span>.onDestruction: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Destruction Beginning!&quot;</span>)
   <span class="type">Rectangle</span> {
   <span class="name">Component</span>.onDestruction: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Nested Destruction Beginning!&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

See also Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@destruction -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$createObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="createObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object createObject(Item parent, object properties)

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

Creates and returns an object instance of this component that will have
the given parent and properties. The properties argument is optional.
Returns null if object creation fails.

.. raw:: html

   </p>

.. raw:: html

   <p>

The object will be created in the same context as the one in which the
component was created. This function will always return null when called
on components which were not created in QML.

.. raw:: html

   </p>

.. raw:: html

   <p>

If you wish to create an object without setting a parent, specify null
for the parent value. Note that if the returned object is to be
displayed, you must provide a valid parent value or set the returned
object's parent property, otherwise the object will not be visible.

.. raw:: html

   </p>

.. raw:: html

   <p>

If a parent is not provided to createObject(), a reference to the
returned object must be held so that it is not destroyed by the garbage
collector. This is true regardless of whether Item::parent is set
afterwards, because setting the Item parent does not change object
ownership. Only the graphical parent is changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

As of QtQuick 1.1, this method accepts an optional properties argument
that specifies a map of initial property values for the created object.
These values are applied before the object creation is finalized. This
is more efficient than setting property values after object creation,
particularly where large sets of property values are defined, and also
allows property bindings to be set up (using Qt.binding) before the
object is created.

.. raw:: html

   </p>

.. raw:: html

   <p>

The properties argument is specified as a map of property-value items.
For example, the code below creates an object with initial x and y
values of 100 and 100, respectively:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Button.qml&quot;</span>);
   <span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>)
   <span class="name">component</span>.<span class="name">createObject</span>(<span class="name">parent</span>, {&quot;x&quot;: <span class="number">100</span>, &quot;y&quot;: <span class="number">100</span>});</pre>

.. raw:: html

   <p>

Dynamically created instances can be deleted with the destroy() method.
See Dynamic QML Object Creation from JavaScript for more information.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also incubateObject().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@createObject -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string errorString()

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

Returns a human-readable description of any error.

.. raw:: html

   </p>

.. raw:: html

   <p>

The string includes the file, location, and description of each error.
If multiple errors are present, they are separated by a newline
character.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no errors are present, an empty string is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="incubateObject-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object incubateObject(Item parent, object properties, enumeration mode)

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

Creates an incubator for an instance of this component. Incubators allow
new component instances to be instantiated asynchronously and do not
cause freezes in the UI.

.. raw:: html

   </p>

.. raw:: html

   <p>

The parent argument specifies the parent the created instance will have.
Omitting the parameter or passing null will create an object with no
parent. In this case, a reference to the created object must be held so
that it is not destroyed by the garbage collector.

.. raw:: html

   </p>

.. raw:: html

   <p>

The properties argument is specified as a map of property-value items
which will be set on the created object during its construction. mode
may be Qt.Synchronous or Qt.Asynchronous, and controls whether the
instance is created synchronously or asynchronously. The default is
asynchronous. In some circumstances, even if Qt.Synchronous is
specified, the incubator may create the object asynchronously. This
happens if the component calling incubateObject() is itself being
created asynchronously.

.. raw:: html

   </p>

.. raw:: html

   <p>

All three arguments are optional.

.. raw:: html

   </p>

.. raw:: html

   <p>

If successful, the method returns an incubator, otherwise null. The
incubator has the following properties:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

status The status of the incubator. Valid values are Component.Ready,
Component.Loading and Component.Error.

.. raw:: html

   </li>

.. raw:: html

   <li>

object The created object instance. Will only be available once the
incubator is in the Ready status.

.. raw:: html

   </li>

.. raw:: html

   <li>

onStatusChanged Specifies a callback function to be invoked when the
status changes. The status is passed as a parameter to the callback.

.. raw:: html

   </li>

.. raw:: html

   <li>

forceCompletion() Call to complete incubation synchronously.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The following example demonstrates how to use an incubator:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Button.qml&quot;</span>);
   var <span class="name">incubator</span> = <span class="name">component</span>.<span class="name">incubateObject</span>(<span class="name">parent</span>, { x: <span class="number">10</span>, y: <span class="number">10</span> });
   <span class="keyword">if</span> (<span class="name">incubator</span>.<span class="name">status</span> <span class="operator">!=</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
   <span class="name">incubator</span>.<span class="name">onStatusChanged</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">status</span>) {
   <span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
   <span class="name">print</span> (<span class="string">&quot;Object&quot;</span>, <span class="name">incubator</span>.<span class="name">object</span>, <span class="string">&quot;is now ready!&quot;</span>);
   }
   }
   } <span class="keyword">else</span> {
   <span class="name">print</span> (<span class="string">&quot;Object&quot;</span>, <span class="name">incubator</span>.<span class="name">object</span>, <span class="string">&quot;is ready immediately!&quot;</span>);
   }</pre>

.. raw:: html

   <p>

Dynamically created instances can be deleted with the destroy() method.
See Dynamic QML Object Creation from JavaScript for more information.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also createObject().

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@incubateObject -->



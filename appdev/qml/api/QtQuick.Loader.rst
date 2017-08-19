QtQuick.Loader
==============

.. raw:: html

   <p>

Allows dynamic loading of a subtree from a URL or Component More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Loader -->

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

import QtQuick 2.4

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Inherits:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

.. raw:: html

   <p>

Item

.. raw:: html

   </p>

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

active : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

asynchronous : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

item : object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

progress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sourceComponent : Component

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

loaded()

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

object setSource(url source, object properties)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Loader-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Loader is used to dynamically load QML components.

.. raw:: html

   </p>

.. raw:: html

   <p>

Loader can load a QML file (using the source property) or a Component
object (using the sourceComponent property). It is useful for delaying
the creation of a component until it is required: for example, when a
component should be created on demand, or when a component should not be
created unnecessarily for performance reasons.

.. raw:: html

   </p>

.. raw:: html

   <p>

Here is a Loader that loads "Page1.qml" as a component when the
MouseArea is clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="index.html">Loader</a></span> { <span class="name">id</span>: <span class="name">pageLoader</span> }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">pageLoader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;Page1.qml&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

The loaded object can be accessed using the item property.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the source or sourceComponent changes, any previously instantiated
items are destroyed. Setting source to an empty string or setting
sourceComponent to undefined destroys the currently loaded object,
freeing resources and leaving the Loader empty.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Loader sizing behavior

.. raw:: html

   </h3>

.. raw:: html

   <p>

If the source component is not an Item type, Loader does not apply any
special sizing rules. When used to load visual types, Loader applies the
following sizing rules:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

If an explicit size is not specified for the Loader, the Loader is
automatically resized to the size of the loaded item once the component
is loaded.

.. raw:: html

   </li>

.. raw:: html

   <li>

If the size of the Loader is specified explicitly by setting the width,
height or by anchoring, the loaded item will be resized to the size of
the Loader.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

In both scenarios the size of the item and the Loader are identical.
This ensures that anchoring to the Loader is equivalent to anchoring to
the loaded item.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

sizeloader.qml

.. raw:: html

   </td>

.. raw:: html

   <td>

sizeitem.qml

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="comment">// Explicitly set the size of the Loader to the parent item's size</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">sourceComponent</span>: <span class="name">rect</span>
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="comment">// position the Loader in the center of the parent</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">sourceComponent</span>: <span class="name">rect</span>
   }
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">50</span>
   <span class="name">height</span>: <span class="number">50</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

The red rectangle will be sized to the size of the root item.

.. raw:: html

   </td>

.. raw:: html

   <td>

The red rectangle will be 50x50, centered in the root item.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <h3>

Receiving signals from loaded objects

.. raw:: html

   </h3>

.. raw:: html

   <p>

Any signals emitted from the loaded object can be received using the
Connections type. For example, the following application.qml loads
MyItem.qml, and is able to receive the message signal from the loaded
item through a Connections object:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.qml

.. raw:: html

   </td>

.. raw:: html

   <td>

MyItem.qml

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">id</span>: <span class="name">myLoader</span>
   <span class="name">source</span>: <span class="string">&quot;MyItem.qml&quot;</span>
   }
   <span class="type">Connections</span> {
   <span class="name">target</span>: <span class="name">myLoader</span>.<span class="name">item</span>
   <span class="name">onMessage</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">msg</span>)
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">myItem</span>
   signal <span class="type">message</span>(string msg)
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">myItem</span>.<span class="name">message</span>(<span class="string">&quot;clicked!&quot;</span>)
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

Alternatively, since MyItem.qml is loaded within the scope of the
Loader, it could also directly call any function defined in the Loader
or its parent Item.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Focus and key events

.. raw:: html

   </h3>

.. raw:: html

   <p>

Loader is a focus scope. Its focus property must be set to true for any
of its children to get the active focus. (See Keyboard Focus in Qt Quick
for more details.) Any key events received in the loaded item should
likely also be accepted so they are not propagated to the Loader.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the following application.qml loads KeyReader.qml when the
MouseArea is clicked. Notice the focus property is set to true for the
Loader as well as the Item in the dynamically loaded object:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

application.qml

.. raw:: html

   </td>

.. raw:: html

   <td>

KeyReader.qml

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">id</span>: <span class="name">loader</span>
   <span class="name">focus</span>: <span class="number">true</span>
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">loader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;KeyReader.qml&quot;</span>
   }
   <span class="name">Keys</span>.onPressed: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Captured:&quot;</span>, <span class="name">event</span>.<span class="name">text</span>);
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Loaded item captured:&quot;</span>, <span class="name">event</span>.<span class="name">text</span>);
   <span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
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

Once KeyReader.qml is loaded, it accepts key events and sets
event.accepted to true so that the event is not propagated to the parent
Rectangle.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since QtQuick 2.0, Loader can also load non-visual components.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using a Loader within a view delegate

.. raw:: html

   </h3>

.. raw:: html

   <p>

In some cases you may wish to use a Loader within a view delegate to
improve delegate loading performance. This works well in most cases, but
there is one important issue to be aware of related to the creation
context of a Component.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example, the index context property inserted by the
ListView into delegateComponent's context will be inaccessible to Text,
as the Loader will use the creation context of myComponent as the parent
context when instantiating it, and index does not refer to anything
within that context chain.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">400</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">myComponent</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">index</span> }    <span class="comment">//fails</span>
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">5</span>
   <span class="name">delegate</span>: <span class="name">Component</span> {
   <span class="name">id</span>: <span class="name">delegateComponent</span>
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">sourceComponent</span>: <span class="name">myComponent</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

In this situation we can either move the component inline,

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">delegate</span>: <span class="name">Component</span> {
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">sourceComponent</span>: <span class="name">Component</span> {
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">index</span> }    <span class="comment">//okay</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

into a separate file,

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="name">delegate</span>: <span class="name">Component</span> {
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">source</span>: <span class="string">&quot;MyComponent.qml&quot;</span> <span class="comment">//okay</span>
   }
   }</pre>

.. raw:: html

   <p>

or explicitly set the required information as a property of the Loader
(this works because the Loader sets itself as the context object for the
component it is loading).

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">400</span>
   <span class="name">height</span>: <span class="number">400</span>
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">myComponent</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">modelIndex</span> }    <span class="comment">//okay</span>
   }
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">model</span>: <span class="number">5</span>
   <span class="name">delegate</span>: <span class="name">Component</span> {
   <span class="type"><a href="index.html">Loader</a></span> {
   property <span class="type">int</span> <span class="name">modelIndex</span>: <span class="name">index</span>
   <span class="name">sourceComponent</span>: <span class="name">myComponent</span>
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

See also Dynamic Object Creation.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Loader -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="active-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

active : bool

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

This property is true if the Loader is currently active. The default
value for this property is true.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the Loader is inactive, changing the source or sourceComponent will
not cause the item to be instantiated until the Loader is made active.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting the value to inactive will cause any item loaded by the loader
to be released, but will not affect the source or sourceComponent.

.. raw:: html

   </p>

.. raw:: html

   <p>

The status of an inactive loader is always Null.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also source and sourceComponent.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@active -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="asynchronous-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

asynchronous : bool

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

This property holds whether the component will be instantiated
asynchronously.

.. raw:: html

   </p>

.. raw:: html

   <p>

When used in conjunction with the source property, loading and
compilation will also be performed in a background thread.

.. raw:: html

   </p>

.. raw:: html

   <p>

Loading asynchronously creates the objects declared by the component
across multiple frames, and reduces the likelihood of glitches in
animation. When loading asynchronously the status will change to
Loader.Loading. Once the entire component has been created, the item
will be available and the status will change to Loader.Ready.

.. raw:: html

   </p>

.. raw:: html

   <p>

To avoid seeing the items loading progressively set visible
appropriately, e.g.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Loader {
   source: <span class="string">&quot;mycomponent.qml&quot;</span>
   asynchronous: <span class="keyword">true</span>
   visible: status <span class="operator">=</span><span class="operator">=</span> Loader<span class="operator">.</span>Ready
   }</pre>

.. raw:: html

   <p>

Note that this property affects object instantiation only; it is
unrelated to loading a component asynchronously via a network.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@asynchronous -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="item-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

item : object

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

This property holds the top-level object that is currently loaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since QtQuick 2.0, Loader can load any object type.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@item -->

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

This property holds the progress of loading QML data from the network,
from 0.0 (nothing loaded) to 1.0 (finished). Most QML files are quite
small, so this value will rapidly change from 0 to 1.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also status.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

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

This property holds the URL of the QML component to instantiate.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since QtQuick 2.0, Loader is able to load any type of object; it is not
restricted to Item types.

.. raw:: html

   </p>

.. raw:: html

   <p>

To unload the currently loaded object, set this property to an empty
string, or set sourceComponent to undefined. Setting source to a new URL
will also cause the item created by the previous URL to be unloaded.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also sourceComponent, status, and progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sourceComponent-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sourceComponent : Component

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

This property holds the Component to instantiate.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type">Component</span> {
   <span class="name">id</span>: <span class="name">redSquare</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">10</span> }
   }
   <span class="type"><a href="index.html">Loader</a></span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span> }
   <span class="type"><a href="index.html">Loader</a></span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span>; <span class="name">x</span>: <span class="number">10</span> }
   }</pre>

.. raw:: html

   <p>

To unload the currently loaded object, set this property to undefined.

.. raw:: html

   </p>

.. raw:: html

   <p>

Since QtQuick 2.0, Loader is able to load any type of object; it is not
restricted to Item types.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also source and progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sourceComponent -->

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

This property holds the status of QML loading. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Loader.Null - the loader is inactive or no QML source has been set

.. raw:: html

   </li>

.. raw:: html

   <li>

Loader.Ready - the QML source has been loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

Loader.Loading - the QML source is currently being loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

Loader.Error - an error occurred while loading the QML source

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Use this status to provide an update or respond to the status change in
some way. For example, you could:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Trigger a state change:

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">'loaded'</span>; <span class="name">when</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span> }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Implement an onStatusChanged signal handler:

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">id</span>: <span class="name">loader</span>
   <span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Bind to the status value:

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span> ? <span class="string">'Loaded'</span> : <span class="string">'Not loaded'</span> }</pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note that if the source is a local file, the status will initially be
Ready (or Error). While there will be no onStatusChanged signal in that
case, the onLoaded will still be invoked.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$loaded -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="loaded-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

loaded()

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

This signal is emitted when the status becomes Loader.Ready, or on
successful initial load.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onLoaded.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@loaded -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$setSource -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="setSource-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object setSource(url source, object properties)

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

Creates an object instance of the given source component that will have
the given properties. The properties argument is optional. The instance
will be accessible via the item property once loading and instantiation
is complete.

.. raw:: html

   </p>

.. raw:: html

   <p>

If the active property is false at the time when this function is
called, the given source component will not be loaded but the source and
initial properties will be cached. When the loader is made active, an
instance of the source component will be created with the initial
properties set.

.. raw:: html

   </p>

.. raw:: html

   <p>

Setting the initial property values of an instance of a component in
this manner will not trigger any associated Behaviors.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that the cached properties will be cleared if the source or
sourceComponent is changed after calling this function but prior to
setting the loader active.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// ExampleComponent.qml</span>
   import QtQuick 2.0
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">width</span>: <span class="number">10</span>
   <span class="name">height</span>: <span class="number">10</span>
   Behavior on <span class="name">color</span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
   <span class="name">target</span>: <span class="name">rect</span>
   <span class="name">property</span>: <span class="string">&quot;width&quot;</span>
   <span class="name">to</span>: (<span class="name">rect</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>)
   <span class="name">duration</span>: <span class="number">0</span>
   }
   }
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// example.qml</span>
   import QtQuick 2.0
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">Loader</a></span> {
   <span class="name">id</span>: <span class="name">squareLoader</span>
   <span class="name">onLoaded</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">squareLoader</span>.<span class="name">item</span>.<span class="name">width</span>); <span class="comment">// prints [10], not [30]</span>
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">squareLoader</span>.<span class="name">setSource</span>(<span class="string">&quot;ExampleComponent.qml&quot;</span>, { &quot;color&quot;: <span class="string">&quot;blue&quot;</span> });
   <span class="comment">// will trigger the onLoaded code when complete.</span>
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

See also source and active.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@setSource -->



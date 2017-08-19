Ubuntu.Components.StateSaver
============================

.. raw:: html

   <p>

Attached properties to save component property states. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateSaver -->

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

import Ubuntu.Components 1.3

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

enabled : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

properties : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$StateSaver-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

StateSaver attached object provides the ability to save component
property values that can be restored after an inproper application
close. The properties subject of serialization must be given in the
properties as a string, separated with commas. The serialization will
happen automatically on component's completion time, as well as when the
application is deactivated. Automatic serialization of a component can
be turned off by simply setting false to enabled property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: The application name must be set correctly to the package name so
that state saving can work (e.g. com.ubuntu.calendar) through MainView's
applicationName property.

.. raw:: html

   </p>

.. raw:: html

   <p>

States saved are discarded when the application is closed properly. The
state loading is ignored (but not discarded) when the application is
launched through UriHandler.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">id</span>: <span class="name">input</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;text&quot;</span>
   <span class="name">StateSaver</span>.enabled: <span class="name">input</span>.<span class="name">enabled</span>
   }</pre>

.. raw:: html

   <p>

In this example the state saver is synchronized with the attachee's one.

.. raw:: html

   </p>

.. raw:: html

   <p>

Group properties can also be serialized by specifying the path to their
individual properties.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">color</span>: <span class="string">&quot;gray&quot;</span>
   <span class="type">border</span> {
   <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
   }
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;color, border.color, border.width&quot;</span>
   }</pre>

.. raw:: html

   <p>

StateSaver computes a unique identifier for the attachee using the
component's and all its parents' id. Therefore attachee component as
well as all its parents must have a valid ID set.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example will give error for the input, as the root
component has no id specified:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="comment">//[...]</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">parent</span>
   <span class="comment">//[...]</span>
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">id</span>: <span class="name">input</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;text&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

but the following example will successfully save the text field content

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="comment">//[...]</span>
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">parent</span>
   <span class="comment">//[...]</span>
   <span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">id</span>: <span class="name">input</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;text&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

When used with Repeater, each created item from the Repeater's delegate
will be saved separately. Note that due to the way Repeater works,
Repeaters do not need to have id specified.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">root</span>
   <span class="comment">// [...]</span>
   <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
   <span class="name">model</span>: <span class="number">10</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;width, height&quot;</span>
   }
   }
   <span class="comment">// [...]</span>
   }</pre>

.. raw:: html

   <p>

It can be used in the same way in ListView or GridView, except that both
ListView and GridView must have an id set.

.. raw:: html

   </p>

.. raw:: html

   <p>

The StateSaver can save all QML base types, Objects, list of objects or
variants containing any of these cannot be saved.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StateSaver -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="enabled-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

enabled : bool

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

The property drives the automatic state saving. When disabled, state
saving will not happen on properties.

.. raw:: html

   </p>

.. raw:: html

   <p>

The default value is true.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@enabled -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="properties-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

properties : string

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

List of properties to be serialized, separated with commas. Properties
must be writable and can only be QML base types.

.. raw:: html

   </p>

.. raw:: html

   <p>

A custom single line input which saves the text, placeholderText, font
and color would look as follows:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
   <span class="name">id</span>: <span class="name">input</span>
   <span class="name">StateSaver</span>.properties: <span class="string">&quot;text, placeholderText, font, color&quot;</span>
   }</pre>

.. raw:: html

   <!-- @@@properties -->



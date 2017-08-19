QtQml.Connections
=================

.. raw:: html

   <p>

Describes generalized connections to signals More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Connections -->

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

ignoreUnknownSignals : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

target : Object

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Connections-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A Connections object creates a connection to a QML signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

When connecting to signals in QML, the usual way is to create an
"on<Signal>" handler that reacts when a signal is received, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MouseArea</span> {
   <span class="name">onClicked</span>: { <span class="name">foo</span>(<span class="name">parameters</span>) }
   }</pre>

.. raw:: html

   <p>

However, it is not possible to connect to a signal in this way in some
cases, such as when:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Multiple connections to the same signal are required

.. raw:: html

   </li>

.. raw:: html

   <li>

Creating connections outside the scope of the signal sender

.. raw:: html

   </li>

.. raw:: html

   <li>

Connecting to targets not defined in QML

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

When any of these are needed, the Connections type can be used instead.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the above code can be changed to use a Connections object,
like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MouseArea</span> {
   <span class="type"><a href="index.html">Connections</a></span> {
   <span class="name">onClicked</span>: <span class="name">foo</span>(<span class="name">parameters</span>)
   }
   }</pre>

.. raw:: html

   <p>

More generally, the Connections object can be a child of some object
other than the sender of the signal:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">area</span>
   }
   <span class="comment">// ...</span></pre>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Connections</a></span> {
   <span class="name">target</span>: <span class="name">area</span>
   <span class="name">onClicked</span>: <span class="name">foo</span>(<span class="name">parameters</span>)
   }</pre>

.. raw:: html

   <p>

See also Qt QML.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Connections -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$ignoreUnknownSignals -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ignoreUnknownSignals-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ignoreUnknownSignals : bool

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

Normally, a connection to a non-existent signal produces runtime errors.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is set to true, such errors are ignored. This is useful
if you intend to connect to different types of objects, handling a
different set of signals for each object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ignoreUnknownSignals -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="target-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

target : Object

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

This property holds the object that sends the signal.

.. raw:: html

   </p>

.. raw:: html

   <p>

If this property is not set, the target defaults to the parent of the
Connection.

.. raw:: html

   </p>

.. raw:: html

   <p>

If set to null, no connection is made and any signal handlers are
ignored until the target is not null.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@target -->



QtQml.WorkerScript
==================

.. raw:: html

   <p>

Enables the use of threads in a Qt Quick application More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WorkerScript -->

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

import QtQuick .

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

source : url

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

message(jsobject msg)

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

sendMessage(jsobject message)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$WorkerScript-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Use WorkerScript to run operations in a new thread. This is useful for
running operations in the background so that the main GUI thread is not
blocked.

.. raw:: html

   </p>

.. raw:: html

   <p>

Messages can be passed between the new thread and the parent thread
using sendMessage() and the onMessage() handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

An example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="type">Text</span> {
   <span class="name">id</span>: <span class="name">myText</span>
   <span class="name">text</span>: <span class="string">'Click anywhere'</span>
   }
   <span class="type"><a href="index.html">WorkerScript</a></span> {
   <span class="name">id</span>: <span class="name">myWorker</span>
   <span class="name">source</span>: <span class="string">&quot;script.js&quot;</span>
   <span class="name">onMessage</span>: <span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">messageObject</span>.<span class="name">reply</span>
   }
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">myWorker</span>.<span class="name">sendMessage</span>({ 'x': <span class="name">mouse</span>.<span class="name">x</span>, 'y': <span class="name">mouse</span>.<span class="name">y</span> })
   }
   }</pre>

.. raw:: html

   <p>

The above worker script specifies a JavaScript file, "script.js", that
handles the operations to be performed in the new thread. Here is
script.js:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">message</span>) {
   <span class="comment">// ... long-running operations and calculations are done here</span>
   <span class="name">WorkerScript</span>.<span class="name">sendMessage</span>({ 'reply': <span class="string">'Mouse is at '</span> <span class="operator">+</span> <span class="name">message</span>.<span class="name">x</span> <span class="operator">+</span> <span class="string">','</span> <span class="operator">+</span> <span class="name">message</span>.<span class="name">y</span> })
   }</pre>

.. raw:: html

   <p>

When the user clicks anywhere within the rectangle, sendMessage() is
called, triggering the WorkerScript.onMessage() handler in script.js.
This in turn sends a reply message that is then received by the
onMessage() handler of myWorker.

.. raw:: html

   </p>

.. raw:: html

   <h4>

Restrictions

.. raw:: html

   </h4>

.. raw:: html

   <p>

Since the WorkerScript.onMessage() function is run in a separate thread,
the JavaScript file is evaluated in a context separate from the main QML
engine. This means that unlike an ordinary JavaScript file that is
imported into QML, the script.js in the above example cannot access the
properties, methods or other attributes of the QML item, nor can it
access any context properties set on the QML object through QQmlContext.

.. raw:: html

   </p>

.. raw:: html

   <p>

Additionally, there are restrictions on the types of values that can be
passed to and from the worker script. See the sendMessage()
documentation for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Worker script can not use .import syntax.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick Examples - Threading and Threaded ListModel Example.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@WorkerScript -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$source -->

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

This holds the url of the JavaScript file that implements the
WorkerScript.onMessage() handler for threaded operations.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$message -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="message-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

message(jsobject msg)

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

This signal is emitted when a message msg is received from a worker
script in another thread through a call to sendMessage().

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onMessage.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@message -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$sendMessage -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sendMessage-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

sendMessage(jsobject message)

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

Sends the given message to a worker script handler in another thread.
The other worker script handler can receive this message through the
onMessage() handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

The message object may only contain values of the following types:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

boolean, number, string

.. raw:: html

   </li>

.. raw:: html

   <li>

JavaScript objects and arrays

.. raw:: html

   </li>

.. raw:: html

   <li>

ListModel objects (any other type of QObject\* is not allowed)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

All objects and arrays are copied to the message. With the exception of
ListModel objects, any modifications by the other thread to an object
passed in message will not be reflected in the original object.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sendMessage -->



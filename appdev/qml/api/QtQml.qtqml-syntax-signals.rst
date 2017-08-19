QtQml.qtqml-syntax-signals
==========================

.. raw:: html

   <p>

Application and user interface components need to communicate with each
other. For example, a button needs to know that the user has clicked on
it. The button may change colors to indicate its state or perform some
logic. As well, application needs to know whether the user is clicking
the button. The application may need to relay this clicking event to
other applications.

.. raw:: html

   </p>

.. raw:: html

   <p>

QML has a signal and handler mechanism, where the signal is the event
and the signal is responded to through a signal handler. When a signal
is emitted, the corresponding signal handler is invoked. Placing logic
such as scripts or other operations in the handler allows the component
to respond to the event.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="receiving-signals-with-signal-handlers">

Receiving Signals with Signal Handlers

.. raw:: html

   </h2>

.. raw:: html

   <p>

To receive a notification when a particular signal is emitted for a
particular object, the object definition should declare a signal handler
named on<Signal> where <Signal> is the name of the signal, with the
first letter capitalized. The signal handler should contain the
JavaScript code to be executed when the signal handler is invoked.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the MouseArea type from the QtQuick module has a clicked
signal that is emitted whenever the mouse is clicked within the area.
Since the signal name is clicked, the signal handler for receiving this
signal should be named onClicked. In the example below, whenever the
mouse area is clicked, the onClicked handler is invoked, applying a
random color to the Rectangle:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

Looking at the MouseArea documentation, you can see the clicked signal
is emitted with a parameter named mouse which is a MouseEvent object
that contains further details about the mouse click event. This name can
be referred to in our onClicked handler to access this parameter. For
example, the MouseEvent type has x and y coordinates that allows us to
print out the exact location where the mouse was clicked:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: {
   <span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
   <span class="comment">// access 'mouse' parameter</span>
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked mouse at&quot;</span>, <span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   }
   }</pre>

.. raw:: html

   <h3>

Property Change Signal Handlers

.. raw:: html

   </h3>

.. raw:: html

   <p>

A signal is automatically emitted when the value of a QML property
changes. This type of signal is a property change signal and signal
handlers for these signals are written in the form on<Property>Changed
where <Property> is the name of the property, with the first letter
capitalized.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the MouseArea type has a pressed property. To receive a
notification whenever this property changes, write a signal handler
named onPressedChanged:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressedChanged</span>: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Mouse area is pressed?&quot;</span>, <span class="name">pressed</span>)
   }
   }
   }</pre>

.. raw:: html

   <p>

Even though the MouseArea documentation does not document a signal
handler named onPressedChanged, the signal is implicitly provided by the
fact that the pressed property exists.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using the Connections Type

.. raw:: html

   </h3>

.. raw:: html

   <p>

In some cases it may be desirable to access a signal outside of the
object that emits it. For these purposes, the QtQuick module provides
the Connections type for connecting to signals of arbitrary objects. A
Connections object can receive any signal from its specified target.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, the onClicked handler in the earlier example could have
been received by the root Rectangle instead, by placing the onClicked
handler in a Connections object that has its target set to the
MouseArea:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">rect</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mouseArea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   }
   <span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
   <span class="name">target</span>: <span class="name">mouseArea</span>
   <span class="name">onClicked</span>: {
   <span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
   }
   }
   }</pre>

.. raw:: html

   <h3>

Attached Signal Handlers

.. raw:: html

   </h3>

.. raw:: html

   <p>

An attached signal handler is a signal handler that receives a signal
from an attaching type rather than the object within which the handler
is declared.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, :raw-latex:`\l`
{Component::isCompleted}{Component.isCompleted} is an attached signal
handler. This handler is often used to execute some JavaScript code when
its creation process has been completed, as in the example below:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Rectangle</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Qt</span>.<span class="name">random</span>(), <span class="name">Qt</span>.<span class="name">random</span>(), <span class="name">Qt</span>.<span class="name">random</span>(), <span class="number">1</span>)
   <span class="name">Component</span>.onCompleted: {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The rectangle's color is&quot;</span>, <span class="name">color</span>)
   }
   }</pre>

.. raw:: html

   <p>

The onCompleted handler is not responding to some completed signal from
the Rectangle type. Instead, an object of the Component attaching type
with a completed signal has automatically been attached to the Rectangle
object by the QML engine, and the engine emits this signal when the
object is fully created, thus triggering the Component.onCompleted
signal handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

Attached signal handlers allow objects to be notified of particular
signals that are significant to each individual object. If there was no
Component.onCompleted attached signal handler, for example, then an
object could not receive this notification without registering for some
special signal from some special object. The attached signal handler
mechanism enables objects to receive particular signals without these
extra processes.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Attached properties and attached signal handlers for more
information on attached signal handlers.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="adding-signals-to-custom-qml-types">

Adding Signals to Custom QML Types

.. raw:: html

   </h2>

.. raw:: html

   <p>

Signals can be added to custom QML types through the signal keyword.

.. raw:: html

   </p>

.. raw:: html

   <p>

The syntax for defining a new signal is:

.. raw:: html

   </p>

.. raw:: html

   <p>

signal <name>[([<type> <parameter name>[, ...]])]

.. raw:: html

   </p>

.. raw:: html

   <p>

A signal is emitted by invoking the signal as a method.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, say the code below is defined in a file named
SquareButton.qml. The root Rectangle object has an activated signal.
When the child MouseArea is clicked, it emits the parent's activated
signal with the coordinates of the mouse click:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// SquareButton.qml</span>
   <span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">root</span>
   signal <span class="type">activated</span>(real xPosition, real yPosition)
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="type">MouseArea</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onPressed</span>: <span class="name">root</span>.<span class="name">activated</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
   }
   }</pre>

.. raw:: html

   <p>

Now any objects of the SquareButton can connect to the activated signal
using an onActivated signal handler:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// myapplication.qml</span>
   <span class="type">SquareButton</span> {
   <span class="name">onActivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Activated at &quot;</span> <span class="operator">+</span> <span class="name">xPosition</span> <span class="operator">+</span> <span class="string">&quot;,&quot;</span> <span class="operator">+</span> <span class="name">yPosition</span>)
   }</pre>

.. raw:: html

   <p>

See Signal Attributes for more details on writing signals for custom QML
types.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="connecting-signals-to-methods-and-signals">

Connecting Signals to Methods and Signals

.. raw:: html

   </h2>

.. raw:: html

   <p>

Signal objects have a connect() method to a connect a signal either to a
method or another signal. When a signal is connected to a method, the
method is automatically invoked whenever the signal is emitted. This
mechanism enables a signal to be received by a method instead of a
signal handler.

.. raw:: html

   </p>

.. raw:: html

   <p>

Below, the messageReceived signal is connected to three methods using
the connect() method:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">relay</span>
   signal <span class="type">messageReceived</span>(string person, string notice)
   <span class="name">Component</span>.onCompleted: {
   <span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToPost</span>)
   <span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToTelegraph</span>)
   <span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToEmail</span>)
   <span class="name">relay</span>.<span class="name">messageReceived</span>(<span class="string">&quot;Tom&quot;</span>, <span class="string">&quot;Happy Birthday&quot;</span>)
   }
   <span class="keyword">function</span> <span class="name">sendToPost</span>(<span class="name">person</span>, notice) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to post: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
   }
   <span class="keyword">function</span> <span class="name">sendToTelegraph</span>(<span class="name">person</span>, notice) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to telegraph: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
   }
   <span class="keyword">function</span> <span class="name">sendToEmail</span>(<span class="name">person</span>, notice) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to email: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
   }
   }</pre>

.. raw:: html

   <p>

In many cases it is sufficient to receive signals through signal
handlers rather than using the connect() function. However, using the
connect method allows a signal to be received by multiple methods as
shown above, which would not be possible with signal handlers as they
must be uniquely named. Also, the connect method is useful when
connecting signals to dynamically created objects.

.. raw:: html

   </p>

.. raw:: html

   <p>

There is a corresponding disconnect() method for removing connected
signals:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">relay</span>
   <span class="comment">//...</span>
   <span class="keyword">function</span> <span class="name">removeTelegraphSignal</span>() {
   <span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">disconnect</span>(<span class="name">sendToTelegraph</span>)
   }
   }</pre>

.. raw:: html

   <h4>

Signal to Signal Connect

.. raw:: html

   </h4>

.. raw:: html

   <p>

By connecting signals to other signals, the connect() method can form
different signal chains.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Rectangle</span> {
   <span class="name">id</span>: <span class="name">forwarder</span>
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   signal <span class="type">send</span>()
   <span class="name">onSend</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Send clicked&quot;</span>)
   <span class="type">MouseArea</span> {
   <span class="name">id</span>: <span class="name">mousearea</span>
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;MouseArea clicked&quot;</span>)
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">mousearea</span>.<span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">send</span>)
   }
   }</pre>

.. raw:: html

   <p>

Whenever the MouseArea clicked signal is emitted, the send signal will
automatically be emitted as well.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">output:
   MouseArea clicked
   Send clicked</pre>

.. raw:: html

   <!-- @@@qtqml-syntax-signals.html -->

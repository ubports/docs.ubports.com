QtQuick.qtquick-input-focus
===========================

.. raw:: html

   <p>

When a key is pressed or released, a key event is generated and
delivered to the focused Qt Quick Item. To facilitate the construction
of reusable components and to address some of the cases unique to fluid
user interfaces, the Qt Quick items add a scope based extension to Qt's
traditional keyboard focus model.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="key-handling-overview">

Key Handling Overview

.. raw:: html

   </h2>

.. raw:: html

   <p>

When the user presses or releases a key, the following occurs:

.. raw:: html

   </p>

.. raw:: html

   <ol class="1">

.. raw:: html

   <li>

Qt receives the key action and generates a key event.

.. raw:: html

   </li>

.. raw:: html

   <li>

If a QQuickWindow is the active window, the key event is delivered to
it.

.. raw:: html

   </li>

.. raw:: html

   <li>

The key event is delivered by the scene to the Item with active focus.
If no item has active focus, the key event is ignored.

.. raw:: html

   </li>

.. raw:: html

   <li>

If the QQuickItem with active focus accepts the key event, propagation
stops. Otherwise the event is sent to the Item's parent until the event
is accepted, or the root item is reached.

.. raw:: html

   <p>

If the Rectangle type in the following example has active focus and the
A key is pressed, the event will not be propagated further. Upon
pressing the B key, the event will propagate to the root item and thus
be ignored.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Key A was pressed'</span>);
   <span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
   }
   }
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

If the root Item is reached, the key event is ignored and regular Qt key
handling continues.

.. raw:: html

   </li>

.. raw:: html

   </ol>

.. raw:: html

   <p>

See also the Keys attached property and KeyNavigation attached property.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="querying-the-active-focus-item">

Querying the Active Focus Item

.. raw:: html

   </h2>

.. raw:: html

   <p>

Whether or not an Item has active focus can be queried through the
property Item::activeFocus property. For example, here we have a Text
type whose text is determined by whether or not it has active focus.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="name">activeFocus</span> ? <span class="string">&quot;I have active focus!&quot;</span> : <span class="string">&quot;I do not have active focus&quot;</span>
   }</pre>

.. raw:: html

   <h2 id="acquiring-focus-and-focus-scopes">

Acquiring Focus and Focus Scopes

.. raw:: html

   </h2>

.. raw:: html

   <p>

An Item requests focus by setting the focus property to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

For very simple cases simply setting the focus property is sometimes
sufficient. If we run the following example with qmlscene, we see that
the keyHandler type has active focus and pressing the A, B, or C keys
modifies the text appropriately.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">25</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">myText</span> }
   <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">keyHandler</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
   <span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
   <span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
   <span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

However, were the above example to be used as a reusable or imported
component, this simple use of the focus property is no longer
sufficient.

.. raw:: html

   </p>

.. raw:: html

   <p>

To demonstrate, we create two instances of our previously defined
component and set the first one to have focus. The intention is that
when the A, B, or C keys are pressed, the first of the two components
receives the event and responds accordingly.

.. raw:: html

   </p>

.. raw:: html

   <p>

The code that imports and creates two MyWidget instances:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">//Window code that imports MyWidget</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">window</span>
   <span class="name">color</span>: <span class="string">&quot;white&quot;</span>; <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">150</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">spacing</span>: <span class="number">15</span>
   <span class="type">MyWidget</span> {
   <span class="name">focus</span>: <span class="number">true</span>             <span class="comment">//set this MyWidget to receive the focus</span>
   <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
   }
   <span class="type">MyWidget</span> {
   <span class="name">color</span>: <span class="string">&quot;palegreen&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The MyWidget code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">widget</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">175</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span>}
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
   }
   }</pre>

.. raw:: html

   <p>

We would like to have the first MyWidget object to have the focus by
setting its focus property to true. However, by running the code, we can
confirm that the second widget receives the focus.

.. raw:: html

   </p>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Looking at both MyWidget and window code, the problem is evident - there
are three types that set the focus property set to true. The two
MyWidget sets the focus to true and the window component also sets the
focus. Ultimately, only one type can have keyboard focus, and the system
has to decide which type receives the focus. When the second MyWidget is
created, it receives the focus because it is the last type to set its
focus property to true.

.. raw:: html

   </p>

.. raw:: html

   <p>

This problem is due to visibility. The MyWidget component would like to
have the focus, but it cannot control the focus when it is imported or
reused. Likewise, the window component does not have the ability to know
if its imported components are requesting the focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

To solve this problem, the QML introduces a concept known as a focus
scope. For existing Qt users, a focus scope is like an automatic focus
proxy. A focus scope is created by declaring the FocusScope type.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the next example, a FocusScope type is added to the component, and
the visual result shown.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
   <span class="comment">//FocusScope needs to bind to visual properties of the Rectangle</span>
   property <span class="type">alias</span> <span class="name">color</span>: <span class="name">rectangle</span>.<span class="name">color</span>
   <span class="name">x</span>: <span class="name">rectangle</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">rectangle</span>.<span class="name">y</span>
   <span class="name">width</span>: <span class="name">rectangle</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">rectangle</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">175</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Conceptually focus scopes are quite simple.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Within each focus scope one object may have Item::focus set to true. If
more than one Item has the focus property set, the last type to set the
focus will have the focus and the others are unset, similar to when
there are no focus scopes.

.. raw:: html

   </li>

.. raw:: html

   <li>

When a focus scope receives active focus, the contained type with focus
set (if any) also gets the active focus. If this type is also a
FocusScope, the proxying behavior continues. Both the focus scope and
the sub-focused item will have activeFocus property set.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Note that, since the FocusScope type is not a visual type, the
properties of its children need to be exposed to the parent item of the
FocusScope. Layouts and positioning types will use these visual and
styling properties to create the layout. In our example, the Column type
cannot display the two widgets properly because the FocusScope lacks
visual properties of its own. The MyWidget component directly binds to
the rectangle properties to allow the Column type to create the layout
containing the children of the FocusScope.

.. raw:: html

   </p>

.. raw:: html

   <p>

So far, the example has the second component statically selected. It is
trivial now to extend this component to make it clickable, and add it to
the original application. We still set one of the widgets as focused by
default. Now, clicking either MyClickableWidget gives it focus and the
other widget loses the focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

The code that imports and creates two MyClickableWidget instances:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">window</span>
   <span class="name">color</span>: <span class="string">&quot;white&quot;</span>; <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">150</span>
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">spacing</span>: <span class="number">15</span>
   <span class="type">MyClickableWidget</span> {
   <span class="name">focus</span>: <span class="number">true</span>             <span class="comment">//set this MyWidget to receive the focus</span>
   <span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
   }
   <span class="type">MyClickableWidget</span> {
   <span class="name">color</span>: <span class="string">&quot;palegreen&quot;</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The MyClickableWidget code:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
   <span class="name">id</span>: <span class="name">scope</span>
   <span class="comment">//FocusScope needs to bind to visual properties of the children</span>
   property <span class="type">alias</span> <span class="name">color</span>: <span class="name">rectangle</span>.<span class="name">color</span>
   <span class="name">x</span>: <span class="name">rectangle</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">rectangle</span>.<span class="name">y</span>
   <span class="name">width</span>: <span class="name">rectangle</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">rectangle</span>.<span class="name">height</span>
   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">id</span>: <span class="name">rectangle</span>
   <span class="name">anchors</span>.centerIn: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">175</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">antialiasing</span>: <span class="number">true</span>
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">Keys</span>.onPressed: {
   <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
   <span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
   <span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
   }
   }
   <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: { <span class="name">scope</span>.<span class="name">focus</span> <span class="operator">=</span> <span class="number">true</span> } }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

When a QML Item explicitly relinquishes focus (by setting its focus
property to false while it has active focus), the system does not
automatically select another type to receive focus. That is, it is
possible for there to be no currently active focus.

.. raw:: html

   </p>

.. raw:: html

   <p>

See Qt Quick Examples - Key Interaction for a demonstration of moving
keyboard focus between multiple areas using FocusScope types.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="advanced-uses-of-focus-scopes">

Advanced Uses of Focus Scopes

.. raw:: html

   </h2>

.. raw:: html

   <p>

Focus scopes allow focus to allocation to be easily partitioned. Several
QML items use it to this effect.

.. raw:: html

   </p>

.. raw:: html

   <p>

ListView, for example, is itself a focus scope. Generally this isn't
noticeable as ListView doesn't usually have manually added visual
children. By being a focus scope, ListView can focus the current list
item without worrying about how that will effect the rest of the
application. This allows the current item delegate to react to key
presses.

.. raw:: html

   </p>

.. raw:: html

   <p>

This contrived example shows how this works. Pressing the Return key
will print the name of the current list item.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
   <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">model</span>: <span class="name">ListModel</span> {
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Bob&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;John&quot;</span> }
   <span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Michael&quot;</span> }
   }
   <span class="name">delegate</span>: <span class="name">FocusScope</span> {
   <span class="name">width</span>: <span class="name">childrenRect</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
   <span class="name">x</span>:<span class="name">childrenRect</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">childrenRect</span>.<span class="name">y</span>
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   <span class="name">focus</span>: <span class="number">true</span>
   <span class="name">text</span>: <span class="name">name</span>
   <span class="name">Keys</span>.onReturnPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="name">name</span>)
   }
   }
   }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

While the example is simple, there are a lot going on behind the scenes.
Whenever the current item changes, the ListView sets the delegate's
Item::focus property. As the ListView is a focus scope, this doesn't
affect the rest of the application. However, if the ListView itself has
active focus this causes the delegate itself to receive active focus. In
this example, the root type of the delegate is also a focus scope, which
in turn gives active focus to the Text type that actually performs the
work of handling the Return key.

.. raw:: html

   </p>

.. raw:: html

   <p>

All of the QML view classes, such as PathView and GridView, behave in a
similar manner to allow key handling in their respective delegates.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtquick-input-focus.html -->

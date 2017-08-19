QtQuick.qtquick-demos-calqlatr-example
======================================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Calqlatr demonstrates various QML and Qt Quick features, such as
displaying custom components and using animation to move the components
around in the application view. The application logic is implemented in
JavaScript and the appearance is implemented in QML.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

To run the example from Qt Creator, open the Welcome mode and select the
example from Examples. For more information, visit Building and Running
an Example.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="displaying-custom-components">

Displaying Custom Components

.. raw:: html

   </h2>

.. raw:: html

   <p>

In the Calqlatr application, we use the following custom types that are
each defined in a separate .qml file:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

Display.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

NumberPad.qml

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

To use the custom types, we add an import statement to the main QML
file, calqlatr.qml that imports the folder called content where the
types are located:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="string">&quot;content&quot;</span></pre>

.. raw:: html

   <p>

We can then display custom components by adding the component types to
any QML file. For example, we use the NumberPad type in calqlatr.qml to
create the number pad of the calculator. We place the type inside an
Item QML type, which is the base type for all visual items in Qt Quick:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">id</span>: <span class="name">pad</span>
   <span class="name">width</span>: <span class="number">180</span>
   <span class="type">NumberPad</span> { <span class="name">id</span>: <span class="name">numPad</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
   }</pre>

.. raw:: html

   <p>

Further, we use the Button type in the NumberPad type to create the
calculator buttons. Button.qml specifies the basic properties for a
button that we can modify for each button instance in NumberPad.qml. For
the digit and separator buttons, we additionally specify the text
property using the property alias text that we define in Button.qml.

.. raw:: html

   </p>

.. raw:: html

   <p>

For the operator buttons, we also specify another color (green) using
the property alias color and set the operator property to true. We use
the operator property in functions that perform the calculations.

.. raw:: html

   </p>

.. raw:: html

   <p>

We place the buttons inside a Grid QML type to position them in a grid:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
   <span class="name">columns</span>: <span class="number">3</span>
   <span class="name">columnSpacing</span>: <span class="number">32</span>
   <span class="name">rowSpacing</span>: <span class="number">16</span>
   signal <span class="type">buttonPressed</span>
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;7&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;8&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;9&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;4&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;5&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;6&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;1&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;2&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;3&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;0&quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;.&quot;</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot; &quot;</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;±&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;−&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;+&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;√&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;÷&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;×&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;C&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot; &quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span> }
   <span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;=&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
   }</pre>

.. raw:: html

   <p>

Some of the buttons also have a dimmable property set, meaning that they
can be visually disabled (dimmed) whenever the calculator engine does
not accept input from that button. As an example, the button for square
root operator is dimmed for negative values.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="animating-components">

Animating Components

.. raw:: html

   </h2>

.. raw:: html

   <p>

We use the Display type to display calculations. In Display.qml, we use
images to make the display component look like a slip of paper that
contains a grip. Users can drag the grip to move the display from left
to right.

.. raw:: html

   </p>

.. raw:: html

   <p>

When users release the grip, the AnimationController QML type that we
define in the calqlatr.qml file finishes running the controlled
animation in either a forwards or a backwards direction. To run the
animation, we call either completeToEnd() or completeToBeginning(),
depending on the direction. We do this in the MouseArea's onReleased
signal handler, where controller is the id of our AnimationController:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">        <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
   ...
   <span class="name">onReleased</span>: {
   <span class="keyword">if</span> (<span class="name">rewind</span>)
   <span class="name">controller</span>.<span class="name">completeToBeginning</span>()
   <span class="keyword">else</span>
   <span class="name">controller</span>.<span class="name">completeToEnd</span>()
   }
   }</pre>

.. raw:: html

   <p>

Unlike other QML animation types, AnimationController is not driven by
internal timers but by explicitly setting its progress property to a
value between 0.0 and 1.0.

.. raw:: html

   </p>

.. raw:: html

   <p>

Inside the AnimationController, we run two NumberAnimation instances in
parallel to move the number pad and the display components
simultaneously to the opposite sides of the view. In addition, we run a
SequentialAnimation instance to scale the number pad during the
transition, giving the animation some depth.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.AnimationController.md">AnimationController</a></span> {
   <span class="name">id</span>: <span class="name">controller</span>
   <span class="name">animation</span>: <span class="name">ParallelAnimation</span> {
   <span class="name">id</span>: <span class="name">anim</span>
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">display</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">from</span>: -<span class="number">16</span>; <span class="name">to</span>: <span class="name">window</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">display</span>.<span class="name">width</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">pad</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">from</span>: <span class="name">window</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">pad</span>.<span class="name">width</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">pad</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">duration</span>: <span class="number">200</span>; <span class="name">from</span>: <span class="number">1</span>; <span class="name">to</span>: <span class="number">0.97</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">pad</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">duration</span>: <span class="number">200</span>; <span class="name">from</span>: <span class="number">0.97</span>; <span class="name">to</span>: <span class="number">1</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
   }
   }
   }</pre>

.. raw:: html

   <p>

We use the easing curve of the type Easing.InOutQuad to accelerate the
motion until halfway and then decelerate it.

.. raw:: html

   </p>

.. raw:: html

   <p>

In Button.qml, the text colors of the number pad buttons are also
animated.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">id</span>: <span class="name">textItem</span>
   ...
   <span class="name">color</span>: (<span class="name">dimmable</span> <span class="operator">&amp;&amp;</span> <span class="name">dimmed</span>) ? <span class="name">Qt</span>.<span class="name">darker</span>(<span class="name">button</span>.<span class="name">color</span>) : <span class="name">button</span>.<span class="name">color</span>
   Behavior on <span class="name">color</span> { <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">120</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutElastic</span>} }
   <span class="name">states</span>: [
   <span class="type"><a href="QtQuick.State.md">State</a></span> {
   <span class="name">name</span>: <span class="string">&quot;pressed&quot;</span>
   <span class="name">when</span>: <span class="name">mouse</span>.<span class="name">pressed</span> <span class="operator">&amp;&amp;</span> !<span class="name">dimmed</span>
   <span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
   <span class="name">target</span>: <span class="name">textItem</span>
   <span class="name">color</span>: <span class="name">Qt</span>.<span class="name">lighter</span>(<span class="name">button</span>.<span class="name">color</span>)
   }
   }
   ]
   }</pre>

.. raw:: html

   <p>

We use Qt.darker() to darken the color when the button is dimmed, and
Qt.lighter() to light up the button when pressed. The latter is done in
a separate state called "pressed", which activates when the pressed
property of the button's MouseArea is set.

.. raw:: html

   </p>

.. raw:: html

   <p>

The color changes are animated by defining a Behavior on the color
property.

.. raw:: html

   </p>

.. raw:: html

   <p>

In order to dynamically change the dimmed property of all the buttons of
the NumberPad, we connect its buttonPressed signal to the Button's
updateDimmed() function in Button.qml:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">updateDimmed</span>() {
   <span class="name">dimmed</span> <span class="operator">=</span> <span class="name">window</span>.<span class="name">isButtonDisabled</span>(<span class="name">button</span>.<span class="name">text</span>)
   }
   <span class="name">Component</span>.onCompleted: {
   <span class="name">numPad</span>.<span class="name">buttonPressed</span>.<span class="name">connect</span>(<span class="name">updateDimmed</span>)
   <span class="name">updateDimmed</span>()
   }</pre>

.. raw:: html

   <p>

This way, when a button is pressed, all buttons on the NumPad receive a
buttonPressed signal and are activated or deactivated according to the
state of the calculator engine.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="performing-calculations">

Performing Calculations

.. raw:: html

   </h2>

.. raw:: html

   <p>

The calculator.js file defines our calculator engine. It contains
variables to store the calculator state, and functions that are called
when the user presses the digit and operator buttons. To use the engine,
we import calculator.js in the calqlatr.qml file as CalcEngine:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="string">&quot;content/calculator.js&quot;</span> as CalcEngine</pre>

.. raw:: html

   <p>

Importing the engine creates a new instance of it. Therefore, we only do
it in the main QML file, calqlatr.qml. The root item defined in this
file contains helper functions that allow other types to access the
calculator engine:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="keyword">function</span> <span class="name">operatorPressed</span>(<span class="name">operator</span>) {
   <span class="name">CalcEngine</span>.<span class="name">operatorPressed</span>(<span class="name">operator</span>)
   <span class="name">numPad</span>.<span class="name">buttonPressed</span>()
   }
   <span class="keyword">function</span> <span class="name">digitPressed</span>(<span class="name">digit</span>) {
   <span class="name">CalcEngine</span>.<span class="name">digitPressed</span>(<span class="name">digit</span>)
   <span class="name">numPad</span>.<span class="name">buttonPressed</span>()
   }
   <span class="keyword">function</span> <span class="name">isButtonDisabled</span>(<span class="name">op</span>) {
   <span class="keyword">return</span> <span class="name">CalcEngine</span>.<span class="name">disabled</span>(<span class="name">op</span>)
   }</pre>

.. raw:: html

   <p>

When users press a digit, the text from the digit appears on the
display. When they press an operator, the appropriate calculation is
performed, and the result can be displayed using the equals (=)
operator. The clear (C) operator resets the calculator engine.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="list-of-files">

List of Files

.. raw:: html

   </h2>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

demos/calqlatr/calqlatr.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/content/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/content/Display.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/content/NumberPad.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/content/calculator.js

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/calqlatr.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/calqlatr.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

demos/calqlatr/calqlatr.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also QML Applications.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@demos/calqlatr -->

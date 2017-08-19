QtQuick.qtquick-window-example
==============================

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

Window and Screen shows how to:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

create a window in QML

.. raw:: html

   </li>

.. raw:: html

   <li>

control its visibility

.. raw:: html

   </li>

.. raw:: html

   <li>

present a splash screen during application startup

.. raw:: html

   </li>

.. raw:: html

   <li>

access the properties of the Screen

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

It also demonstrates how to package QML into resources and provide an
icon to create a standalone QML desktop application.

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

   <h2 id="window-implementation">

Window Implementation

.. raw:: html

   </h2>

.. raw:: html

   <p>

A splash screen can be created with the Qt.SplashScreen flag, and should
be ApplicationModal to prevent interaction with the main window. If the
splash window is also transparent, and showing a partially transparent
image, then it will look like a shaped window.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Window.Window.md">Window</a></span> {
   <span class="name">id</span>: <span class="name">splash</span>
   <span class="name">color</span>: <span class="string">&quot;transparent&quot;</span>
   <span class="name">title</span>: <span class="string">&quot;Splash Window&quot;</span>
   <span class="name">modality</span>: <span class="name">Qt</span>.<span class="name">ApplicationModal</span>
   <span class="name">flags</span>: <span class="name">Qt</span>.<span class="name">SplashScreen</span>
   property <span class="type">int</span> <span class="name">timeoutInterval</span>: <span class="number">2000</span>
   signal <span class="type">timeout</span></pre>

.. raw:: html

   <p>

In this example a Timer will automatically dismiss the splash screen,
but in a real application you might want to connect to a signal from the
application logic to hide the splash when initialization is complete.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Timer</span> {
   <span class="name">interval</span>: <span class="name">timeoutInterval</span>; <span class="name">running</span>: <span class="number">true</span>; <span class="name">repeat</span>: <span class="number">false</span>
   <span class="name">onTriggered</span>: {
   <span class="name">visible</span> <span class="operator">=</span> <span class="number">false</span>
   <span class="name">splash</span>.<span class="name">timeout</span>()
   }
   }</pre>

.. raw:: html

   <p>

The main window in this example is the control window, with some buttons
and checkboxes to control and provide feedback on the state of a
secondary window. Each checkbox has a binding to the property whose
state it is displaying, and also an onClicked handler to change the
state. This is the typical pattern to create a two-way binding while
avoiding binding loops.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Shared</span>.CheckBox {
   <span class="name">text</span>: <span class="string">&quot;Windowed&quot;</span>
   <span class="name">height</span>: <span class="name">showButton</span>.<span class="name">height</span>
   <span class="name">width</span>: <span class="name">col</span>.<span class="name">cellWidth</span>
   Binding on <span class="name">checked</span> { <span class="name">value</span>: <span class="name">testWindow</span>.<span class="name">visibility</span> <span class="operator">===</span> <span class="name">Window</span>.<span class="name">Windowed</span> }
   <span class="name">onClicked</span>: <span class="name">testWindow</span>.<span class="name">visibility</span> <span class="operator">=</span> <span class="name">Window</span>.<span class="name">Windowed</span>
   }</pre>

.. raw:: html

   <p>

Screen has several properties which are generally useful to applications
which need to rotate some content when the screen orientation changes,
to position windows on the screen or to convert real units to logical
pixel units. ScreenInfo.qml (which is displayed inline in window.qml, or
can be run by itself with qmlscene) simply displays the property values,
while the splash screen uses them to center the window on the screen.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">x</span>: (<span class="name">Screen</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">splashImage</span>.<span class="name">width</span>) <span class="operator">/</span> <span class="number">2</span>
   <span class="name">y</span>: (<span class="name">Screen</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">splashImage</span>.<span class="name">height</span>) <span class="operator">/</span> <span class="number">2</span></pre>

.. raw:: html

   <p>

If a Window is nested inside an Item or another Window, the inner window
becomes transient for the outer one (see Window for more explanation).
But if you want to create multiple top-level windows as unrelated peers,
you can create them inside a non-visual QtObject root item, as this
example does.

.. raw:: html

   </p>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

window/ScreenInfo.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

window/Splash.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

window/window.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

window/resources/icon.svg

.. raw:: html

   </li>

.. raw:: html

   <li>

window/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

window/window.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

window/window.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@window -->

QtQuick.qtquick-quick-accessibility-example
===========================================

.. raw:: html

   <p>

Accessibility demonstrates QML types that are augmented with meta-data
for accessibility systems. For more information, visit the Accessibility
page.

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

   <h2 id="implementing-accessible-buttons">

Implementing Accessible Buttons

.. raw:: html

   </h2>

.. raw:: html

   <p>

The button identifies itself and its functionality to the accessibility
system:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">Accessible</span>.name: <span class="name">text</span>
   <span class="name">Accessible</span>.description: <span class="string">&quot;This button does &quot;</span> <span class="operator">+</span> <span class="name">text</span>
   <span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">Button</span>
   <span class="name">Accessible</span>.onPressAction: {
   <span class="name">button</span>.<span class="name">clicked</span>()
   }</pre>

.. raw:: html

   <p>

Similarly, Text types inside the example also identify themselves:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">StaticText</span>
   <span class="name">Accessible</span>.name: <span class="name">text</span></pre>

.. raw:: html

   <p>

Files:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

quick-accessibility/accessibility.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/content/Button.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/content/Checkbox.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/content/Slider.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/accessibility.qmlproject

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/accessibility.qrc

.. raw:: html

   </li>

.. raw:: html

   <li>

quick-accessibility/quick-accessibility.pro

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@quick-accessibility -->

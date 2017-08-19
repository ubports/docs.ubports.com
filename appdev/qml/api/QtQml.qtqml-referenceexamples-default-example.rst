QtQml.qtqml-referenceexamples-default-example
=============================================

.. raw:: html

   <p>

This example builds on:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Extending QML - Inheritance and Coercion Example

.. raw:: html

   </li>

.. raw:: html

   <li>

Extending QML - Object and List Property Types Example

.. raw:: html

   </li>

.. raw:: html

   <li>

Extending QML - Adding Types Example

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

The Default Property Example is a minor modification of the Extending
QML - Inheritance and Coercion Example that simplifies the specification
of a BirthdayParty through the use of a default property.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">BirthdayParty</span> {
   <span class="name">host</span>: <span class="name">Boy</span> {
   <span class="name">name</span>: <span class="string">&quot;Bob Jones&quot;</span>
   <span class="name">shoeSize</span>: <span class="number">12</span>
   }
   <span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Leo Hodges&quot;</span> }
   <span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Jack Smith&quot;</span> }
   <span class="type">Girl</span> { <span class="name">name</span>: <span class="string">&quot;Anne Brown&quot;</span> }
   }</pre>

.. raw:: html

   <h2 id="declaring-the-birthdayparty-class">

Declaring the BirthdayParty Class

.. raw:: html

   </h2>

.. raw:: html

   <p>

The only difference between this example and the last, is the addition
of the DefaultProperty class info annotation.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> BirthdayParty : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(Person <span class="operator">*</span>host READ host WRITE setHost)
   Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests READ guests)
   Q_CLASSINFO(<span class="string">&quot;DefaultProperty&quot;</span><span class="operator">,</span> <span class="string">&quot;guests&quot;</span>)
   <span class="keyword">public</span>:
   BirthdayParty(<span class="type">QObject</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
   Person <span class="operator">*</span>host() <span class="keyword">const</span>;
   <span class="type">void</span> setHost(Person <span class="operator">*</span>);
   <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests();
   <span class="type">int</span> guestCount() <span class="keyword">const</span>;
   Person <span class="operator">*</span>guest(<span class="type">int</span>) <span class="keyword">const</span>;
   <span class="keyword">private</span>:
   Person <span class="operator">*</span>m_host;
   <span class="type">QList</span><span class="operator">&lt;</span>Person <span class="operator">*</span><span class="operator">&gt;</span> m_guests;
   };</pre>

.. raw:: html

   <p>

The default property specifies the property to assign to whenever an
explicit property is not specified, in the case of the BirthdayParty
type the guest property. It is purely a syntactic simplification, the
behavior is identical to specifying the property by name, but it can add
a more natural feel in many situations. The default property must be
either an object or list property.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The main.cpp file in the example includes a simple shell application
that loads and runs the QML snippet shown at the beginning of this page.

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

referenceexamples/default/birthdayparty.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/birthdayparty.h

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/example.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/person.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/person.h

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/default.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/default/default.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@referenceexamples/default -->

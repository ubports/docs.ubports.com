QtQml.qtqml-referenceexamples-coercion-example
==============================================

.. raw:: html

   <p>

This example builds on:

.. raw:: html

   </p>

.. raw:: html

   <ul>

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

The Inheritance and Coercion Example shows how to use base classes to
assign types of more than one type to a property. It specializes the
Person type developed in the previous examples into two types - a Boy
and a Girl.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">BirthdayParty</span> {
   <span class="name">host</span>: <span class="name">Boy</span> {
   <span class="name">name</span>: <span class="string">&quot;Bob Jones&quot;</span>
   <span class="name">shoeSize</span>: <span class="number">12</span>
   }
   <span class="name">guests</span>: [
   <span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Leo Hodges&quot;</span> },
   <span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Jack Smith&quot;</span> },
   <span class="type">Girl</span> { <span class="name">name</span>: <span class="string">&quot;Anne Brown&quot;</span> }
   ]
   }</pre>

.. raw:: html

   <h2 id="declare-boy-and-girl">

Declare Boy and Girl

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Boy : <span class="keyword">public</span> Person
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   Boy(<span class="type">QObject</span> <span class="operator">*</span> parent <span class="operator">=</span> <span class="number">0</span>);
   };
   <span class="keyword">class</span> Girl : <span class="keyword">public</span> Person
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   Girl(<span class="type">QObject</span> <span class="operator">*</span> parent <span class="operator">=</span> <span class="number">0</span>);
   };</pre>

.. raw:: html

   <p>

The Person class remains unaltered in this example and the Boy and Girl
C++ classes are trivial extensions of it. As an example, the inheritance
used here is a little contrived, but in real applications it is likely
that the two extensions would add additional properties or modify the
Person classes behavior.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Define People as a base class

.. raw:: html

   </h3>

.. raw:: html

   <p>

The implementation of the People class itself has not changed since the
previous example. However, as we have repurposed the People class as a
common base for Boy and Girl, we want to prevent it from being
instantiated from QML directly - an explicit Boy or Girl should be
instantiated instead.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">qmlRegisterType<span class="operator">&lt;</span>Person<span class="operator">&gt;</span>();</pre>

.. raw:: html

   <p>

While we want to disallow instantiating Person from within QML, it still
needs to be registered with the QML engine, so that it can be used as a
property type and other types can be coerced to it.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Define Boy and Girl

.. raw:: html

   </h3>

.. raw:: html

   <p>

The implementation of Boy and Girl are trivial.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Boy<span class="operator">::</span>Boy(<span class="type">QObject</span> <span class="operator">*</span> parent)
   : Person(parent)
   {
   }
   Girl<span class="operator">::</span>Girl(<span class="type">QObject</span> <span class="operator">*</span> parent)
   : Person(parent)
   {
   }</pre>

.. raw:: html

   <p>

All that is necessary is to implement the constructor, and to register
the types and their QML name with the QML engine.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="running-the-example">

Running the Example

.. raw:: html

   </h2>

.. raw:: html

   <p>

The BirthdayParty type has not changed since the previous example. The
celebrant and guests property still use the People type.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">    Q_PROPERTY(Person <span class="operator">*</span>host READ host WRITE setHost)
   Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests READ guests)</pre>

.. raw:: html

   <p>

However, as all three types, Person, Boy and Girl, have been registered
with the QML system, on assignment QML automatically (and type-safely)
converts the Boy and Girl objects into a Person.

.. raw:: html

   </p>

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

referenceexamples/coercion/birthdayparty.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/birthdayparty.h

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/example.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/person.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/person.h

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/coercion.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/coercion/coercion.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@referenceexamples/coercion -->

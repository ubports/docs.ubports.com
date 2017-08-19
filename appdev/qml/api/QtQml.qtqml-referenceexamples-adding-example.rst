QtQml.qtqml-referenceexamples-adding-example
============================================

.. raw:: html

   <p>

The Adding Types Example shows how to add a new object type, Person, to
QML. The Person type can be used from QML like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import People 1.0
   <span class="type">Person</span> {
   <span class="name">name</span>: <span class="string">&quot;Bob Jones&quot;</span>
   <span class="name">shoeSize</span>: <span class="number">12</span>
   }</pre>

.. raw:: html

   <h2 id="declare-the-person-class">

Declare the Person Class

.. raw:: html

   </h2>

.. raw:: html

   <p>

All QML types map to C++ types. Here we declare a basic C++ Person class
with the two properties we want accessible on the QML type - name and
shoeSize. Although in this example we use the same name for the C++
class as the QML type, the C++ class can be named differently, or appear
in a namespace.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> Person : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName)
   Q_PROPERTY(<span class="type">int</span> shoeSize READ shoeSize WRITE setShoeSize)
   <span class="keyword">public</span>:
   Person(<span class="type">QObject</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
   <span class="type">QString</span> name() <span class="keyword">const</span>;
   <span class="type">void</span> setName(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>);
   <span class="type">int</span> shoeSize() <span class="keyword">const</span>;
   <span class="type">void</span> setShoeSize(<span class="type">int</span>);
   <span class="keyword">private</span>:
   <span class="type">QString</span> m_name;
   <span class="type">int</span> m_shoeSize;
   };</pre>

.. raw:: html

   <h2 id="define-the-person-class">

Define the Person Class

.. raw:: html

   </h2>

.. raw:: html

   <pre class="cpp">Person<span class="operator">::</span>Person(<span class="type">QObject</span> <span class="operator">*</span>parent)
   : <span class="type">QObject</span>(parent)<span class="operator">,</span> m_shoeSize(<span class="number">0</span>)
   {
   }
   <span class="type">QString</span> Person<span class="operator">::</span>name() <span class="keyword">const</span>
   {
   <span class="keyword">return</span> m_name;
   }
   <span class="type">void</span> Person<span class="operator">::</span>setName(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>n)
   {
   m_name <span class="operator">=</span> n;
   }
   <span class="type">int</span> Person<span class="operator">::</span>shoeSize() <span class="keyword">const</span>
   {
   <span class="keyword">return</span> m_shoeSize;
   }
   <span class="type">void</span> Person<span class="operator">::</span>setShoeSize(<span class="type">int</span> s)
   {
   m_shoeSize <span class="operator">=</span> s;
   }</pre>

.. raw:: html

   <p>

The Person class implementation is quite basic. The property accessors
simply return members of the object instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

The main.cpp file also calls the qmlRegisterType() function to register
the Person type with QML as a type in the People library version 1.0,
and defines the mapping between the C++ and QML class names.

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

referenceexamples/adding/example.qml

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/adding/person.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/adding/person.h

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/adding/main.cpp

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/adding/adding.pro

.. raw:: html

   </li>

.. raw:: html

   <li>

referenceexamples/adding/adding.qrc

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@referenceexamples/adding -->

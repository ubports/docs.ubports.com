QtQml.qtqml-cppintegration-contextproperties
============================================

.. raw:: html

   <p>

When loading a QML object into a C++ application, it can be useful to
directly embed some C++ data that can be used from within the QML code.
This makes it possible, for example, to invoke a C++ method on the
embedded object, or use a C++ object instance as a data model for a QML
view.

.. raw:: html

   </p>

.. raw:: html

   <p>

The ability to inject C++ data into a QML object is made possible by the
QQmlContext class. This class exposes data to the context of a QML
object so that the data can be referred to directly from within the
scope of the QML code.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="setting-a-simple-context-property">

Setting a Simple Context Property

.. raw:: html

   </h2>

.. raw:: html

   <p>

For example, here is a QML item that refers to a currentDateTime value
that does not exist in the current scope:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// MyItem.qml</span>
   import QtQuick 2.0
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">currentDateTime</span> }</pre>

.. raw:: html

   <p>

This currentDateTime value can be set directly by the C++ application
that loads the QML component, using QQmlContext::setContextProperty():

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="type">QQuickView</span> view;
   view<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;currentDateTime&quot;</span><span class="operator">,</span> <span class="type">QDateTime</span><span class="operator">::</span>currentDateTime());
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
   view<span class="operator">.</span>show();</pre>

.. raw:: html

   <p>

Note: Since all expressions evaluated in QML are evaluated in a
particular context, if the context is modified, all bindings in that
context will be re-evaluated. Thus, context properties should be used
with care outside of application initialization, as this may lead to
decreased application performance.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="setting-an-object-as-a-context-property">

Setting an Object as a Context Property

.. raw:: html

   </h2>

.. raw:: html

   <p>

Context properties can hold either QVariant or QObject\* values. This
means custom C++ objects can also be injected using this approach, and
these objects can be modified and read directly in QML. Here, we modify
the above example to embed a QObject instance instead of a QDateTime
value, and the QML code invokes a method on the object instance:

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

.. raw:: html

   <pre class="cpp"><span class="keyword">class</span> ApplicationData : <span class="keyword">public</span> <span class="type">QObject</span>
   {
   Q_OBJECT
   <span class="keyword">public</span>:
   Q_INVOKABLE <span class="type">QDateTime</span> getCurrentDateTime() <span class="keyword">const</span> {
   <span class="keyword">return</span> <span class="type">QDateTime</span><span class="operator">::</span>currentDateTime();
   }
   };
   <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
   <span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
   <span class="type">QQuickView</span> view;
   ApplicationData data;
   view<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;applicationData&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>data);
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="keyword">return</span> app<span class="operator">.</span>exec();
   }</pre>

.. raw:: html

   </td>

.. raw:: html

   <td>

.. raw:: html

   <pre class="qml"><span class="comment">// MyItem.qml</span>
   import QtQuick 2.0
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">applicationData</span>.<span class="name">getCurrentDateTime</span>() }</pre>

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

(Note that date/time values returned from C++ to QML can be formatted
through Qt.formatDateTime() and associated functions.)

.. raw:: html

   </p>

.. raw:: html

   <p>

If the QML item needs to receive signals from the context property, it
can connect to them using the Connections type. For example, if
ApplicationData has a signal named dataChanged(), this signal can be
connected to using an onDataChanged handler within a Connections object:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">Text</span> {
   <span class="name">text</span>: <span class="name">applicationData</span>.<span class="name">getCurrentDateTime</span>()
   <span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
   <span class="name">target</span>: <span class="name">applicationData</span>
   <span class="name">onDataChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The application data changed!&quot;</span>)
   }
   }</pre>

.. raw:: html

   <p>

Context properties can be useful for using C++ based data models in a
QML view. See the following examples:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

String ListModel

.. raw:: html

   </li>

.. raw:: html

   <li>

Object ListModel

.. raw:: html

   </li>

.. raw:: html

   <li>

AbstractItemModel

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

demonstrating the use of QStringList, QList<QObject\*>-based models and
QAbstractItemModel in QML views.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also see the QQmlContext documentation for more information.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@qtqml-cppintegration-contextproperties.html -->

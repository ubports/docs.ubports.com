QtQml.QtObject
==============

.. raw:: html

   <p>

A basic QML type More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QtObject -->

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

import QtQml 2.2

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

objectName : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$QtObject-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The QtObject type is a non-visual element which contains only the
objectName property.

.. raw:: html

   </p>

.. raw:: html

   <p>

It can be useful to create a QtObject if you need an extremely
lightweight type to enclose a set of custom properties:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="type"><a href="index.html">QtObject</a></span> {
   <span class="name">id</span>: <span class="name">attributes</span>
   property <span class="type">string</span> <span class="name">name</span>
   property <span class="type">int</span> <span class="name">size</span>
   property <span class="type">variant</span> <span class="name">attributes</span>
   }
   <span class="type">Text</span> { <span class="name">text</span>: <span class="name">attributes</span>.<span class="name">name</span> }
   }</pre>

.. raw:: html

   <p>

It can also be useful for C++ integration, as it is just a plain
QObject. See the QObject documentation for further details.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@QtObject -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$objectName -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="objectName-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

objectName : string

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

This property holds the QObject::objectName for this specific object
instance.

.. raw:: html

   </p>

.. raw:: html

   <p>

This allows a C++ application to locate an item within a QML component
using the QObject::findChild() method. For example, the following C++
application locates the child Rectangle item and dynamically changes its
color value:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="comment">// MyRect.qml</span>
   import QtQuick 2.0
   <span class="type">Item</span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
   <span class="type">Rectangle</span> {
   <span class="name">anchors</span>.fill: <span class="name">parent</span>
   <span class="name">color</span>: <span class="string">&quot;red&quot;</span>
   <span class="name">objectName</span>: <span class="string">&quot;myRect&quot;</span>
   }
   }</pre>

.. raw:: html

   <pre class="cpp"><span class="comment">// main.cpp</span>
   <span class="type">QQuickView</span> view;
   view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyRect.qml&quot;</span>));
   view<span class="operator">.</span>show();
   <span class="type">QQuickItem</span> <span class="operator">*</span>item <span class="operator">=</span> view<span class="operator">.</span>rootObject()<span class="operator">-</span><span class="operator">&gt;</span>findChild<span class="operator">&lt;</span><span class="type">QQuickItem</span><span class="operator">*</span><span class="operator">&gt;</span>(<span class="string">&quot;myRect&quot;</span>);
   <span class="keyword">if</span> (item)
   item<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;color&quot;</span><span class="operator">,</span> <span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>yellow));</pre>

.. raw:: html

   <!-- @@@objectName -->



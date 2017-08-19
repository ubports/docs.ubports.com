Ubuntu.Components.StyleHints
============================

.. raw:: html

   <p>

Component holding style specific properties to configure a particular
StyledItem's style runtime. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StyleHints -->

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

import .

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Since:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Ubuntu.Components 1.3

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

ignoreUnknownProperties : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$StyleHints-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

StyleHints is a custom parser, meaning style properties can be listed
without any property declaration, same way as in PropertyChanges or
Connections, which are similar custom parsers. Properties enumerated do
not have to be present in the component's style as default, behavior
which can be chenged by setting ignoreUnknownProperties to true. In this
case properties not found in the style will be displayed as warnings.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the following example the Button will be drawn as white when not
pressed, and colored as blue when pressed.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">button</span>
   <span class="type"><a href="index.html">StyleHints</a></span> {
   <span class="name">defaultColor</span>: <span class="name">button</span>.<span class="name">pressed</span> ? <span class="string">&quot;blue&quot;</span> : <span class="string">&quot;white&quot;</span>
   }
   }</pre>

.. raw:: html

   <p>

StyleHints does not support signal properties (i.e signal handlers) and
object declarations as property values.

.. raw:: html

   </p>

.. raw:: html

   <p>

StyleHints can be only declared in a StyledItem or as a derivate of it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@StyleHints -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$ignoreUnknownProperties -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="ignoreUnknownProperties-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

ignoreUnknownProperties : bool

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

The property drives whether component should warn on properties not
found in the component's style. The default setting is not to warn.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ignoreUnknownProperties -->



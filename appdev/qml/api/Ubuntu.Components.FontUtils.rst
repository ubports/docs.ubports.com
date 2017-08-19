Ubuntu.Components.FontUtils
===========================

.. raw:: html

   <p>

FontUtils is a context property, which provides utility functions for
font manipulations. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FontUtils -->

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

import Ubuntu.Components 1.3

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

   <h2 id="methods">

Methods

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

real modularScale(string size)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

real sizeToPixels(string size)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FontUtils-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

FontUtils cannot be instantiated and it is already available as a
context property, i.e. 'FontUtils' is an instance that can be used from
anywhere in the code.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example of a Label implementation which uses the default base scale for
the font size:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   property <span class="type">string</span> <span class="name">fontSize</span>: <span class="string">&quot;medium&quot;</span>
   <span class="name">font</span>.pixelSize: <span class="name">FontUtils</span>.<span class="name">sizeToPixels</span>(<span class="name">fontSize</span>)
   }</pre>

.. raw:: html

   <p>

Another example of a custom text input component exposing a fontSize
property and a base font unit size to scale its font:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   <span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
   property <span class="type">string</span> <span class="name">fontSize</span>: <span class="string">&quot;small&quot;</span>
   property <span class="type">int</span> <span class="name">baseFontUnits</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">20</span>)
   <span class="name">font</span>.pixelSize: <span class="name">FontUtils</span>.<span class="name">modularScale</span>(<span class="name">fontSize</span>) <span class="operator">*</span> <span class="name">units</span>.<span class="name">dp</span>(<span class="name">baseFontUnits</span>)
   }</pre>

.. raw:: html

   <!-- @@@FontUtils -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$modularScale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="modularScale-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

real modularScale(string size)

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

The function returns the number interpretation of a given font scale.
The scale can have one of the following values:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

xx-small

.. raw:: html

   </li>

.. raw:: html

   <li>

x-small

.. raw:: html

   </li>

.. raw:: html

   <li>

small

.. raw:: html

   </li>

.. raw:: html

   <li>

medium

.. raw:: html

   </li>

.. raw:: html

   <li>

large

.. raw:: html

   </li>

.. raw:: html

   <li>

x-large

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@modularScale -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sizeToPixels-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

real sizeToPixels(string size)

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

The function calculates the pixel size of a given scale. The size scale
can be one of the strings specified at modularScale function. On failure
returns 0.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sizeToPixels -->



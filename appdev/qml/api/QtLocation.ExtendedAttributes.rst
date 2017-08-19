QtLocation.ExtendedAttributes
=============================

.. raw:: html

   <p>

The ExtendedAttributes type holds additional data about a Place. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ExtendedAttributes -->

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

import QtLocation 5.3

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

Qt Location 5.0

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

   <h2 id="signals">

Signals

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

void valueChanged(string key, variant value)

.. raw:: html

   </li>

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

variant keys()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ExtendedAttributes-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The keys() method to get the list of keys stored in the map and use the
[] operator to access the PlaceAttribute items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following are standard keys that are defined by the API. Plugin
implementations are free to define additional keys. Custom keys should
be qualified by a unique prefix to avoid clashes.

.. raw:: html

   </p>

.. raw:: html

   <table class="generic">

.. raw:: html

   <thead>

.. raw:: html

   <tr class="qt-style">

.. raw:: html

   <th>

key

.. raw:: html

   </th>

.. raw:: html

   <th>

description

.. raw:: html

   </th>

.. raw:: html

   </tr>

.. raw:: html

   </thead>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

openingHours

.. raw:: html

   </td>

.. raw:: html

   <td>

The trading hours of the place

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

payment

.. raw:: html

   </td>

.. raw:: html

   <td>

The types of payment the place accepts, for example visa, mastercard.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

x\_provider

.. raw:: html

   </td>

.. raw:: html

   <td>

The name of the provider that a place is sourced from

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr valign="top">

.. raw:: html

   <td>

x\_id\_<provider> (for example x\_id\_nokia)

.. raw:: html

   </td>

.. raw:: html

   <td>

An alternative identifier which identifies the place from the
perspective of the specified provider.

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

.. raw:: html

   <p>

Some plugins may not support attributes at all, others may only support
a certain set, others still may support a dynamically changing set of
attributes over time or even allow attributes to be arbitrarily defined
by the client application. The attributes could also vary on a place by
place basis, for example one place may have opening hours while another
does not. Consult the plugin references for details.

.. raw:: html

   </p>

.. raw:: html

   <p>

Some attributes may not be intended to be readable by end users, the
label field of such attributes is empty to indicate this fact.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: ExtendedAttributes can only be accomplished via Javascript.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows how to access all PlaceAttributes and print
them to the console:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtPositioning 5.2
   import QtLocation 5.3
   <span class="keyword">function</span> <span class="name">printExtendedAttributes</span>(<span class="name">extendedAttributes</span>) {
   var <span class="name">keys</span> = <span class="name">extendedAttributes</span>.<span class="name">keys</span>();
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">keys</span>.<span class="name">length</span>; ++<span class="name">i</span>) {
   var <span class="name">key</span> = <span class="name">keys</span>[<span class="name">i</span>];
   <span class="keyword">if</span> (<span class="name">extendedAttributes</span>[<span class="name">key</span>].<span class="name">label</span> <span class="operator">!==</span> <span class="string">&quot;&quot;</span>)
   <span class="name">console</span>.<span class="name">log</span>(<span class="name">extendedAttributes</span>[<span class="name">key</span>].<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">extendedAttributes</span>[<span class="name">key</span>].<span class="name">text</span>);
   }
   }</pre>

.. raw:: html

   <p>

The following example shows how to assign and modify an attribute:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="comment">//assign a new attribute to a place</span>
   var <span class="name">smokingAttrib</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; PlaceAttribute {}'</span>, <span class="name">place</span>);
   <span class="name">smokingAttrib</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Smoking Allowed&quot;</span>
   <span class="name">smokingAttrib</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;No&quot;</span>
   <span class="name">place</span>.<span class="name">extendedAttributes</span>.<span class="name">smoking</span> <span class="operator">=</span> <span class="name">smokingAttrib</span>;
   <span class="comment">//modify an existing attribute</span>
   <span class="name">place</span>.<span class="name">extendedAttributes</span>.<span class="name">smoking</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Yes&quot;</span></pre>

.. raw:: html

   <p>

See also PlaceAttribute and QQmlPropertyMap.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ExtendedAttributes -->

.. raw:: html

   <h2>

Signal Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$valueChanged -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="valueChanged-signal">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void valueChanged(string key, variant value)

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

This signal is emitted when the set of attributes changes. key is the
key corresponding to the value that was changed.

.. raw:: html

   </p>

.. raw:: html

   <p>

The corresponding handler is onValueChanged.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@valueChanged -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$keys -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="keys-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

variant keys()

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

Returns an array of place attribute keys currently stored in the map.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keys -->



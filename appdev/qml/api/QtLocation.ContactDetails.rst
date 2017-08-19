QtLocation.ContactDetails
=========================

.. raw:: html

   <p>

The ContactDetails type holds contact details for a Place. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactDetails -->

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

   <!-- $$$ContactDetails-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The keys() method to get the list of keys stored in the map and then use
the [] operator to access the ContactDetail items.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following keys are defined in the API. Plugin implementations are
free to define additional keys.

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

phone

.. raw:: html

   </li>

.. raw:: html

   <li>

fax

.. raw:: html

   </li>

.. raw:: html

   <li>

email

.. raw:: html

   </li>

.. raw:: html

   <li>

website

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

ContactDetails can only be accomplished via Javascript.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="examples">

Examples

.. raw:: html

   </h2>

.. raw:: html

   <p>

The following example shows how to access all ContactDetails and print
them to the console:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtPositioning 5.2
   import QtLocation 5.3
   <span class="keyword">function</span> <span class="name">printContactDetails</span>(<span class="name">contactDetails</span>) {
   var <span class="name">keys</span> = <span class="name">contactDetails</span>.<span class="name">keys</span>();
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">keys</span>.<span class="name">length</span>; ++<span class="name">i</span>) {
   var <span class="name">contactList</span> = <span class="name">contactDetails</span>[<span class="name">keys</span>[<span class="name">i</span>]];
   <span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">j</span> = <span class="number">0</span>; <span class="name">j</span> <span class="operator">&lt;</span> <span class="name">contactList</span>.<span class="name">length</span>; ++<span class="name">j</span>) {
   <span class="name">console</span>.<span class="name">log</span>(<span class="name">contactList</span>[<span class="name">j</span>].<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">contactList</span>[<span class="name">j</span>].<span class="name">value</span>);
   }
   }
   }</pre>

.. raw:: html

   <p>

The returned list of contact details is an object list and so can be
used directly as a data model. For example, the following demonstrates
how to display a list of contact phone numbers in a list view:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">place</span>.<span class="name">contactDetails</span>.<span class="name">phone</span>;
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">modelData</span>.<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">modelData</span>.<span class="name">value</span> }
   }</pre>

.. raw:: html

   <p>

The following example demonstrates how to assign a single phone number
to a place in JavaScript:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">function</span> <span class="name">writeSingle</span>() {
   var <span class="name">phoneNumber</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail {}'</span>, <span class="name">place</span>);
   <span class="name">phoneNumber</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Phone&quot;</span>;
   <span class="name">phoneNumber</span>.<span class="name">value</span> <span class="operator">=</span> <span class="string">&quot;555-5555&quot;</span>
   <span class="name">place</span>.<span class="name">contactDetails</span>.<span class="name">phone</span> <span class="operator">=</span> <span class="name">phoneNumber</span>;
   }</pre>

.. raw:: html

   <p>

The following demonstrates how to assign multiple phone numbers to a
place in JavaScript:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="keyword">function</span> <span class="name">writeMultiple</span>() {
   var <span class="name">bob</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail {}'</span>, <span class="name">place</span>);
   <span class="name">bob</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Bob&quot;</span>;
   <span class="name">bob</span>.<span class="name">value</span> <span class="operator">=</span> <span class="string">&quot;555-5555&quot;</span>
   var <span class="name">alice</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail {}'</span>, <span class="name">place</span>);
   <span class="name">alice</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Alice&quot;</span>;
   <span class="name">alice</span>.<span class="name">value</span> <span class="operator">=</span> <span class="string">&quot;555-8745&quot;</span>
   var <span class="name">numbers</span> = new <span class="name">Array</span>();
   <span class="name">numbers</span>.<span class="name">push</span>(<span class="name">bob</span>);
   <span class="name">numbers</span>.<span class="name">push</span>(<span class="name">alice</span>);
   <span class="name">place</span>.<span class="name">contactDetails</span>.<span class="name">phone</span> <span class="operator">=</span> <span class="name">numbers</span>;
   }</pre>

.. raw:: html

   <!-- @@@ContactDetails -->

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

Returns an array of contact detail keys currently stored in the map.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@keys -->



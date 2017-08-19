QtLocation.ContactDetail
========================

.. raw:: html

   <p>

The ContactDetail type holds a contact detail such as a phone number or
a website address. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactDetail -->

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

   <h2 id="properties">

Properties

.. raw:: html

   </h2>

.. raw:: html

   <ul>

.. raw:: html

   <li class="fn">

contactDetail : QPlaceContactDetail

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

label : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContactDetail-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The value representing the actual contact detail.

.. raw:: html

   </p>

.. raw:: html

   <h2 id="examples">

Examples

.. raw:: html

   </h2>

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

   <p>

Note, due to limitations of the QQmlPropertyMap, it is not possible to
declaratively specify the contact details in QML, it can only be
accomplished via JavaScript.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContactDetail -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$contactDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contactDetail-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contactDetail : QPlaceContactDetail

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

For details on how to use this property to interface between C++ and QML
see "Interfaces between C++ and QML Code".

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contactDetail -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="label-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

label : string

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

This property holds a label describing the contact detail.

.. raw:: html

   </p>

.. raw:: html

   <p>

The label can potentially be localized. The language is dependent on the
entity that sets it, typically this is the Plugin. The Plugin::locales
property defines what language is used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@label -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : string

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

This property holds the value of the contact detail which may be a phone
number, an email address, a website url and so on.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->



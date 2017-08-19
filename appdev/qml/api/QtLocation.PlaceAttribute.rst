QtLocation.PlaceAttribute
=========================

.. raw:: html

   <p>

The PlaceAttribute type holds generic place attribute information.
More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PlaceAttribute -->

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

attribute : QPlaceAttribute

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

label : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

text : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PlaceAttribute-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A place attribute stores an additional piece of information about a
label properties are intended to be displayed to the user.
PlaceAttributes are stored in an ExtendedAttributes map with a unique
key.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following example shows how to display all attributes in a list:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">place</span>.<span class="name">extendedAttributes</span>.<span class="name">keys</span>()
   <span class="name">delegate</span>: <span class="name">Text</span> {
   <span class="name">text</span>: <span class="string">&quot;&lt;b&gt;&quot;</span> <span class="operator">+</span> <span class="name">place</span>.<span class="name">extendedAttributes</span>[<span class="name">modelData</span>].<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &lt;/b&gt;&quot;</span> <span class="operator">+</span>
   <span class="name">place</span>.<span class="name">extendedAttributes</span>[<span class="name">modelData</span>].<span class="name">text</span>
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

   <!-- @@@PlaceAttribute -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$attribute -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="attribute-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

attribute : QPlaceAttribute

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

   <!-- @@@attribute -->

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

This property holds the attribute label which is a user visible string
describing the attribute.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@label -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="text-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

text : string

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

This property holds the attribute text which can be used to show
additional information about the place.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->



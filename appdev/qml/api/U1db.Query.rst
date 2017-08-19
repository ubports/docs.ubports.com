U1db.Query
==========

.. raw:: html

   <p>

Query filters documents based on the query and index. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Query -->

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

import U1db .

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td class="memItemLeft rightAlign topAlign">

Instantiates:

.. raw:: html

   </td>

.. raw:: html

   <td class="memItemRight bottomAlign">

Query

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

documents : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

index : Index

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

query : Variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

results : list<Variant>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Query-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

In a ListView the Query can be used as a model.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">Query</span> {
   <span class="name">index</span>: <span class="name">Index</span> {
   <span class="name">name</span>: <span class="string">'colorIndex'</span>
   <span class="name">expression</span>: [ <span class="string">'color'</span> ]
   <span class="name">database</span>: <span class="name">myDatabase</span>
   }
   <span class="name">query</span>: [ <span class="string">'blue'</span> ]
   }
   <span class="name">delegate</span>: <span class="name">ListItem</span>.Subtitled {
   <span class="name">text</span>: <span class="name">docId</span>
   <span class="name">subText</span>: <span class="name">contents</span>.<span class="name">color</span>
   }
   }</pre>

.. raw:: html

   <p>

See also Index.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Query -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$documents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="documents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

documents : list<string>

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

The docId's of all matched documents.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@documents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="index-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

index : Index

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

Sets the Index to use. index must have a valid name and index
expressions. If no query is set, the default is all results of the
index.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@index -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="query-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

query : Variant

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

A query in one of the allowed forms: 'value', ['value'] or
[{'sub-field': 'value'}]. The default is equivalent to '\*'.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@query -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="results-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

results : list<Variant>

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

The results of the query as a list.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@results -->



U1db.Index
==========

.. raw:: html

   <p>

An Index defines what fields can be filtered using Query. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Index -->

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

Index

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

database : Database

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

expression : list<string>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

name : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Index-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Documents in the database will be included if they contain all fields in
the expression.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Index</a></span> {
   <span class="name">database</span>: <span class="name">myDatabase</span>
   <span class="name">name</span>: <span class="string">'colorIndex'</span>
   <span class="name">expression</span>: [ <span class="string">'color'</span> ]
   }</pre>

.. raw:: html

   <p>

See also Query.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Index -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$database -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="database-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

database : Database

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

Sets the Database to lookup documents from and store the index in. The
dataInvalidated() signal will be emitted on all changes that could
affect the index.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@database -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="expression-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

expression : list<string>

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

Sets the expression used. Both an expression and a name must be
specified for an index to be created.

.. raw:: html

   </p>

.. raw:: html

   <p>

Also starts the process of creating the Index result list, which can
then be queried or populate the Query model as is.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@expression -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="name-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

name : string

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

Sets the name used. Both an expression and a name must be specified for
an index to be created.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->



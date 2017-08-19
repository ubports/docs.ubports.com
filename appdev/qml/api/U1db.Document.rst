U1db.Document
=============

.. raw:: html

   <p>

Document proxies a single document stored in the Database. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Document -->

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

Document

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

content : Variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

contents : Variant

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

create : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

docId : string

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Document-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

This is the declarative API equivalent of Database::putDoc() and
Database::getDoc().

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Document</a></span> {
   <span class="name">docId</span>: <span class="string">'myId'</span>
   <span class="name">defaults</span>: {
   <span class="name">color</span>: <span class="string">'blue'</span>
   }
   <span class="name">create</span>: <span class="number">true</span>
   }</pre>

.. raw:: html

   <p>

See also Database.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Document -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$content -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="content-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

content : Variant

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

The default contents of the document, which are used only if create is
true, docId is not empty and no document with the same docId exists in
the database yet. If the defaults change, it's up to the API user to
handle it.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@content -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="contents-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

contents : Variant

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

Updates the contents of the document. A valid docId must be set.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@contents -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="create-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

create : bool

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

If create is true, docId is not empty and no document with the same
docId exists, defaults will be used to store the document.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@create -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="docId-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

docId : string

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

The docId can be that of an existing document in the database and will
determine what getContents() returns. If no such documents exists,
setDefaults() can be used to supply a preset.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@docId -->



U1db.Database
=============

.. raw:: html

   <p>

Database implements on-disk storage for documents and indexes. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Database -->

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

import U1Db .

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

Database

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

error : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

path : string

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

void deleteDoc(string)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

Variant getDoc(string)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

list<string> listDocs()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string putDoc(var, string)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Database-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

In a ListView the Database can be used as a model which includes all
documents in the database. For listing only a subset of documents Query
can be used.

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type">ListView</span> {
   <span class="name">model</span>: <span class="name">Database</span> {
   <span class="name">id</span>: <span class="name">myDatabase</span>
   }
   <span class="name">delegate</span>: <span class="name">ListItem</span>.Subtitled {
   <span class="name">text</span>: <span class="name">docId</span>
   <span class="name">subText</span>: <span class="name">contents</span>.<span class="name">color</span>
   }
   }</pre>

.. raw:: html

   <p>

See also Query.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Database -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="error-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

error : string

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

The last error as a string if the last operation failed.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@error -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="path-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

path : string

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

A relative path can be given to store the database in an app-specific
writable folder. This is recommended as it ensures to work with
confinement. If more control is needed absolute paths or local file URIs
can be used. By default or if the path is empty everything is stored in
memory.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@path -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$deleteDoc -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="deleteDoc-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void deleteDoc(string)

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

Deletes the document identified by docId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@deleteDoc -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="getDoc-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Variant getDoc(string)

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

Returns the contents of a document by docId in a form that QML
recognizes as a Variant object, it's identical to
Document::getContents() with the same docId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@getDoc -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="listDocs-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

list<string> listDocs()

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

Returns a list of all stored documents by their docId.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@listDocs -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="putDoc-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string putDoc(var, string)

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

Updates the existing contents of the document identified by docId if
there's no error. If no docId is given or docId is an empty string the
contents will be stored under an autogenerated name. Returns the new
revision of the document, or -1 on failure.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@putDoc -->



Ubuntu.Content.ContentItem
==========================

.. raw:: html

   <p>

Content that can be imported or exported from a ContentPeer More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentItem -->

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

import Ubuntu.Content 1.1

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

text : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

url : url

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

bool move(dir, fileName)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

bool move(dir)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

string toDataURI()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ContentItem-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

A ContentItem is an item that can be imported or exported from a
ContentPeer

.. raw:: html

   </p>

.. raw:: html

   <p>

See documentation for ContentHub

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ContentItem -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$text -->

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

Content of the transfer

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@text -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="url-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

url : url

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

URL of the content data

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@url -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-method-2">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool move(dir, fileName)

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

If the url is a local file, move the file to dir and rename to fileName

.. raw:: html

   </p>

.. raw:: html

   <p>

If the move is successful, the url property will be changed and
onUrlChanged will be emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the file was moved successfully, false on error or if
the url wasn't a local file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="move-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

bool move(dir)

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

If the url is a local file, move the file to dir

.. raw:: html

   </p>

.. raw:: html

   <p>

If the move is successful, the url property will be changed and
onUrlChanged will be emitted.

.. raw:: html

   </p>

.. raw:: html

   <p>

Returns true if the file was moved successfully, false on error or if
the url wasn't a local file.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@move -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="toDataURI-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

string toDataURI()

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

Returns the ContentItem base64 encoded with the mimetype as a properly
formated dataUri

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@toDataURI -->



QtQuick.FontLoader
==================

.. raw:: html

   <p>

Allows fonts to be loaded by name or URL More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FontLoader -->

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

import QtQuick 2.4

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : url

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

status : enumeration

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$FontLoader-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The FontLoader type is used to load fonts by name or URL.

.. raw:: html

   </p>

.. raw:: html

   <p>

The status indicates when the font has been loaded, which is useful for
fonts loaded from remote sources.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
   <span class="type"><a href="index.html">FontLoader</a></span> { <span class="name">id</span>: <span class="name">fixedFont</span>; <span class="name">name</span>: <span class="string">&quot;Courier&quot;</span> }
   <span class="type"><a href="index.html">FontLoader</a></span> { <span class="name">id</span>: <span class="name">webFont</span>; <span class="name">source</span>: <span class="string">&quot;http://www.mysite.com/myfont.ttf&quot;</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Fixed-size font&quot;</span>; <span class="name">font</span>.family: <span class="name">fixedFont</span>.<span class="name">name</span> }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Fancy font&quot;</span>; <span class="name">font</span>.family: <span class="name">webFont</span>.<span class="name">name</span> }
   }</pre>

.. raw:: html

   <p>

See also Qt Quick Examples - Text Fonts.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@FontLoader -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$name -->

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

This property holds the name of the font family. It is set automatically
when a font is loaded using the url property.

.. raw:: html

   </p>

.. raw:: html

   <p>

Use this to set the font.family property of a Text item.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
   <span class="type"><a href="index.html">FontLoader</a></span> {
   <span class="name">id</span>: <span class="name">webFont</span>
   <span class="name">source</span>: <span class="string">&quot;http://www.mysite.com/myfont.ttf&quot;</span>
   }
   <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
   <span class="name">text</span>: <span class="string">&quot;Fancy font&quot;</span>
   <span class="name">font</span>.family: <span class="name">webFont</span>.<span class="name">name</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : url

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

The url of the font to load.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="status-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

status : enumeration

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

This property holds the status of font loading. It can be one of:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

FontLoader.Null - no font has been set

.. raw:: html

   </li>

.. raw:: html

   <li>

FontLoader.Ready - the font has been loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

FontLoader.Loading - the font is currently being loaded

.. raw:: html

   </li>

.. raw:: html

   <li>

FontLoader.Error - an error occurred while loading the font

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

Use this status to provide an update or respond to the status change in
some way. For example, you could:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

Trigger a state change:

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">'loaded'</span>; <span class="name">when</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">FontLoader</span>.<span class="name">Ready</span> }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Implement an onStatusChanged signal handler:

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">FontLoader</a></span> {
   <span class="name">id</span>: <span class="name">loader</span>
   <span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">FontLoader</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
   }</pre>

.. raw:: html

   </li>

.. raw:: html

   <li>

Bind to the status value:

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">FontLoader</span>.<span class="name">Ready</span> ? <span class="string">'Loaded'</span> : <span class="string">'Not loaded'</span> }</pre>

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- @@@status -->



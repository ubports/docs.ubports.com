QtQuick.XmlListModel.XmlListModel
=================================

.. raw:: html

   <p>

For specifying a read-only model using XPath expressions More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@XmlListModel -->

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

import QtQuick.XmlListModel 2.0

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

count : int

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

namespaceDeclarations : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

progress : real

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

query : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

roles : list<XmlRole>

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

   <li class="fn">

xml : string

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

void errorString()

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

object get(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

void reload()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$XmlListModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

To use this element, you will need to import the module with the
following line:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>XmlListModel <span class="number">2.0</span></pre>

.. raw:: html

   <p>

XmlListModel is used to create a read-only model from XML data. It can
be used as a data source for view elements (such as ListView, PathView,
GridView) and other elements that interact with model data (such as
Repeater).

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if there is a XML document at
http://www.mysite.com/feed.xml like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;utf-8&quot;</span><span class="operator">?</span><span class="operator">&gt;</span>
   <span class="operator">&lt;</span>rss version<span class="operator">=</span><span class="string">&quot;2.0&quot;</span><span class="operator">&gt;</span>
   <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
   <span class="operator">&lt;</span>channel<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>item<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>title<span class="operator">&gt;</span>A blog post<span class="operator">&lt;</span><span class="operator">/</span>title<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>pubDate<span class="operator">&gt;</span>Sat<span class="operator">,</span> <span class="number">07</span> Sep <span class="number">2010</span> <span class="number">10</span>:<span class="number">00</span>:<span class="number">01</span> GMT<span class="operator">&lt;</span><span class="operator">/</span>pubDate<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>item<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>item<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>title<span class="operator">&gt;</span>Another blog post<span class="operator">&lt;</span><span class="operator">/</span>title<span class="operator">&gt;</span>
   <span class="operator">&lt;</span>pubDate<span class="operator">&gt;</span>Sat<span class="operator">,</span> <span class="number">07</span> Sep <span class="number">2010</span> <span class="number">15</span>:<span class="number">35</span>:<span class="number">01</span> GMT<span class="operator">&lt;</span><span class="operator">/</span>pubDate<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>item<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>channel<span class="operator">&gt;</span>
   <span class="operator">&lt;</span><span class="operator">/</span>rss<span class="operator">&gt;</span></pre>

.. raw:: html

   <p>

A XmlListModel could create a model from this data, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtQuick.XmlListModel 2.0
   <span class="type"><a href="index.html">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">xmlModel</span>
   <span class="name">source</span>: <span class="string">&quot;http://www.mysite.com/feed.xml&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;pubDate&quot;</span>; <span class="name">query</span>: <span class="string">&quot;pubDate/string()&quot;</span> }
   }</pre>

.. raw:: html

   <p>

The query value of "/rss/channel/item" specifies that the XmlListModel
should generate a model item for each <item> in the XML document.

.. raw:: html

   </p>

.. raw:: html

   <p>

The XmlRole objects define the model item attributes. Here, each model
item will have title and pubDate attributes that match the title and
pubDate values of its corresponding <item>. (See XmlRole::query for more
examples of valid XPath expressions for XmlRole.)

.. raw:: html

   </p>

.. raw:: html

   <p>

The model could be used in a ListView, like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">300</span>
   <span class="name">model</span>: <span class="name">xmlModel</span>
   <span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">title</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">pubDate</span> }
   }</pre>

.. raw:: html

   <p class="centerAlign">

.. raw:: html

   </p>

.. raw:: html

   <p>

The XmlListModel data is loaded asynchronously, and status is set to
XmlListModel.Ready when loading is complete. Note this means when
XmlListModel is used for a view, the view is not populated until the
model is loaded.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Using key XML roles

.. raw:: html

   </h3>

.. raw:: html

   <p>

You can define certain roles as "keys" so that when reload() is called,
the model will only add and refresh data that contains new values for
these keys.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, if above role for "pubDate" was defined like this instead:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;pubDate&quot;</span>; <span class="name">query</span>: <span class="string">&quot;pubDate/string()&quot;</span>; <span class="name">isKey</span>: <span class="number">true</span> }</pre>

.. raw:: html

   <p>

Then when reload() is called, the model will only add and reload items
with a "pubDate" value that is not already present in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

This is useful when displaying the contents of XML documents that are
incrementally updated (such as RSS feeds) to avoid repainting the entire
contents of a model in a view.

.. raw:: html

   </p>

.. raw:: html

   <p>

If multiple key roles are specified, the model only adds and reload
items with a combined value of all key roles that is not already present
in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Qt Quick Demo - RSS News.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@XmlListModel -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="count-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

count : int

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

The number of data entries in the model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@count -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="namespaceDeclarations-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

namespaceDeclarations : string

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

The namespace declarations to be used in the XPath queries.

.. raw:: html

   </p>

.. raw:: html

   <p>

The namespaces should be declared as in XQuery. For example, if a
requested document at http://mysite.com/feed.xml uses the namespace
"http://www.w3.org/2005/Atom", this can be declared as the default
namespace:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">XmlListModel</a></span> {
   <span class="name">source</span>: <span class="string">&quot;http://mysite.com/feed.xml&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/feed/entry&quot;</span>
   <span class="name">namespaceDeclarations</span>: <span class="string">&quot;declare default element namespace 'http://www.w3.org/2005/Atom';&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   }</pre>

.. raw:: html

   <!-- @@@namespaceDeclarations -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="progress-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

progress : real

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

This indicates the current progress of the downloading of the XML data
source. This value ranges from 0.0 (no data downloaded) to 1.0 (all data
downloaded). If the XML data is not from a remote source, the progress
becomes 1.0 as soon as the data is read.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note that when the progress is 1.0, the XML data has been downloaded,
but it is yet to be loaded into the model at this point. Use the status
property to find out when the XML data has been read and loaded into the
model.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also status and source.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@progress -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="query-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

query : string

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

An absolute XPath query representing the base query for creating model
items from this model's XmlRole objects. The query should start with '/'
or '//'.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@query -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="roles-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

roles : list<XmlRole>

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

The roles to make available for this model.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@roles -->

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

The location of the XML data source.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both source and xml are set, xml is used.

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

Specifies the model loading status, which can be one of the following:

.. raw:: html

   </p>

.. raw:: html

   <ul>

.. raw:: html

   <li>

XmlListModel.Null - No XML data has been set for this model.

.. raw:: html

   </li>

.. raw:: html

   <li>

XmlListModel.Ready - The XML data has been loaded into the model.

.. raw:: html

   </li>

.. raw:: html

   <li>

XmlListModel.Loading - The model is in the process of reading and
loading XML data.

.. raw:: html

   </li>

.. raw:: html

   <li>

XmlListModel.Error - An error occurred while the model was loading. See
errorString() for details about the error.

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <p>

See also progress.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@status -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="xml-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

xml : string

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

This property holds the XML data for this model, if set.

.. raw:: html

   </p>

.. raw:: html

   <p>

The text is assumed to be UTF-8 encoded.

.. raw:: html

   </p>

.. raw:: html

   <p>

If both source and xml are set, xml is used.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@xml -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="errorString-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void errorString()

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

Returns a string description of the last error that occurred if status
is XmlListModel::Error.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@errorString -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

object get(int index)

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

Returns the item at index in the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

For example, for a model like this:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">XmlListModel</a></span> {
   <span class="name">id</span>: <span class="name">model</span>
   <span class="name">source</span>: <span class="string">&quot;http://mysite.com/feed.xml&quot;</span>
   <span class="name">query</span>: <span class="string">&quot;/feed/entry&quot;</span>
   <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
   }</pre>

.. raw:: html

   <p>

This will access the title value for the first item in the model:

.. raw:: html

   </p>

.. raw:: html

   <pre class="js">var <span class="name">title</span> = <span class="name">model</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">title</span>;</pre>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="reload-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

void reload()

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

Reloads the model.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no key roles have been specified, all existing model data is removed,
and the model is rebuilt from scratch.

.. raw:: html

   </p>

.. raw:: html

   <p>

Otherwise, items are only added if the model does not already contain
items with matching key role values.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Using key XML roles and XmlRole::isKey.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@reload -->



QtLocation.Icon
===============

.. raw:: html

   <p>

The Icon type represents an icon image source which can have multiple
sizes. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Icon -->

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

icon : QPlaceIcon

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

parameters : Object

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

plugin : Plugin

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

url url(size size)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Icon-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The Icon type can be used in conjunction with an Image type to display
an icon. The url() function is used to construct an icon URL of a
requested size, the icon which most closely matches the requested size
is returned.

.. raw:: html

   </p>

.. raw:: html

   <p>

The Icon type also has a parameters map which is a set of key value
pairs. The precise keys to use depend on the plugin being used. The
parameters map is used by the Plugin to determine which URL to return.

.. raw:: html

   </p>

.. raw:: html

   <p>

In the case where an icon can only possibly have one image URL, the
parameter key of "singleUrl" can be used with a QUrl value. Any Icon
with this parameter will always return the specified URL regardless of
the requested icon size and not defer to any Plugin.

.. raw:: html

   </p>

.. raw:: html

   <p>

The following code shows how to display a 64x64 pixel icon:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.0
   import QtPositioning 5.2
   import QtLocation 5.3
   <span class="type">Image</span> {
   <span class="name">source</span>: <span class="name">icon</span>.<span class="name">url</span>(<span class="name">Qt</span>.<span class="name">size</span>(<span class="number">64</span>, <span class="number">64</span>))
   }</pre>

.. raw:: html

   <p>

Alternatively, a default sized icon can be specified like so:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">    <span class="name">source</span>: <span class="name">icon</span>.<span class="name">url</span>()</pre>

.. raw:: html

   <!-- @@@Icon -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$icon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="icon-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

icon : QPlaceIcon

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

   <!-- @@@icon -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="parameters-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

parameters : Object

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

This property holds the parameters of the icon and is a map. These
parameters are used by the plugin to return the appropriate URL when
url() is called and to specify locations to save to when saving icons.

.. raw:: html

   </p>

.. raw:: html

   <p>

Consult the plugin documentation for what parameters are supported and
how they should be used.

.. raw:: html

   </p>

.. raw:: html

   <p>

Note, due to limitations of the QQmlPropertyMap, it is not possible to
declaratively specify the parameters in QML, assignment of parameters
keys and values can only be accomplished by JavaScript.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@parameters -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="plugin-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

plugin : Plugin

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

The property holds the plugin that is responsible for managing this
icon.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@plugin -->

.. raw:: html

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$url -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="url-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

url url(size size)

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

Returns a URL for the icon image that most closely matches the given
size.

.. raw:: html

   </p>

.. raw:: html

   <p>

If no plugin has been assigned to the icon, and the parameters do not
contain the 'singleUrl' key, a default constructed URL is returned.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@url -->



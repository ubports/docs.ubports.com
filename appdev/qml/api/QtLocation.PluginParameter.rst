QtLocation.PluginParameter
==========================

.. raw:: html

   <p>

The PluginParameter type describes a parameter to a Plugin. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@PluginParameter -->

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

name : string

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

value : QVariant

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$PluginParameter-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The PluginParameter object is used to provide a parameter of some kind
to a Plugin. Typically these parameters contain details like an
application token for access to a service, or a proxy server to use for
network access.

.. raw:: html

   </p>

.. raw:: html

   <p>

To set such a parameter, declare a value properties. A list of valid
parameter names for each plugin is available from the plugin reference
pages.

.. raw:: html

   </p>

.. raw:: html

   <h3>

Example Usage

.. raw:: html

   </h3>

.. raw:: html

   <p>

The following example shows an instantiation of the Nokia plugin with a
mapping API app\_id and token pair specific to the application.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Plugin {
   name: <span class="string">&quot;nokia&quot;</span>
   PluginParameter { name: <span class="string">&quot;app_id&quot;</span>; value: <span class="string">&quot;EXAMPLE_API_ID&quot;</span> }
   PluginParameter { name: <span class="string">&quot;token&quot;</span>; value: <span class="string">&quot;EXAMPLE_TOKEN_123&quot;</span> }
   }</pre>

.. raw:: html

   <!-- @@@PluginParameter -->

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

This property holds the name of the plugin parameter as a single
formatted string.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@name -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="value-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

value : QVariant

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

This property holds the value of the plugin parameter which support
different types of values (variant).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@value -->



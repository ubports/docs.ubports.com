U1db.Synchronizer
=================

.. raw:: html

   <p>

Synchronizer handles synchronizing between two databases. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@Synchronizer -->

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

Synchronizer

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

resolve\_to\_source : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

source : Database

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

sync\_output : list<Variant>

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

synchronize : bool

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

targets : Variant (preliminary)

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$Synchronizer-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="index.html">Synchronizer</a></span> {
   <span class="name">id</span>: <span class="name">mySync</span>
   <span class="name">synchronize</span>: <span class="number">false</span>
   <span class="name">source</span>: <span class="name">myDatabase</span>
   <span class="name">targets</span>: [ {
   remote: <span class="number">true</span>,
   ip: <span class="string">&quot;127.0.0.1&quot;</span>,
   port: <span class="number">7777</span>,
   name: <span class="string">&quot;example1.u1db&quot;</span>,
   resolve_to_source: <span class="number">true</span>
   } ]
   }</pre>

.. raw:: html

   <!-- @@@Synchronizer -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$resolve_to_source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="resolve_to_source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

resolve\_to\_source : bool

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

If true, conflicts during sync will be resolved in favor of the content
from the source database.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@resolve_to_source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="source-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

source : Database

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

Returns the source Database.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@source -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="sync_output-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

sync\_output : list<Variant>

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

Returns the output from a sync session. The list should contain numerous
QVariantMaps, each of which will have various meta-data with informative
information about what happened in the background of the session.

.. raw:: html

   </p>

.. raw:: html

   <p>

In some cases the information will be about errors or warnings, and in
other cases simple log messages. Also included would noramlly be
associated properties, elements and other data.

.. raw:: html

   </p>

.. raw:: html

   <p>

The information can be used in any number of ways, such as on screen
within an app, testing, console output, logs and more. This is designed
to be flexible enough that the app developer can decide themselves how
to best use the data.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@sync_output -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="synchronize-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

synchronize : bool

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

FIXME

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@synchronize -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="targets-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

targets : Variant

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

This QML property is under development and is subject to change.

.. raw:: html

   </p>

.. raw:: html

   <p>

Sets meta-data for databases to be used during a synchronization
session.

.. raw:: html

   </p>

.. raw:: html

   <p>

The QVariant is a list that can contain definitions for more than one
database to be used as a target. For example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">targets: <span class="operator">[</span>{remote:<span class="keyword">true</span>}<span class="operator">,</span>
   {remote:<span class="keyword">true</span><span class="operator">,</span>
   ip:<span class="string">&quot;127.0.0.1&quot;</span><span class="operator">,</span>
   port: <span class="number">7777</span><span class="operator">,</span>
   name:<span class="string">&quot;example1.u1db&quot;</span><span class="operator">,</span>
   resolve_to_source:<span class="keyword">true</span>}<span class="operator">,</span>
   {remote:<span class="string">&quot;OK&quot;</span>}<span class="operator">]</span></pre>

.. raw:: html

   <p>

The above example defines three databases. Two of the three definitions
in the example are invalid, the first ({remote:true}) and the third
({remote:"OK"}), because they are incomplete.

.. raw:: html

   </p>

.. raw:: html

   <p>

The second definition is a fully defined and valid definition for a
local to remote synchronization of two databases:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">{remote:<span class="keyword">true</span><span class="operator">,</span>
   ip:<span class="string">&quot;127.0.0.1&quot;</span><span class="operator">,</span>
   port: <span class="number">7777</span><span class="operator">,</span>
   name:<span class="string">&quot;example1.u1db&quot;</span><span class="operator">,</span>
   resolve_to_source:<span class="keyword">true</span>}</pre>

.. raw:: html

   <p>

'remote' determines whether the database is on disk or located on a
server. 'ip' and 'port' for a server are used only when 'remote' is set
to true 'name' is the name of the local (on disk) or remote database.
Note: If 'remote' is false this is the relative/absolute file location.
'resolve\_to\_source' determines whether to resolve conflicts
automatically in favor of the source (aka local) database's values or
the target's.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@targets -->



Ubuntu.Components.AlarmModel
============================

.. raw:: html

   <p>

AlarmModel holds the list of alarms defined. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@AlarmModel -->

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

import Ubuntu.Components 1.3

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

Alarm get(int index)

.. raw:: html

   </li>

.. raw:: html

   <li class="fn">

refresh()

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$AlarmModel-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

The AlarmModel is a simple container of Alarm definitions stored in the
alarm collection. The data provided by the model are read only, adding,
modifying or removing data is only possible through Alarm functions. Any
modification on the alarms or any new alarm added to the collection will
refresh all the model instances. This also means that the delegates
visualizing the model elements will also be re-created.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example usage:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml">import QtQuick 2.4
   import Ubuntu.Components 1.2
   import Ubuntu.Components.ListItems 1.0
   <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">AlarmModel</span> {}
   <span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
   <span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
   <span class="name">delegate</span>: <span class="name">Subtitled</span> {
   <span class="name">text</span>: <span class="name">message</span>
   <span class="name">subText</span>: <span class="name">Qt</span>.<span class="name">formatDateTime</span>(<span class="name">date</span>)
   }
   }</pre>

.. raw:: html

   <p>

The model defines the same roles as the Alarm properties. Note that the
use of enabled role in delegates may be ambiguous. Therefore the model
defines the additional role called model, which represents the Alarm
object from the index the delegate is showing the data, so the enabled
role can then be accessed by simply dereferencing the model i.e.
model.enabled.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">AlarmModel</span>{}
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">text</span>: <span class="name">message</span>
   <span class="name">control</span>: <span class="name">Switch</span> {
   <span class="name">checked</span>: <span class="name">model</span>.<span class="name">enabled</span>
   }
   }
   }</pre>

.. raw:: html

   <p>

The number of alarm events can be obtained from the count property. To
get a specific alarm event data from the model, use the get() function.

.. raw:: html

   </p>

.. raw:: html

   <p>

As the get() function returns the alarm object from the given index.
Combined with the alarm functions the alarms can be updated in place.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">AlarmModel</span>{
   <span class="name">id</span>: <span class="name">alarmModel</span>
   }
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">text</span>: <span class="name">message</span>
   <span class="name">control</span>: <span class="name">Switch</span> {
   <span class="name">checked</span>: <span class="name">model</span>.<span class="name">enabled</span>
   <span class="name">onCheckedChanged</span>: {
   <span class="keyword">if</span> (<span class="name">checked</span> <span class="operator">!=</span> <span class="name">model</span>.<span class="name">enabled</span>) {
   var <span class="name">data</span> = <span class="name">alarmModel</span>.<span class="name">get</span>(<span class="name">index</span>);
   <span class="name">data</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="name">checked</span>;
   <span class="name">data</span>.<span class="name">save</span>();
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <p>

In this kind of "in place" updates using the model role would give the
same result:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
   <span class="name">model</span>: <span class="name">AlarmModel</span>{
   <span class="name">id</span>: <span class="name">alarmModel</span>
   }
   <span class="name">delegate</span>: <span class="name">Standard</span> {
   <span class="name">text</span>: <span class="name">message</span>
   <span class="name">control</span>: <span class="name">Switch</span> {
   <span class="name">checked</span>: <span class="name">model</span>.<span class="name">enabled</span>
   <span class="name">onCheckedChanged</span>: {
   <span class="keyword">if</span> (<span class="name">checked</span> <span class="operator">!=</span> <span class="name">model</span>.<span class="name">enabled</span>) {
   <span class="name">model</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="name">checked</span>;
   <span class="name">model</span>.<span class="name">save</span>();
   }
   }
   }
   }
   }</pre>

.. raw:: html

   <!-- @@@AlarmModel -->

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

   <h2>

Method Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="get-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

Alarm get(int index)

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

Returns the reference of the alarm event at index in the model. This
allows the alarm data to be modified and updated either through normal
component binding or in Javascript functions.

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: {
   var alarm <span class="operator">=</span> alarmModel<span class="operator">.</span>get(<span class="number">0</span>);
   alarm<span class="operator">.</span>message <span class="operator">+</span><span class="operator">=</span> <span class="string">&quot; updated&quot;</span>;
   alarm<span class="operator">.</span>save();
   }</pre>

.. raw:: html

   <p>

This Javascript code returns the alarm properties from the first index
of the model, updates its message and updates the alarm. Note that the
alarm must be saved in order to have the changes visible. The follwoing
code will not update the alarm in the model/collection:

.. raw:: html

   </p>

.. raw:: html

   <pre class="cpp">Component<span class="operator">.</span>onCompleted: {
   alarmModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>message <span class="operator">+</span><span class="operator">=</span> <span class="string">&quot; updated&quot;</span>;
   alarm<span class="operator">.</span>message <span class="operator">+</span><span class="operator">=</span> <span class="string">&quot; updated&quot;</span>;
   }</pre>

.. raw:: html

   <p>

Note: The returned object is not guarantied to remain valid, it should
not be used in property bindings. Also, reset() should not be called
either as the call will clear the alarm data from the cache.

.. raw:: html

   </p>

.. raw:: html

   <p>

See also Alarm.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@get -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="refresh-method">

.. raw:: html

   <td class="tblQmlFuncNode">

.. raw:: html

   <p>

refresh()

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

The function refreshes the model by invalidating the alarm cache. Use
this function only if the refresh is absolutely required, otherwise it
will cause performance problems.

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@refresh -->



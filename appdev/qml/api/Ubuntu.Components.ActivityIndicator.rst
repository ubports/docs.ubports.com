Ubuntu.Components.ActivityIndicator
===================================

.. raw:: html

   <p>

The ActivityIndicator component visually indicates that a task of
unknown duration is in progress, e.g. busy indication, connection in
progress indication, etc. More...

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@ActivityIndicator -->

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

running : bool

.. raw:: html

   </li>

.. raw:: html

   </ul>

.. raw:: html

   <!-- $$$ActivityIndicator-description -->

.. raw:: html

   <h2 id="details">

Detailed Description

.. raw:: html

   </h2>

.. raw:: html

   </p>

.. raw:: html

   <p>

Note: for time consuming JavaScript operations use WorkerScript,
otherwise no UI interaction will be possible and the ActicityIndicator
animation will freeze.

.. raw:: html

   </p>

.. raw:: html

   <p>

Example:

.. raw:: html

   </p>

.. raw:: html

   <pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
   <span class="type"><a href="index.html">ActivityIndicator</a></span> {
   <span class="name">id</span>: <span class="name">activity</span>
   }
   <span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
   <span class="name">id</span>: <span class="name">toggleActive</span>
   <span class="name">text</span>: (<span class="name">activity</span>.<span class="name">running</span>) ? <span class="string">&quot;Deactivate&quot;</span> : <span class="string">&quot;Activate&quot;</span>
   <span class="name">onClicked</span>: <span class="name">activity</span>.<span class="name">running</span> <span class="operator">=</span> !<span class="name">activity</span>.<span class="name">running</span>
   }
   }</pre>

.. raw:: html

   <!-- @@@ActivityIndicator -->

.. raw:: html

   <h2>

Property Documentation

.. raw:: html

   </h2>

.. raw:: html

   <!-- $$$running -->

.. raw:: html

   <table class="qmlname">

.. raw:: html

   <tr valign="top" id="running-prop">

.. raw:: html

   <td class="tblQmlPropNode">

.. raw:: html

   <p>

running : bool

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

Presents whether there is activity to be visualized or not. The default
value is false. When activated (set to true), an animation is shown
indicating an ongoing activity, which continues until deactivated (set
to false).

.. raw:: html

   </p>

.. raw:: html

   <!-- @@@running -->


